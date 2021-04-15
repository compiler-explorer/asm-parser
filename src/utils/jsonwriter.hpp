#pragma once

#include <iosfwd>
#include <memory>
#include <unordered_map>
#include <unordered_set>
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
    protected:
    const Filter filter;
    std::ostream &out;
    const std::vector<std::unique_ptr<asm_line_v>> &lines;
    const std::vector<asm_labelpair> labels;

    bool prettyPrint;

    void writeValue(const std::string_view value, const jsonopt opts);
    void writeValue(const std::string &value, const jsonopt opts);
    void writeKeyName(const char *key);
    void writeKeyName(const std::string_view key);
    void writeKvNull(const char *key, const jsonopt opts);
    void writeKv(const std::string_view key, const std::string_view value, const jsonopt opts);
    void writeKv(const std::string_view key, const int value, const jsonopt opts);
    void writeKv(const char *key, const std::string &value, const jsonopt opts);
    void writeKv(const char *key, const int value, const jsonopt opts);
    void writeSource(const asm_line_v *line);
    void writeLine(const asm_line_v *line);

    public:
    JsonWriter(std::ostream &out,
               const std::vector<std::unique_ptr<asm_line_v>> &lines,
               const std::vector<asm_labelpair> &labels,
               const Filter filter);

    virtual void write();
};

class DebugJsonWriter : public JsonWriter
{
    protected:
    const std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_labels;
    const std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_weak_labels;
    const std::unordered_map<std::string_view, std::string_view> aliased_labels;

    void writeDebugLine(const asm_line_v *line);

    public:
    DebugJsonWriter(std::ostream &out,
                    const std::vector<std::unique_ptr<asm_line_v>> &lines,
                    const std::vector<asm_labelpair> &labels,
                    const Filter filter,
                    const std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_labels,
                    const std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_weak_labels,
                    const std::unordered_map<std::string_view, std::string_view> aliased_labels);

    void write() override;
};

} // namespace AsmParser
