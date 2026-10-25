#include "win32_mblen.hpp"

#define WIN32_LEAN_AND_MEAN
// libstdc++ on MinGW already defines this
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>

int AsmParser::mblen(const char *s, const size_t n)
{
    // UTF-8 is stateless, so there's no shift state to reset
    if (s == nullptr)
        return 0;

    if (n == 0)
        return -1;

    if (*s == '\0')
        return 0;

    // a UTF-8 encoded character is at most 4 bytes, the shortest sequence that decodes without error is the character
    const size_t maxcharlen = n < 4 ? n : 4;
    for (size_t charlen = 1; charlen <= maxcharlen; charlen++)
    {
        if (MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, s, static_cast<int>(charlen), nullptr, 0) > 0)
            return static_cast<int>(charlen);
    }

    return -1;
}
