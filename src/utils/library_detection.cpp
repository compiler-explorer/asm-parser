#include "library_detection.hpp"

#include <algorithm>
#include <vector>

AsmParser::LibraryDetection::LibraryDetection()
{
}

bool AsmParser::LibraryDetection::file_in_library(std::string_view filepath) const
{
    if (is_windows_path(filepath))
        return !windows_program_relative_path(filepath).has_value();

    // On amazon instances all user sources are under /app. Anything else is a system/library header
    // or a statically linked runtime, which may keep the paths it was built from, e.g. clang's asan
    // runtime refers to /root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp
    return !filepath.starts_with("/app/");
}

bool AsmParser::is_windows_path(const std::string_view filepath)
{
    if (filepath.length() < 3)
        return false;

    const auto drive = filepath[0];
    const bool isDriveLetter = (drive >= 'A' && drive <= 'Z') || (drive >= 'a' && drive <= 'z');

    return isDriveLetter && filepath[1] == ':' && (filepath[2] == '\\' || filepath[2] == '/');
}

namespace
{

bool is_compiler_temp_dir(const std::string_view dirname)
{
    constexpr std::string_view prefix = "compiler-explorer-compiler";
    if (!dirname.starts_with(prefix))
        return false;

    return std::all_of(dirname.begin() + prefix.length(), dirname.end(),
                       [](const char c)
                       {
                           return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') ||
                                  c == '_' || c == '.' || c == '-';
                       });
}

bool has_whitespace(const std::string_view text)
{
    return std::any_of(text.begin(), text.end(),
                       [](const char c)
                       {
                           return c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == '\v' || c == '\f';
                       });
}

} // namespace

std::optional<std::string> AsmParser::windows_program_relative_path(const std::string_view filepath)
{
    if (!is_windows_path(filepath))
        return std::nullopt;

    // objdump on Windows mixes separators, e.g. C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp
    std::string normalized(filepath.substr(3));
    std::replace(normalized.begin(), normalized.end(), '\\', '/');

    std::vector<std::string_view> components;
    std::string_view rest(normalized);
    while (true)
    {
        const auto slash = rest.find('/');
        if (slash == std::string_view::npos)
        {
            components.push_back(rest);
            break;
        }
        components.push_back(rest.substr(0, slash));
        rest = rest.substr(slash + 1);
    }

    // Like Compiler Explorer's (?:[A-Za-z]:)?/(?:[^/\s]+/)*compiler-explorer-compiler[\w.-]*/ where the greedy
    //  match makes the last such directory the one that counts
    for (auto idx = components.size() - 1; idx-- > 0;)
    {
        if (!is_compiler_temp_dir(components[idx]))
            continue;

        const bool parentsValid = std::none_of(components.begin(), components.begin() + static_cast<std::ptrdiff_t>(idx),
                                               [](const std::string_view dir)
                                               {
                                                   return dir.empty() || has_whitespace(dir);
                                               });
        if (!parentsValid)
            return std::nullopt;

        std::string relative;
        for (auto rel = idx + 1; rel < components.size(); rel++)
        {
            if (!relative.empty())
                relative += '/';
            relative += components[rel];
        }

        if (relative.empty())
            return std::nullopt;

        return relative;
    }

    return std::nullopt;
}
