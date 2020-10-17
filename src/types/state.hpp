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
    bool inSectionStart{};
    bool inSectionName{};
    bool inSourceRef{};
    bool skipRestOfTheLine{};
    bool stopParsing{};
    bool ignoreUntilNextLabel{};
    asm_label currentLabelReference{};
    asm_source currentSourceRef{};
    std::string previousLabel;
    std::string text;
    std::string currentFilename;
    std::string currentSection;
    asm_line currentLine{};

    void commonReset();
};

};
