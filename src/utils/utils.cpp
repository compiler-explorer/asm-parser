#include "utils.hpp"

bool AsmParser::is_whitespace(const char c)
{
    return ((c == 32) || (c == '\t'));
}

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
        return 10 + (c - 'a');
    }
}

size_t AsmParser::ustrlen(const std::string s)
{
    const char *cstrptr = s.data();

    mblen(NULL, 0);

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
