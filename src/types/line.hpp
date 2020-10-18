#pragma once

#include <optional>
#include <string>
#include <vector>

namespace AsmParser
{

struct asm_range
{
    uint16_t start_col;
    uint16_t end_col;
};

struct asm_label
{
    std::string name;
    asm_range range;
};

struct asm_source
{
    std::string file;
    int32_t line;
};

struct asm_link
{
    int32_t offset;
    int32_t length;
    int32_t to;
};

using asm_labelpair = std::pair<std::string, int32_t>;

struct asm_line
{
    std::string text;
    std::string section;
    std::vector<asm_label> labels;
    std::vector<std::string> opcodes;
    bool is_label{};
    asm_source source;
    std::optional<int64_t> address;
};

} // namespace AsmParser
