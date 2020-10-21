
#include <cstdint>
#include <string>

namespace AsmParser
{

bool is_whitespace(const char c);
bool is_hex(const char c);
int8_t hex2int(const char c);

size_t ustrlen(const std::string s);

} // namespace AsmParser
