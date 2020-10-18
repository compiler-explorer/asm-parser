#pragma once

#include <ostream>
#include <unordered_map>
#include <vector>

#include "../types/filter.hpp"
#include "../types/line.hpp"

namespace AsmParser
{

enum class jsonopt
{
    none,
    trailingcomma,
    prefixwithcomma
};

class JsonWriter
{
    private:
    const Filter filter;
    std::ostream &out;
    const std::vector<asm_line> lines;
    const std::vector<asm_labelpair> labels;

    bool prettyPrint;

    void writeKeyName(const char *key);
    void writeKeyName(const std::string key);
    void writeKvNull(const char *key, const jsonopt opts);
    void writeKv(const char *key, const std::string value, const jsonopt opts);
    void writeKv(const char *key, const int value, const jsonopt opts);
    void writeKv(const std::string key, const std::string value, const jsonopt opts);
    void writeKv(const std::string key, const int value, const jsonopt opts);
    void writeLine(const asm_line line);

    public:
    JsonWriter(std::ostream &out,
               const std::vector<asm_line> lines,
               const std::vector<asm_labelpair> labels,
               const Filter filter);

    void write();
};

} // namespace AsmParser
