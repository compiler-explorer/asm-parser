#include <cstring>
#include <fstream>
#include <iostream>
#include <string_view>
#include <vector>

#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#include <shellapi.h>
#endif

#include "assembly/parser.hpp"
#include "objdump/parser.hpp"
#include "types/filter.hpp"

#include "utils/subprocess.hpp"
#include "utils/utils.hpp"

struct AsmParserConfiguration
{
    AsmParser::Filter filter{};
    std::string filename;
    bool useStdin{};
    bool isConfigured{};
    bool doDebugDump{};
    bool outputText{};
    std::string objdumpPath;
    std::vector<std::string> objdumpArgs;
};

bool streq(const std::string_view a, const std::string_view b)
{
    return a.compare(b) == 0;
}

AsmParserConfiguration getConfigurationFromCommandline(const int argc, const char **argv)
{
    AsmParserConfiguration config{};
    config.filter.compatmode = true;

    for (auto i = 1; i < argc; i++)
    {
        if (streq(argv[i], "-binary"))
            config.filter.binary = true;
        else if (streq(argv[i], "-unused_labels"))
            config.filter.unused_labels = true;
        else if (streq(argv[i], "-directives"))
            config.filter.directives = true;
        else if (streq(argv[i], "-comment_only"))
            config.filter.comment_only = true;
        else if (streq(argv[i], "-whitespace"))
            config.filter.whitespace = true;
        else if (streq(argv[i], "-plt"))
            config.filter.plt = true;
        else if (streq(argv[i], "-nocompat"))
            config.filter.compatmode = false;
        else if (streq(argv[i], "-library_functions"))
            config.filter.library_functions = true;
        else if (streq(argv[i], "-dont_mask_filenames"))
            config.filter.dont_mask_filenames = true;
        else if (streq(argv[i], "-debugdump"))
            config.doDebugDump = true;
        else if (streq(argv[i], "-outputtext"))
            config.outputText = true;
        else if (streq(argv[i], "-objdump") && i + 1 < argc)
        {
            config.objdumpPath = argv[++i];
            config.isConfigured = true;
        }
        else if (streq(argv[i], "--"))
        {
            // everything after -- is passed to objdump as-is
            for (i++; i < argc; i++)
                config.objdumpArgs.emplace_back(argv[i]);
        }
        else if (streq(argv[i], "-stdin"))
        {
            config.useStdin = true;
            config.isConfigured = true;
        }
        else
        {
            config.filename = argv[i];
            config.isConfigured = true;
        }
    }

    return config;
}

#ifdef _WIN32
// The narrow argv on Windows is in the ANSI codepage, get the arguments as UTF-8 so non-ASCII paths survive
std::vector<std::string> getUtf8Arguments()
{
    std::vector<std::string> args;

    int argc = 0;
    const auto wideArgv = CommandLineToArgvW(GetCommandLineW(), &argc);
    if (wideArgv == nullptr)
        return args;

    for (int i = 0; i < argc; i++)
    {
        const auto len = WideCharToMultiByte(CP_UTF8, 0, wideArgv[i], -1, nullptr, 0, nullptr, nullptr);
        std::string arg(static_cast<size_t>(len > 0 ? len - 1 : 0), '\0');
        WideCharToMultiByte(CP_UTF8, 0, wideArgv[i], -1, arg.data(), len, nullptr, nullptr);
        args.push_back(std::move(arg));
    }

    LocalFree(wideArgv);
    return args;
}
#endif

// Runs objdump and parses its output as it comes in, so there's no need for a shell to pipe objdump into asm-parser
int parseFromObjdump(const AsmParserConfiguration &config)
{
    AsmParser::Subprocess objdump(config.objdumpPath, config.objdumpArgs);
    if (!objdump.started())
    {
        std::cerr << "asm-parser: " << objdump.getStartError() << '\n';
        return 1;
    }

    // objdump output always needs the binary parser
    auto filter = config.filter;
    filter.binary = true;

    AsmParser::ObjDumpParser parser(filter);
    std::istream objdumpOutput(objdump.stdoutBuffer());
    parser.fromStream(objdumpOutput);

    if (!objdumpOutput.eof())
    {
        // the parser stopped early (too many lines), the rest of the output isn't needed
        objdump.terminate();
    }
    else
    {
        const auto exitCode = objdump.wait();
        if (exitCode != 0)
        {
            std::cerr << "asm-parser: " << config.objdumpPath << " exited with code " << exitCode << '\n';
            return 1;
        }
    }

    if (config.outputText) {
        parser.outputText(std::cout);
    } else {
        parser.outputJson(std::cout);
    }

    return 0;
}

int main(int argc, const char **argv)
{
#ifndef _WIN32
    try {
        std::locale loc("en_US.UTF-8");
        std::locale::global(loc);
    } catch (const std::runtime_error& e) {
        std::cerr << "Failed to set locale: " << e.what() << '\n';
        std::cerr << "Please make sure that the locale is installed on your system:\n";
        std::cerr << "$ sudo apt-get install locales\n";
        std::cerr << "$ locale-gen en_US.UTF-8\n";
        return 1;
    }
#endif

    AsmParser::global_start_timer();

#ifdef _WIN32
    auto config = getConfigurationFromCommandline(argc, argv);
    if (!config.objdumpPath.empty())
    {
        // objdump is started with the wide character API, so its path and arguments can be taken as UTF-8
        const auto utf8Args = getUtf8Arguments();
        std::vector<const char *> utf8Argv;
        for (const auto &arg : utf8Args)
            utf8Argv.push_back(arg.c_str());
        if (!utf8Argv.empty())
            config = getConfigurationFromCommandline(static_cast<int>(utf8Argv.size()), utf8Argv.data());
    }
#else
    const auto config = getConfigurationFromCommandline(argc, argv);
#endif

    if (!config.isConfigured)
    {
        std::cout << "Commandline arguments expected\n";
        return 1;
    }

    if (!config.objdumpPath.empty())
    {
        return parseFromObjdump(config);
    }

    if (!config.useStdin)
    {
        std::fstream fs;
        fs.open(config.filename, std::fstream::in);

        // todo: output an error when file doesn't exist?

        if (config.filter.binary)
        {
            AsmParser::ObjDumpParser parser(config.filter);
            parser.fromStream(fs);

            if (config.outputText) {
                parser.outputText(std::cout);
            } else {
                parser.outputJson(std::cout);
            }
        }
        else
        {
            AsmParser::AssemblyTextParser parser(config.filter);
            parser.fromStream(fs);
            if (config.doDebugDump) {
                std::fstream fdebug;
                fdebug.open("./asm-parser-debugdump.json", std::fstream::out);
                parser.outputDebugJson(fdebug);
            }
    
            if (config.outputText) {
                parser.outputText(std::cout);
            } else {
                parser.outputJson(std::cout);
            }
        }
    }
    else
    {
        if (config.filter.binary)
        {
            AsmParser::ObjDumpParser parser(config.filter);
            parser.fromStream(std::cin);

            if (config.outputText) {
                parser.outputText(std::cout);
            } else {
                parser.outputJson(std::cout);
            }
        }
        else
        {
            AsmParser::AssemblyTextParser parser(config.filter);
            parser.fromStream(std::cin);

            if (config.outputText) {
                parser.outputText(std::cout);
            } else {
                parser.outputJson(std::cout);
            }
        }
    }

    return 0;
}
