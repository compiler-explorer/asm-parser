#pragma once

#include <string>
#include <vector>
#include <optional>

namespace AsmParser {

using asm_opcodes = std::vector<std::string>;

struct asm_range {
    int32_t start_col;
    int32_t end_col;
};

struct asm_label {
    std::string name;
    std::optional<asm_range> range;
};

struct asm_source {
    std::string file;
    int32_t line;
};

struct asm_link {
    int32_t offset;
    int32_t length;
    int32_t to;
};

struct asm_line {
    std::optional<int64_t> address;
    asm_opcodes opcodes;
    std::string text;
    std::optional<asm_source> source;
    std::vector<asm_label> labels;
};

}
