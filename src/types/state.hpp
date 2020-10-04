#pragma once

#include <string>
#include "line.hpp"

namespace AsmParser {

class ParserState { 
public:
    asm_line currentLine{};
    bool inComment{};
    bool hasPrefixingWhitespace{};
    bool inAddress{};
    bool inLabel{};
    bool inOpcodes{};
    std::string previousLabel{};
    std::string text{};

    void commonReset();
};

};
