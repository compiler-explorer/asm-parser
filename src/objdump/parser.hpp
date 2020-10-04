#pragma once

#include "../types/line.hpp"
#include "../types/state.hpp"
#include <istream>
#include <unordered_map>

namespace AsmParser {

class ObjDumpParser {
private:
    ParserState state{};
    std::vector<asm_line> lines;
    std::unordered_map<std::string, int32_t> labels;

    void eol();
    void address();
    void opcodes();
    void label();
public:
    ObjDumpParser();

    void fromStream(std::istream &in);

    void outputJson(std::ostream &out);
    void outputText(std::ostream &out);
};

};
