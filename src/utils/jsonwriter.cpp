#include "jsonwriter.hpp"
#include "utils.hpp"
#include <algorithm>
#include <ostream>
#include <utility>

AsmParser::JsonWriter::JsonWriter(std::ostream &out,
                                  const std::vector<std::unique_ptr<asm_line_v>> &lines,
                                  std::vector<asm_labelpair> labels,
                                  const Filter filter)
: filter(filter), out(out), lines(lines), labels(labels), prettyPrint(false)
{
}

void AsmParser::JsonWriter::writeKeyName(const char *key)
{
    this->out << "\"" << key << "\": ";
}

void AsmParser::JsonWriter::writeKeyName(const std::string_view key)
{
    this->out << "\"" << key << "\": ";
}

void AsmParser::JsonWriter::writeKvNull(const char *key, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->writeKeyName(key);

    this->out << "null";

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
}

std::string escape(const std::string_view in)
{
    std::string out;
    out.reserve(in.length());
    for (auto c : in)
    {
        if (c == '\t')
        {
            out += "\\t";
        }
        else if (c == '\\')
        {
            out += "\\\\";
        }
        else if (c == '"')
        {
            out += "\\\"";
        }
        else
        {
            out += c;
        }
    }
    return out;
}

void AsmParser::JsonWriter::writeValue(const std::string &value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->out << "\"" << escape(value) << "\"";

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
}

void AsmParser::JsonWriter::writeValue(const std::string_view value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->out << "\"" << escape(value) << "\"";

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
}

void AsmParser::JsonWriter::writeKv(const char *key, const std::string &value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
    {
        this->out << ", ";

        this->writeKeyName(key);

        this->writeValue(value, jsonopt::none);
    }
    else
    {
        this->writeKeyName(key);

        this->writeValue(value, opts);
    }
}

void AsmParser::JsonWriter::writeKv(const char *key, const int value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->writeKeyName(key);

    this->out << value;

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
}

void AsmParser::JsonWriter::writeKv(const std::string_view key, const int value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->writeKeyName(key);

    this->out << value;

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
}

void AsmParser::JsonWriter::writeKv(const std::string_view key, const std::string_view value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
    {
        this->out << ", ";

        this->writeKeyName(key);

        this->writeValue(value, jsonopt::none);
    }
    else
    {
        this->writeKeyName(key);

        this->writeValue(value, opts);
    }
}

void AsmParser::JsonWriter::writeSource(const asm_line_v *line)
{
    if ((!line->is_label || line->has_opcode) && (line->source.line > 0))
    {
        this->out << "{";

        if (line->source.column != 0)
        {
            this->writeKv("column", line->source.column, jsonopt::trailingcomma);
        }

        bool isMainSource{};
        if (!line->source.file.empty())
        {
            isMainSource = line->source.file.starts_with("/app/example.") || line->source.file.starts_with("example.");

            if (!filter.dont_mask_filenames && isMainSource)
            {
                this->writeKvNull("file", jsonopt::trailingcomma);
            }
            else if (line->source.file.starts_with("/app/"))
            {
                const auto withoutapp = std::string_view(line->source.file.begin() + 5, line->source.file.end());
                this->writeKv("file", withoutapp, jsonopt::trailingcomma);
            }
            else
            {
                this->writeKv("file", line->source.file, jsonopt::trailingcomma);
            }
        }
        else
        {
            this->writeKvNull("file", jsonopt::trailingcomma);
            isMainSource = true;
        }

        this->writeKv("mainsource", isMainSource ? "true" : "false", jsonopt::trailingcomma);

        this->writeKv("line", line->source.line, jsonopt::none);

        this->out << "}";
    }
    else
    {
        this->out << "null";
    }
}

void AsmParser::JsonWriter::writeLine(const asm_line_v *line)
{
    bool wroteSomethingInRoot = false;

    this->out << "{";

    if (this->prettyPrint)
        this->out << "\n";

    this->writeKeyName("labels");
    this->writeLabelArray(line);
    wroteSomethingInRoot = true;

    if (line->opcodes.size() > 0)
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKeyName("opcodes");
        this->writeOpcodesArray(line);
    }

    if (line->address.has_value() && !(line->is_label && this->filter.compatmode))
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("address", line->address.value(), jsonopt::none);
    }

    if (wroteSomethingInRoot)
    {
        this->out << ", ";
    }
    this->writeKeyName("source");
    this->writeSource(line);
    wroteSomethingInRoot = true;

    if (!line->section.empty() && !this->filter.compatmode)
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("section", line->section, jsonopt::none);
    }

    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("text", line->text, jsonopt::none);
    }

    if (this->prettyPrint)
        this->out << "\n";

    this->out << "}";
}

void AsmParser::JsonWriter::writeOpcodesArray(const asm_line_v *line)
{
    this->out << "[";
    bool firstOpcode = true;
    for (auto &opcode : line->opcodes)
    {
        if (!firstOpcode)
        {
            this->out << ", ";
        }
        else
        {
            firstOpcode = false;
        }

        this->out << "\"" << opcode << "\"";
    }
    this->out << "]";
}

void AsmParser::JsonWriter::writeLabelArray(const asm_line_v *line)
{
    this->out << "[";

    bool firstLabel = true;
    for (auto &labelref : line->labels)
    {
        if (!firstLabel)
        {
            this->out << ",";
            if (this->prettyPrint)
                this->out << "\n";
        }
        else
        {
            firstLabel = false;
        }

        this->out << "{";
        this->writeKv("name", labelref.name, jsonopt::trailingcomma);
        this->writeKeyName("range");
        this->out << "{";
        this->writeKv("startCol", labelref.range.start_col, jsonopt::none);
        this->writeKv("endCol", labelref.range.end_col, jsonopt::prefixwithcomma);
        this->out << "}";
        this->out << "}";
    }
    this->out << "]";
}

void AsmParser::JsonWriter::JsonWriter::write()
{
    this->out << "{";
    this->writeKeyName("asm");
    this->out << "[";

    bool firstLine = true;

    for (auto &line : this->lines)
    {
        if (!firstLine)
        {
            this->out << ",";
            if (this->prettyPrint)
                this->out << "\n";
        }
        firstLine = false;

        this->writeLine(line.get());
    }

    this->out << "],";

    this->writeKeyName("labelDefinitions");
    this->out << "{";
    if (this->prettyPrint)
        this->out << "\n";
    bool firstLabel = true;

    for (auto &label : this->labels)
    {
        if (firstLabel)
        {
            this->writeKv(label.first, label.second, jsonopt::none);
            firstLabel = false;
        }
        else
        {
            this->writeKv(label.first, label.second, jsonopt::prefixwithcomma);
        }
    }
    this->out << "},";

    this->writeKv("parsingTime", global_current_running_time(), jsonopt::none);

    this->out << "}";
    if (this->prettyPrint)
        this->out << "\n";
}


AsmParser::DebugJsonWriter::DebugJsonWriter(std::ostream &out,
                                            const std::vector<std::unique_ptr<asm_line_v>> &lines,
                                            const std::vector<asm_labelpair> &labels,
                                            const Filter &filter,
                                            std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_labels,
                                            std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_weak_labels,
                                            std::unordered_map<std::string_view, std::string_view> aliased_labels,
                                            std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_data_labels)
: AsmParser::JsonWriter::JsonWriter(out, lines, labels, filter), used_labels(used_labels),
  used_weak_labels(used_weak_labels), aliased_labels(aliased_labels), used_data_labels(used_data_labels)
{
}

void AsmParser::DebugJsonWriter::writeDebugLine(const asm_line_v *line)
{
    this->out << "{";

    this->writeKv("text", line->text, jsonopt::trailingcomma);
    if (line->address)
    {
        this->writeKv("address", line->address.value(), jsonopt::trailingcomma);
    }
    else
    {
        this->writeKvNull("address", jsonopt::trailingcomma);
    }

    this->writeKv("is_data", line->is_data ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_used", line->is_used ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_label", line->is_label ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_internal_label", line->is_internal_label ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_inline_asm", line->is_inline_asm ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("closest_parent_label", line->closest_parent_label, jsonopt::trailingcomma);
    this->writeKv("section", line->section, jsonopt::trailingcomma);
    this->writeKv("has_opcode", line->has_opcode ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_directive", line->is_directive ? "true" : "false", jsonopt::trailingcomma);
    this->writeKv("is_assignment", line->is_assignment ? "true" : "false", jsonopt::trailingcomma);

    this->writeKeyName("source");
    this->writeSource(line);

    this->out << ",\n";
    this->writeKeyName("labels");
    this->out << "[";

    bool firstLabel = true;
    for (auto &labelref : line->labels)
    {
        if (!firstLabel)
        {
            this->out << ",";
            if (this->prettyPrint)
                this->out << "\n";
        }
        else
        {
            firstLabel = false;
        }

        this->out << "{";
        this->writeKv("name", labelref.name, jsonopt::trailingcomma);
        this->writeKeyName("range");
        this->out << "{";
        this->writeKv("startCol", labelref.range.start_col, jsonopt::none);
        this->writeKv("endCol", labelref.range.end_col, jsonopt::prefixwithcomma);
        this->out << "}";
        this->out << "}";
    }
    this->out << "]";

    if (this->prettyPrint)
        this->out << "\n";

    this->out << "}";
}

void AsmParser::DebugJsonWriter::write()
{
    this->out << "{";
    this->writeKeyName("asm");
    this->out << "[";

    bool firstLine = true;

    for (auto &line : this->lines)
    {
        if (!firstLine)
        {
            this->out << ",";
            if (this->prettyPrint)
                this->out << "\n";
        }
        firstLine = false;

        this->writeDebugLine(line.get());
    }

    this->out << "],";

    this->writeKeyName("labelDefinitions");
    this->out << "{";
    if (this->prettyPrint)
        this->out << "\n";
    bool firstLabel = true;

    for (auto &label : this->labels)
    {
        if (firstLabel)
        {
            this->writeKv(label.first, label.second, jsonopt::none);
            firstLabel = false;
        }
        else
        {
            this->writeKv(label.first, label.second, jsonopt::prefixwithcomma);
        }
    }
    this->out << "}";

    this->out << ",\n";
    this->writeKeyName("used_labels");
    this->out << "[";
    firstLabel = true;
    for (auto &usedlabel : this->used_labels)
    {
        if (firstLabel)
        {
            firstLabel = false;
        }
        else
        {
            this->out << ",";
        }

        this->out << "{";
        this->writeKeyName(usedlabel.first);
        this->out << "[";
        bool firstref = true;
        for (auto &ref : usedlabel.second)
        {
            if (firstref)
            {
                firstref = false;
                this->writeValue(ref, jsonopt::none);
            }
            else
            {
                this->writeValue(ref, jsonopt::prefixwithcomma);
            }
        }
        this->out << "]";
        this->out << "}";
    }
    this->out << "]";

    this->out << ",\n";
    this->writeKeyName("used_weak_labels");
    this->out << "{";
    firstLabel = true;
    for (auto &usedlabel : this->used_weak_labels)
    {
        if (firstLabel)
        {
            firstLabel = false;
        }
        else
        {
            this->out << ",";
        }

        this->writeKeyName(usedlabel.first);
        this->out << "[";
        bool firstref = true;
        for (auto &ref : usedlabel.second)
        {
            if (firstref)
            {
                firstref = false;
                this->writeValue(ref, jsonopt::none);
            }
            else
            {
                this->writeValue(ref, jsonopt::prefixwithcomma);
            }
        }
        this->out << "]";
    }
    this->out << "}";

    this->out << ",\n";
    this->writeKeyName("used_data_labels");
    this->out << "{";
    firstLabel = true;
    for (auto &usedlabel : this->used_data_labels)
    {
        if (firstLabel)
        {
            firstLabel = false;
        }
        else
        {
            this->out << ",";
        }

        this->writeKeyName(usedlabel.first);
        this->out << "[";
        bool firstref = true;
        for (auto &ref : usedlabel.second)
        {
            if (firstref)
            {
                firstref = false;
                this->writeValue(ref, jsonopt::none);
            }
            else
            {
                this->writeValue(ref, jsonopt::prefixwithcomma);
            }
        }
        this->out << "]";
    }
    this->out << "}";

    this->out << ",\n";
    this->writeKeyName("aliased_labels");
    this->out << "{";
    firstLabel = true;
    for (auto &usedlabel : this->aliased_labels)
    {
        if (firstLabel)
        {
            this->writeKv(usedlabel.first, usedlabel.second, jsonopt::none);
            firstLabel = false;
        }
        else
        {
            this->writeKv(usedlabel.first, usedlabel.second, jsonopt::prefixwithcomma);
        }
    }
    this->out << "}";

    this->out << "}";
    if (this->prettyPrint)
        this->out << "\n";
}
