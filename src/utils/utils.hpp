
#include <cstdint>
#include <string>

namespace AsmParser
{

inline bool is_whitespace(const char c)
{
    return ((c == 32) || (c == '\t'));
}

bool is_hex(char c);
int8_t hex2int(char c);

size_t ustrlen(std::string_view s);

void global_start_timer();
int64_t global_current_running_time();

} // namespace AsmParser
