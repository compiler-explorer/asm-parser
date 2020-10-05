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

    // todo: bad names
    void actually_address();
    void actually_filename();

    void eol();
    void address();
    void opcodes();
    void label();
    void labelref();
public:
    ObjDumpParser();

    void fromStream(std::istream &in);

    void outputJson(std::ostream &out);
    void outputText(std::ostream &out);
};

};
