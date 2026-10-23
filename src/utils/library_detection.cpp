#include "library_detection.hpp"

AsmParser::LibraryDetection::LibraryDetection()
{
}

bool AsmParser::LibraryDetection::file_in_library(std::string_view filepath) const
{
    // On amazon instances all user sources are under /app. Anything else is a system/library header
    // or a statically linked runtime, which may keep the paths it was built from, e.g. clang's asan
    // runtime refers to /root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp
    return !filepath.starts_with("/app/");
}
