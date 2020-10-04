#pragma once

#include <string>
#include <vector>
#include <optional>

namespace AsmParser {

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
    std::string text;
    std::vector<asm_label> labels;
    std::vector<std::string> opcodes;
    std::optional<asm_source> source;
    std::optional<int64_t> address;
};

}
