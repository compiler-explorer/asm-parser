#pragma once

#include <cstddef>

namespace AsmParser
{

// Windows doesn't reliably provide the en_US.UTF-8 locale that the C library mblen() depends on,
//  so on Windows this decodes UTF-8 with the Windows API instead
int mblen(const char *s, size_t n);

} // namespace AsmParser
