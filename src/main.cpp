#include <fstream>
#include <iostream>

#include "objdump/parser.hpp"
#include "types/filter.hpp"

int main(int argc, char **argv)
{
    setlocale(LC_ALL, "en_US.utf8");

    AsmParser::Filter filter;
    filter.compatmode = true;

    if (argc > 1)
    {
        std::string asmfile = argv[1];

        std::fstream fs;
        fs.open(asmfile, std::fstream::in);

        AsmParser::ObjDumpParser parser(filter);
        parser.fromStream(fs);
        parser.outputJson(std::cout);
    }
    else
    {
        AsmParser::ObjDumpParser parser(filter);
        parser.fromStream(std::cin);
        parser.outputJson(std::cout);
    }

    return 0;
}
