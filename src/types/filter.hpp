#pragma once

namespace AsmParser
{

struct Filter
{
    bool binary{};
    bool unused_labels{};
    bool library_functions{};
    bool directives{};
    bool comment_only{};
    bool whitespace{};

    bool compatmode{};

    bool code_only{};
};

} // namespace AsmParser