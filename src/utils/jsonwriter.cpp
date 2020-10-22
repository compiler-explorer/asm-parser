#include "jsonwriter.hpp"
#include <algorithm>
#include <ostream>

AsmParser::JsonWriter::JsonWriter(std::ostream &out, const std::vector<asm_line> lines, const std::vector<asm_labelpair> labels, const Filter filter)
: filter(filter), out(out), lines(lines), labels(labels), prettyPrint(false)
{
}

void AsmParser::JsonWriter::writeKeyName(const char *key)
{
    this->out << "\"" << key << "\": ";
}

void AsmParser::JsonWriter::writeKeyName(const std::string key)
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

std::string escape(const std::string in)
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

void AsmParser::JsonWriter::writeKv(const char *key, const std::string value, const jsonopt opts)
{
    if (opts == jsonopt::prefixwithcomma)
        this->out << ", ";

    this->writeKeyName(key);

    this->out << "\"" << escape(value) << "\"";

    if (opts == jsonopt::trailingcomma)
        this->out << ", ";

    if (this->prettyPrint)
        this->out << "\n";
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

void AsmParser::JsonWriter::writeKv(const std::string key, const int value, const jsonopt opts)
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

void AsmParser::JsonWriter::writeKv(const std::string key, const std::string value, const jsonopt opts)
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

void AsmParser::JsonWriter::JsonWriter::writeLine(const asm_line line)
{
    bool wroteSomethingInRoot = false;

    this->out << "{";

    if (this->prettyPrint)
        this->out << "\n";

    if (line.opcodes.size() > 0)
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

        this->out << "[";
        bool firstOpcode = true;
        for (auto opcode : line.opcodes)
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

    if (line.address.has_value() && !(line.is_label && this->filter.compatmode))
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("address", line.address.value(), jsonopt::none);
    }

    if (!line.text.empty())
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("text", line.text, jsonopt::none);
    }

    if (wroteSomethingInRoot)
    {
        this->out << ", ";
    }
    this->writeKeyName("source");
    if (!line.is_label && (line.source.line > 0))
    {
        this->out << "{";
        if (line.source.is_usercode || this->filter.compatmode)
        {
            this->writeKvNull("file", jsonopt::trailingcomma);
        }
        else if (!line.source.file.empty())
        {
            this->writeKv("file", line.source.file, jsonopt::trailingcomma);
        }
        else
        {
            this->writeKvNull("file", jsonopt::trailingcomma);
        }

        this->writeKv("line", line.source.line, jsonopt::none);
        this->out << "}";
    }
    else
    {
        this->out << "null";
    }
    wroteSomethingInRoot = true;

    if (!line.section.empty() && !this->filter.compatmode)
    {
        if (wroteSomethingInRoot)
        {
            this->out << ", ";
        }
        else
        {
            wroteSomethingInRoot = true;
        }

        this->writeKv("section", line.section, jsonopt::none);
    }

    if (wroteSomethingInRoot)
    {
        this->out << ", ";
    }
    else
    {
        wroteSomethingInRoot = true;
    }

    this->writeKeyName("labels");
    this->out << "[";

    bool firstLabel = true;
    for (auto labelref : line.labels)
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

void AsmParser::JsonWriter::JsonWriter::write()
{
    this->out << "{";
    this->writeKeyName("asm");
    this->out << "[";

    bool firstLine = true;

    for (auto line : this->lines)
    {
        if (!firstLine)
        {
            this->out << ",";
            if (this->prettyPrint)
                this->out << "\n";
        }
        firstLine = false;

        this->writeLine(line);
    }

    this->out << "],";

    this->writeKeyName("labelDefinitions");
    this->out << "{";
    if (this->prettyPrint)
        this->out << "\n";
    bool firstLabel = true;

    for (auto label : this->labels)
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
    this->out << "}}";
    if (this->prettyPrint)
        this->out << "\n";
}