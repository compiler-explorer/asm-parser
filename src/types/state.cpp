#include "state.hpp"

void AsmParser::ParserState::commonReset() {
    this->currentLine = {};
    this->text = "";
    this->hasPrefixingWhitespace = false;
    this->inComment = false;
    this->inAddress = true;
    this->inOpcodes = false;
    this->inLabel = false;
    this->skipRestOfTheLine = false;
}
