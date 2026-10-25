#pragma once

#include <optional>
#include <string>
#include <string_view>

namespace AsmParser
{

class LibraryDetection
{
    public:
    LibraryDetection();

    bool file_in_library(std::string_view filepath) const;
};

// A path that starts with a drive letter, e.g. C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp
bool is_windows_path(std::string_view filepath);

// On Windows the user sources are in a compiler-explorer-compiler* temp directory instead of /app,
//  returns the path relative to that directory (with forward slashes) if the file is in one
std::optional<std::string> windows_program_relative_path(std::string_view filepath);

} // namespace AsmParser
