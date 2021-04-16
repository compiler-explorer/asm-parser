
#include <cstdint>
#include <string>

namespace AsmParser
{

inline bool is_whitespace(const char c)
{
    return ((c == 32) || (c == '\t'));
}

bool is_hex(const char c);
int8_t hex2int(const char c);

size_t ustrlen(const std::string_view s);

} // namespace AsmParser
