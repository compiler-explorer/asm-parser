#include "subprocess.hpp"

#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#else
#include <cerrno>
#include <cstring>
#include <csignal>
#include <fcntl.h>
#include <spawn.h>
#include <sys/wait.h>
#include <unistd.h>

extern char **environ;
#endif

AsmParser::Subprocess::PipeBuffer::PipeBuffer(Subprocess &process) : process(process)
{
    this->setg(this->buffer.data(), this->buffer.data(), this->buffer.data());
}

AsmParser::Subprocess::PipeBuffer::int_type AsmParser::Subprocess::PipeBuffer::underflow()
{
    if (this->gptr() < this->egptr())
        return traits_type::to_int_type(*this->gptr());

    const auto bytesRead = this->process.readStdout(this->buffer.data(), this->buffer.size());
    if (bytesRead <= 0)
        return traits_type::eof();

    this->setg(this->buffer.data(), this->buffer.data(), this->buffer.data() + bytesRead);
    return traits_type::to_int_type(*this->gptr());
}

std::streambuf *AsmParser::Subprocess::stdoutBuffer()
{
    return &this->pipeBuffer;
}

const std::string &AsmParser::Subprocess::getStartError() const
{
    return this->startError;
}

#ifdef _WIN32

namespace
{

std::wstring toWide(const std::string &text)
{
    if (text.empty())
        return {};

    const auto len = MultiByteToWideChar(CP_UTF8, 0, text.data(), static_cast<int>(text.size()), nullptr, 0);
    std::wstring wide(static_cast<size_t>(len), L'\0');
    MultiByteToWideChar(CP_UTF8, 0, text.data(), static_cast<int>(text.size()), wide.data(), len);
    return wide;
}

std::string lastErrorMessage()
{
    const auto error = GetLastError();

    wchar_t *message = nullptr;
    FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, nullptr,
                   error, 0, reinterpret_cast<wchar_t *>(&message), 0, nullptr);
    if (message == nullptr)
        return "error " + std::to_string(error);

    const auto len = WideCharToMultiByte(CP_UTF8, 0, message, -1, nullptr, 0, nullptr, nullptr);
    std::string text(static_cast<size_t>(len > 0 ? len - 1 : 0), '\0');
    WideCharToMultiByte(CP_UTF8, 0, message, -1, text.data(), len, nullptr, nullptr);
    LocalFree(message);

    while (!text.empty() && (text.back() == '\n' || text.back() == '\r' || text.back() == '.'))
        text.pop_back();

    return text + " (error " + std::to_string(error) + ")";
}

} // namespace

std::string AsmParser::quoteWindowsArgument(const std::string &arg)
{
    if (!arg.empty() && arg.find_first_of(" \t\n\v\"") == std::string::npos)
        return arg;

    std::string quoted = "\"";
    size_t backslashes = 0;
    for (const auto c : arg)
    {
        if (c == '\\')
        {
            backslashes++;
            continue;
        }

        if (c == '"')
        {
            // backslashes in front of a quote need escaping, and so does the quote itself
            quoted.append(backslashes * 2 + 1, '\\');
        }
        else
        {
            quoted.append(backslashes, '\\');
        }
        quoted += c;
        backslashes = 0;
    }

    // backslashes in front of the closing quote need escaping
    quoted.append(backslashes * 2, '\\');
    quoted += '"';

    return quoted;
}

AsmParser::Subprocess::Subprocess(const std::string &program, const std::vector<std::string> &args) : pipeBuffer(*this)
{
    SECURITY_ATTRIBUTES inheritable{};
    inheritable.nLength = sizeof(inheritable);
    inheritable.bInheritHandle = TRUE;

    HANDLE readEnd = nullptr;
    HANDLE writeEnd = nullptr;
    if (!CreatePipe(&readEnd, &writeEnd, &inheritable, 0))
    {
        this->startError = "failed to create pipe: " + lastErrorMessage();
        return;
    }
    // only the write end goes to the child
    SetHandleInformation(readEnd, HANDLE_FLAG_INHERIT, 0);

    HANDLE stderrHandle = nullptr;
    const auto ourStderr = GetStdHandle(STD_ERROR_HANDLE);
    if (ourStderr != nullptr && ourStderr != INVALID_HANDLE_VALUE)
    {
        DuplicateHandle(GetCurrentProcess(), ourStderr, GetCurrentProcess(), &stderrHandle, 0, TRUE,
                        DUPLICATE_SAME_ACCESS);
    }

    // CreateProcess doesn't apply the escaping rules to the program name, but a path can't contain quotes anyway
    std::string commandLine = "\"" + program + "\"";
    for (const auto &arg : args)
    {
        commandLine += ' ';
        commandLine += quoteWindowsArgument(arg);
    }
    auto wideCommandLine = toWide(commandLine);

    STARTUPINFOW startupInfo{};
    startupInfo.cb = sizeof(startupInfo);
    startupInfo.dwFlags = STARTF_USESTDHANDLES;
    startupInfo.hStdInput = nullptr;
    startupInfo.hStdOutput = writeEnd;
    startupInfo.hStdError = stderrHandle;

    PROCESS_INFORMATION processInfo{};
    const auto created = CreateProcessW(nullptr, wideCommandLine.data(), nullptr, nullptr, TRUE, 0, nullptr, nullptr,
                                        &startupInfo, &processInfo);
    if (!created)
        this->startError = "failed to start " + program + ": " + lastErrorMessage();

    // the child has its own copies now, and we need to close our write end to ever see the end of the pipe
    CloseHandle(writeEnd);
    if (stderrHandle != nullptr)
        CloseHandle(stderrHandle);

    if (!created)
    {
        CloseHandle(readEnd);
        return;
    }

    CloseHandle(processInfo.hThread);
    this->processHandle = processInfo.hProcess;
    this->stdoutRead = readEnd;
}

AsmParser::Subprocess::~Subprocess()
{
    if (this->processHandle != nullptr)
        this->wait();
}

bool AsmParser::Subprocess::started() const
{
    return this->processHandle != nullptr;
}

int64_t AsmParser::Subprocess::readStdout(char *buffer, const size_t size)
{
    if (this->stdoutRead == nullptr)
        return 0;

    DWORD bytesRead = 0;
    // ReadFile fails with ERROR_BROKEN_PIPE once the child has exited and the pipe is empty
    if (!ReadFile(this->stdoutRead, buffer, static_cast<DWORD>(size), &bytesRead, nullptr))
        return 0;

    return static_cast<int64_t>(bytesRead);
}

void AsmParser::Subprocess::closeStdout()
{
    if (this->stdoutRead != nullptr)
    {
        CloseHandle(this->stdoutRead);
        this->stdoutRead = nullptr;
    }
}

int AsmParser::Subprocess::wait()
{
    if (this->processHandle == nullptr)
        return -1;

    std::array<char, 64 * 1024> discard{};
    while (this->readStdout(discard.data(), discard.size()) > 0)
    {
    }
    this->closeStdout();

    WaitForSingleObject(this->processHandle, INFINITE);

    DWORD exitCode = 0;
    const auto gotExitCode = GetExitCodeProcess(this->processHandle, &exitCode);
    CloseHandle(this->processHandle);
    this->processHandle = nullptr;

    if (!gotExitCode)
        return -1;

    return static_cast<int>(exitCode);
}

void AsmParser::Subprocess::terminate()
{
    if (this->processHandle == nullptr)
        return;

    this->closeStdout();
    TerminateProcess(this->processHandle, 1);
    WaitForSingleObject(this->processHandle, INFINITE);
    CloseHandle(this->processHandle);
    this->processHandle = nullptr;
}

#else

AsmParser::Subprocess::Subprocess(const std::string &program, const std::vector<std::string> &args) : pipeBuffer(*this)
{
    int fds[2];
    if (pipe2(fds, O_CLOEXEC) != 0)
    {
        this->startError = std::string("failed to create pipe: ") + std::strerror(errno);
        return;
    }

    posix_spawn_file_actions_t fileActions;
    posix_spawn_file_actions_init(&fileActions);
    // dup2 clears close-on-exec on the duplicate, so only stdout survives the exec
    posix_spawn_file_actions_adddup2(&fileActions, fds[1], STDOUT_FILENO);

    std::vector<char *> argv;
    argv.reserve(args.size() + 2);
    argv.push_back(const_cast<char *>(program.c_str()));
    for (const auto &arg : args)
        argv.push_back(const_cast<char *>(arg.c_str()));
    argv.push_back(nullptr);

    pid_t childPid = -1;
    const auto spawnError = posix_spawnp(&childPid, program.c_str(), &fileActions, nullptr, argv.data(), environ);
    posix_spawn_file_actions_destroy(&fileActions);

    // we need to close our write end to ever see the end of the pipe
    close(fds[1]);

    if (spawnError != 0)
    {
        this->startError = "failed to start " + program + ": " + std::strerror(spawnError);
        close(fds[0]);
        return;
    }

    this->pid = childPid;
    this->stdoutRead = fds[0];
}

AsmParser::Subprocess::~Subprocess()
{
    if (this->pid != -1)
        this->wait();
}

bool AsmParser::Subprocess::started() const
{
    return this->pid != -1;
}

int64_t AsmParser::Subprocess::readStdout(char *buffer, const size_t size)
{
    if (this->stdoutRead == -1)
        return 0;

    while (true)
    {
        const auto bytesRead = read(this->stdoutRead, buffer, size);
        if (bytesRead < 0 && errno == EINTR)
            continue;

        return bytesRead;
    }
}

void AsmParser::Subprocess::closeStdout()
{
    if (this->stdoutRead != -1)
    {
        close(this->stdoutRead);
        this->stdoutRead = -1;
    }
}

int AsmParser::Subprocess::wait()
{
    if (this->pid == -1)
        return -1;

    std::array<char, 64 * 1024> discard{};
    while (this->readStdout(discard.data(), discard.size()) > 0)
    {
    }
    this->closeStdout();

    int status = 0;
    pid_t waited;
    do
    {
        waited = waitpid(this->pid, &status, 0);
    } while (waited == -1 && errno == EINTR);
    this->pid = -1;

    if (waited == -1 || !WIFEXITED(status))
        return -1;

    return WEXITSTATUS(status);
}

void AsmParser::Subprocess::terminate()
{
    if (this->pid == -1)
        return;

    this->closeStdout();
    kill(this->pid, SIGKILL);

    int status = 0;
    while (waitpid(this->pid, &status, 0) == -1 && errno == EINTR)
    {
    }
    this->pid = -1;
}

#endif
