#pragma once

#include <string>
#include "line.hpp"

namespace AsmParser {

class ParserState { 
public:
    bool inComment{};
    bool inSomethingWithALabel{};
    bool hasPrefixingWhitespace{};
    bool inAddress{};
    bool inLabel{};
    bool inOpcodes{};
    bool skipRestOfTheLine{};
    asm_label currentLabelReference{};
    std::string previousLabel;
    std::string text;
    std::string currentFilename;
    asm_line currentLine{};

    void commonReset();
};

};
