#pragma once

#include "line.hpp"
#include <string>

namespace AsmParser
{

class ParserState
{
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

    bool mayRemovePreviousLabel{true};
    bool keepInlineCode{};
    asm_source lastOwnSource{};

    bool inNvccDef{};
    bool inNvccCode{};
    int inCustomAssembly{0};

    asm_label currentLabelReference{};
    asm_source currentSourceRef{};
    std::string previousLabel;
    std::string text;
    std::string currentFilename;
    std::string currentSection;
    asm_line currentLine{};

    void commonReset();
};

}; // namespace AsmParser
