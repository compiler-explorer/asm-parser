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

struct asm_source_v
{
    std::string_view file;
    int32_t line{ 0 };
    bool is_end{};
};

struct asm_source_f
{
    std::string_view file;
};

struct asm_source_l
{
    int32_t line{ 0 };
};

struct asm_source
{
    std::string file;
    int32_t file_idx{ 0 };
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
    std::string closest_parent_label;
    bool is_label{};
    bool is_internal_label{};
    std::string label;
    asm_source source;
    std::optional<int64_t> address;
    bool is_used{};
    bool is_used_through_alias{};
    bool is_used_data_through_alias{};
    bool is_data{};
    bool is_inline_asm{};
    bool has_opcode{};
    bool is_directive{};
    bool is_assignment{};
};

} // namespace AsmParser
