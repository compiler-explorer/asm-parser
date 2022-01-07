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

struct asm_label_v
{
    std::string_view name;
    asm_range range{};
};

struct asm_source
{
    std::string file;
    int32_t file_idx{ 0 };
    int32_t line{ 0 };
    bool is_usercode{};
    bool inside_proc{};
};

struct asm_source_v
{
    std::string_view file;
    int32_t file_idx;
    int32_t line;
    bool is_end;
    bool is_usercode;
    bool inside_proc;
};

struct asm_source_f
{
    std::string_view file;
};

struct asm_source_l
{
    int32_t line{ 0 };
};

struct asm_file_def
{
    int file_index;
    std::string file_name;
};

using asm_labelpair = std::pair<std::string_view, int32_t>;
using asm_labelpair_t = std::pair<std::string, int32_t>;

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

class asm_line_v
{
    public:
    std::string text;
    std::string_view section;
    std::vector<asm_label_v> labels;
    std::vector<std::string> opcodes;
    std::string closest_parent_label;
    bool is_label{};
    bool is_internal_label{};
    std::string_view label;
    asm_source_v source;
    std::optional<int64_t> address;
    bool is_used{};
    bool is_used_through_alias{};
    bool is_used_data_through_alias{};
    bool is_data{};
    bool is_inline_asm{};
    bool has_opcode{};
    bool is_directive{};
    bool is_assignment{};

    asm_line_v() = default;
    asm_line_v(const asm_line &line)
    {
        this->text = line.text;
        this->section = line.section;

        this->labels.reserve(line.labels.size());
        for (auto &label : line.labels)
        {
            this->labels.push_back(asm_label_v{ .name = std::string_view(label.name), .range = label.range });
        }

        this->opcodes = line.opcodes;
        this->closest_parent_label = line.closest_parent_label;
        this->is_label = line.is_label;
        this->is_internal_label = line.is_internal_label;
        this->label = line.label;
        this->source = asm_source_v{ .file = line.source.file,
                                     .file_idx = line.source.file_idx,
                                     .line = line.source.line,
                                     .is_end = false,
                                     .is_usercode = line.source.is_usercode,
                                     .inside_proc = line.source.inside_proc };
        this->address = line.address;
        this->is_used = line.is_used;
        this->is_used_through_alias = line.is_used_through_alias;
        this->is_used_data_through_alias = line.is_used_through_alias;
        this->is_data = line.is_data;
        this->is_inline_asm = line.is_inline_asm;
        this->has_opcode = line.has_opcode;
        this->is_directive = line.is_directive;
        this->is_assignment = line.is_assignment;
    }
};

} // namespace AsmParser
