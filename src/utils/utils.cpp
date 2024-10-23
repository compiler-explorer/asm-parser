#include "utils.hpp"
#include <chrono>

bool AsmParser::is_hex(const char c)
{
    return (c >= 'a' && c <= 'f') || (c >= '0' && c <= '9');
}

int8_t AsmParser::hex2int(const char c)
{
    if (c >= '0' && c <= '9')
    {
        return c - '0';
    }
    else
    {
        return static_cast<int8_t>(10 + (c - 'a'));
    }
}

size_t AsmParser::ustrlen(const std::string_view s)
{
    const char *cstrptr = s.data();

    mblen(nullptr, 0);

    size_t maxlen = s.length();

    size_t ulen = 0;
    while (maxlen != 0)
    {
        auto mbcharlen = mblen(cstrptr, maxlen);
        if (mbcharlen < 1)
        {
            break;
        }
        cstrptr += mbcharlen;
        ulen += 1;
        if (maxlen > (size_t)mbcharlen)
        {
            maxlen -= mbcharlen;
        }
        else
        {
            break;
        }
    }

    return ulen;
}

static std::chrono::time_point<std::chrono::steady_clock> global_timer_started{};

void AsmParser::global_start_timer()
{
    global_timer_started = std::chrono::steady_clock::now();
}

int64_t AsmParser::global_current_running_time()
{
    auto end = std::chrono::steady_clock::now();
    std::chrono::duration<double, std::milli> diff = end - global_timer_started;
    auto rounded_diff = std::chrono::round<std::chrono::milliseconds>(diff);
    return rounded_diff.count();
}
