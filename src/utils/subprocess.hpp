#pragma once

#include <array>
#include <cstdint>
#include <streambuf>
#include <string>
#include <vector>

namespace AsmParser
{

// Runs a program directly (never through a shell) and makes its stdout readable as a stream while it runs,
//  stderr is inherited so the program's error messages end up on our stderr
class Subprocess
{
  private:
    class PipeBuffer : public std::streambuf
    {
      private:
        Subprocess &process;
        std::array<char, 64 * 1024> buffer{};

      protected:
        int_type underflow() override;

      public:
        explicit PipeBuffer(Subprocess &process);
    };

#ifdef _WIN32
    void *processHandle{};
    void *stdoutRead{};
#else
    int pid{-1};
    int stdoutRead{-1};
#endif

    PipeBuffer pipeBuffer;
    std::string startError;

    int64_t readStdout(char *buffer, size_t size);
    void closeStdout();

  public:
    Subprocess(const std::string &program, const std::vector<std::string> &args);
    ~Subprocess();

    Subprocess(const Subprocess &) = delete;
    Subprocess &operator=(const Subprocess &) = delete;

    bool started() const;
    const std::string &getStartError() const;

    std::streambuf *stdoutBuffer();

    // Reads and discards whatever stdout is left so the program can't block on a full pipe, then waits for it to exit.
    //  Returns the exit code, or -1 when it didn't exit normally
    int wait();

    // Stops the program when the rest of its output isn't needed, like a closed pipe would
    void terminate();
};

#ifdef _WIN32
// Quotes an argument so that CommandLineToArgvW (and the MSVCRT argv parsing) gives back the original
std::string quoteWindowsArgument(const std::string &arg);
#endif

} // namespace AsmParser
