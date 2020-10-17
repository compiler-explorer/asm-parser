#pragma once

#include "../types/line.hpp"
#include "../types/state.hpp"
#include "../types/filter.hpp"
#include <istream>
#include <unordered_map>
#include <string_view>

namespace AsmParser {

class ObjDumpParser {
private:
    const Filter filter;
    ParserState state{};
    std::vector<asm_line> lines;
    std::vector<asm_labelpair> labels;

    // todo: bad names
    void actually_address();
    void actually_filename();

    bool shouldIgnoreFunction(const std::string_view name) const;
    void eol();
    void address();
    void opcodes();
    void label();
    void labelref();
public:
    ObjDumpParser(const Filter filter);

    void fromStream(std::istream &in);

    void outputJson(std::ostream &out) const;
    void outputText(std::ostream &out) const;
};

};
