#include "state.hpp"

void AsmParser::ParserState::commonReset()
{
    this->currentLine = {};
    this->text.clear();
    this->hasPrefixingWhitespace = false;
    this->inComment = false;
    this->inAddress = true;
    this->inOpcodes = false;
    this->inLabel = false;
    this->inSectionStart = false;
    this->inSectionName = false;
    this->inSourceRef = false;
    this->skipRestOfTheLine = false;

    this->mayRemovePreviousLabel = true;
    this->keepInlineCode = false;
    this->lastOwnSource = {};

    this->inNvccDef = false;
    this->inNvccCode = false;
    this->inCustomAssembly = 0;
}
