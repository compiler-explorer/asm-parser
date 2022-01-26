#pragma once

#include <string_view>

namespace AsmParser
{

class LibraryDetection
{
    public:
    LibraryDetection();

    bool file_in_library(std::string_view filepath) const;
};

} // namespace AsmParser
