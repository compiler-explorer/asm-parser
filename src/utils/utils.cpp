#include "utils.hpp"

bool AsmParser::is_whitespace(const char c) {
    return ((c == 32) || (c == '\t'));
}

bool AsmParser::is_hex(const char c) {
    return (c >= 'a' && c <= 'f') || (c >= '0' && c <= '9');
}

int8_t AsmParser::hex2int(const char c) {
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else {
        return 10 + (c - 'a');
    }
}
