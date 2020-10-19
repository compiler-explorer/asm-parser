#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/state.hpp"
#include <istream>
#include <string_view>
#include <unordered_map>

namespace AsmParser
{

class AssemblyTextParser
{
    private:

    const Filter filter;
    ParserState state{};
    std::vector<asm_line> lines;
    std::vector<asm_labelpair> labels;

    bool label_is_used(const std::string_view s) const;
    std::optional<std::string_view> getLabelFromLine(const std::string_view line);

    void handleSource(const std::string_view line);

    void eol();

    public:
    AssemblyTextParser(const Filter filter);

    void fromStream(std::istream &in);

    void outputJson(std::ostream &out) const;
    void outputText(std::ostream &out) const;
};

}; // namespace AsmParser
