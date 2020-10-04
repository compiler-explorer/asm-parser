#include <iostream>
#include <fstream>

#include "objdump/parser.hpp"

int main(int argc, char **argv) {
    if (argc > 1) {
        std::string asmfile = argv[1];

        std::fstream fs;
        fs.open(asmfile, std::fstream::in);

        AsmParser::ObjDumpParser parser;
        parser.fromStream(fs);
        parser.outputJson(std::cout);
    } else {
        AsmParser::ObjDumpParser parser;
        parser.fromStream(std::cin);
        parser.outputText(std::cout);
    }

    return 0;
}
