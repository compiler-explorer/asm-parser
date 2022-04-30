#include "library_detection.hpp"

AsmParser::LibraryDetection::LibraryDetection()
{
}

bool AsmParser::LibraryDetection::file_in_library(std::string_view filepath) const
{
    return filepath.starts_with("/opt/compiler-explorer/") || filepath.starts_with("/usr/include") ||
           filepath.starts_with("/usr/local/include");
}
