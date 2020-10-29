#pragma once

#include <optional>
#include <string>
#include <vector>

namespace AsmParser
{

// trivially copyable

struct asm_stabn
{
    int type;
    int line;
};

struct asm_range
{
    uint16_t start_col{};
    uint16_t end_col{};
};

struct asm_link
{
    int32_t offset;
    int32_t length;
    int32_t to;
};

// non-trivial

struct asm_label
{
    std::string name;
    asm_range range{};
};

struct asm_source
{
    std::string file;
    int32_t line{ 0 };
    bool is_usercode{};
    bool inside_proc{};
};

struct asm_file_def
{
    int file_index;
    std::string file_name;
};

using asm_labelpair = std::pair<std::string, int32_t>;

struct asm_line
{
    std::string text;
    std::string section;
    std::vector<asm_label> labels;
    std::vector<std::string> opcodes;
    bool is_label{};
    std::string label;
    asm_source source;
    std::optional<int64_t> address;
    bool is_used{};
};

} // namespace AsmParser
