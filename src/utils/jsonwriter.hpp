#pragma once

#include <ostream>
#include <vector>
#include <unordered_map>

#include "../types/line.hpp"

namespace AsmParser {

enum class jsonopt {
    none,
    trailingcomma,
    prefixwithcomma
};

class JsonWriter {
private:
    std::ostream &out;
    const std::vector<asm_line> lines;
    const std::unordered_map<std::string, int32_t> labels;

    bool prettyPrint;

    void writeKeyName(const char *key);
    void writeKeyName(const std::string key);
    void writeKv(const char *key, const std::string value, const jsonopt opts);
    void writeKv(const char *key, const int value, const jsonopt opts);
    void writeKv(const std::string key, const std::string value, const jsonopt opts);
    void writeKv(const std::string key, const int value, const jsonopt opts);
    void writeLine(const asm_line line);
public:
    JsonWriter(std::ostream &out, const std::vector<asm_line> lines, const std::unordered_map<std::string, int32_t> labels);

    void write();
};

}
