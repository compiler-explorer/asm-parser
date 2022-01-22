#include <cstring>
#include <fstream>
#include <iostream>
#include <string_view>

#include "assembly/parser.hpp"
#include "objdump/parser.hpp"
#include "types/filter.hpp"

struct AsmParserConfiguration
{
    AsmParser::Filter filter{};
    std::string filename;
    bool useStdin{};
    bool isConfigured{};
    bool doDebugDump{};
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

int main(int argc, const char **argv)
{
    setlocale(LC_ALL, "en_US.utf8");

    const auto config = getConfigurationFromCommandline(argc, argv);

    if (!config.isConfigured)
    {
        std::cout << "Commandline arguments expected\n";
        return 1;
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
            parser.outputJson(std::cout);
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
            parser.outputJson(std::cout);
        }
    }
    else
    {
        if (config.filter.binary)
        {
            AsmParser::ObjDumpParser parser(config.filter);
            parser.fromStream(std::cin);
            parser.outputJson(std::cout);
        }
        else
        {
            AsmParser::AssemblyTextParser parser(config.filter);
            parser.fromStream(std::cin);
            parser.outputJson(std::cout);
        }
    }

    return 0;
}
