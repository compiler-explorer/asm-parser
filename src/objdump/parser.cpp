#include "parser.hpp"
#include "../types/line.hpp"
#include "../utils/jsonwriter.hpp"
#include "../utils/utils.hpp"
#include <clocale>
#include <ctre.hpp>
#include <istream>

void AsmParser::ObjDumpParserState::commonReset()
{
    this->currentLine = {};
    this->text.clear();
    this->hasPrefixingWhitespace = false;
    this->inComment = false;
    this->inAddress = true;
    this->inOpcodes = false;
    this->inLabel = false;
    this->inSectionStart = false;
    this->inSectionName = false;
    this->inSourceRef = false;
    this->skipRestOfTheLine = false;
}

AsmParser::ObjDumpParser::ObjDumpParser(const Filter filter) : filter(filter)
{
}

size_t ustrlen(const std::string s)
{
    const char *cstrptr = s.data();

    mblen(NULL, 0);

    size_t maxlen = s.length();

    size_t ulen = 0;
    while (maxlen != 0)
    {
        auto mbcharlen = mblen(cstrptr, maxlen);
        if (mbcharlen < 1)
        {
            break;
        }
        cstrptr += mbcharlen;
        ulen += 1;
        if (maxlen > (size_t)mbcharlen)
        {
            maxlen -= mbcharlen;
        }
        else
        {
            break;
        }
    }

    return ulen;
}

bool AsmParser::ObjDumpParser::shouldIgnoreFunction(const std::string_view name) const
{
    if (auto match = ctre::match<"^(__.*|_(init|start|fini)|(de)?register_tm_clones|call_gmon_start|"
                                 "frame_dummy|\\.plt.*|_dl_relocate_static_pie)$">(name))
    {
        return true;
    }
    else if (this->filter.plt)
    {
        return (name.ends_with("@plt") || name.ends_with("@plt>"));
    }
    else
    {
        return false;
    }
}

void AsmParser::ObjDumpParser::eol()
{
    if (this->state.ignoreUntilNextLabel)
    {
        this->state.commonReset();
        return;
    }

    if (this->state.inSourceRef)
    {
        auto lineNum = atoi(this->state.text.c_str());
        if (lineNum > 0)
        {
            this->state.currentSourceRef.line = lineNum;
        }
    }
    else if (!this->state.text.empty())
    {
        this->state.currentLine.text = this->state.text;
        this->state.currentLine.section = this->state.currentSection;

        if (!this->state.currentLine.is_label)
        {
            this->state.currentLine.text = ' ' + this->state.currentLine.text;

            for (auto &label : this->state.currentLine.labels)
            {
                // cols start at 1, and we added a space, so add 2
                label.range.start_col += 2;
                label.range.end_col += 2;
            }
        }

        this->state.currentLine.source = this->state.currentSourceRef;

        if (lines.size() < 5000)
        {
            lines.push_back(this->state.currentLine);
        }
        else
        {
            asm_line truncated = {};
            truncated.text = "[truncated; too many lines]";
            lines.push_back(truncated);
            this->state.stopParsing = true;
        }
    }

    this->state.commonReset();
}

void AsmParser::ObjDumpParser::label()
{
    this->state.ignoreUntilNextLabel = this->shouldIgnoreFunction(this->state.text);
    if (this->state.ignoreUntilNextLabel)
        return;

    this->state.previousLabel = this->state.text;

    this->state.text = this->state.text + ":";
    this->state.currentLine.is_label = true;

    labels.push_back({ this->state.previousLabel, lines.size() + 1 });
}

void AsmParser::ObjDumpParser::labelref()
{
    if (!this->state.ignoreUntilNextLabel)
    {
        this->state.currentLabelReference.range.end_col = ustrlen(this->state.text);
        this->state.currentLabelReference.name = this->state.text.substr(this->state.currentLabelReference.range.start_col);

        if (!this->shouldIgnoreFunction(this->state.currentLabelReference.name))
        {
            this->state.currentLine.labels.push_back(this->state.currentLabelReference);
        }
    }

    this->state.currentLabelReference = {};
}

void AsmParser::ObjDumpParser::opcodes()
{
    if (!this->state.ignoreUntilNextLabel)
    {
        std::string opcode{};
        for (auto c : this->state.text)
        {
            if (c != ' ')
            {
                opcode += c;
            }
            else
            {
                if (!opcode.empty())
                {
                    this->state.currentLine.opcodes.push_back(opcode);
                    opcode.clear();
                }
            }
        }
    }

    this->state.text.clear();
    this->state.inOpcodes = false;
}

void AsmParser::ObjDumpParser::actually_address()
{
    if (!this->state.ignoreUntilNextLabel)
    {
        int64_t addr = 0;
        int8_t bitsdone = 0;
        for (auto c = this->state.text.rbegin(); c != this->state.text.rend(); c++)
        {
            if (!is_hex(*c))
                break;

            addr += hex2int(*c) << bitsdone;
            bitsdone += 4;
        }

        this->state.currentLine.address = addr;
    }

    this->state.inAddress = false;
    this->state.inOpcodes = true;
}

void AsmParser::ObjDumpParser::actually_filename()
{
    if (!this->state.ignoreUntilNextLabel)
    {
        this->state.currentFilename = this->state.text;
    }

    this->state.inAddress = false;
    this->state.inOpcodes = false;
    this->state.skipRestOfTheLine = true;
}

void AsmParser::ObjDumpParser::address()
{
    if (!this->state.text.empty())
    {
        if (this->state.text[0] == '/')
        {
            // probably a filename
            this->actually_filename();
        }
        else
        {
            // usually it's an actual hex address
            this->actually_address();
        }
    }
    else
    {
        this->state.inAddress = false;
        this->state.inOpcodes = false;
    }

    this->state.text.clear();
}

void AsmParser::ObjDumpParser::fromStream(std::istream &in)
{
    char c;

    this->state.inAddress = true;
    while (!this->state.stopParsing && in.get(c))
    {
        if (c == 13)
        {
            // skip cr (assuming there's going to be an lf)
        }
        else if (c == 10)
        {
            this->eol();
            continue;
        }
        else if (!this->state.skipRestOfTheLine)
        {

            if (this->state.inAddress)
            {
                if (c == '/')
                {
                    // source reference
                    this->state.inAddress = false;
                    this->state.inSourceRef = true;
                }
                else if (c == ':')
                {
                    this->address();
                    continue;
                }
                else if (is_whitespace(c))
                {
                    if (this->state.text == "Disassembly")
                    {
                        this->state.inAddress = false;
                        this->state.inSectionStart = true;
                        this->state.currentSection.clear();
                    }
                    else if (!this->state.text.empty())
                    {
                        this->address();
                        this->state.inAddress = false;
                        this->state.inLabel = true;
                        continue;
                    }
                    else
                    {
                        // skip prefixing whitespace
                        continue;
                    }
                }
            }
            else if (this->state.inLabel)
            {
                if (c == ':')
                {
                    this->label();
                    continue;
                }
                else if (c == ' ')
                {
                    // not really a label it seems
                    this->state.inLabel = false;
                }
                else if (c == '<')
                {
                    // skip
                    continue;
                }
                else if (c == '>')
                {
                    // skip
                    continue;
                }
            }
            else if (this->state.inOpcodes)
            {
                if ((c == ' ') || (c == '\t'))
                {
                    if (this->state.text.empty())
                        continue;
                    if (this->state.text[this->state.text.length() - 1] == ' ')
                    {
                        this->opcodes();
                        continue;
                    }
                }
                else if (!is_hex(c))
                {
                    this->state.inOpcodes = false;
                }
            }
            else if (this->state.inSectionStart)
            {
                if (!this->state.inSectionName)
                {
                    this->state.inSectionName = (this->state.text == "Disassembly of section ");
                    if (this->state.inSectionName)
                    {
                        this->state.text.clear();

                        this->state.currentSection.clear();
                        this->state.currentSection += c;
                        continue;
                    }
                }
                else
                {
                    if (c == ':')
                    {
                        this->state.skipRestOfTheLine = true;
                        this->state.text.clear();
                    }
                    else
                    {
                        this->state.currentSection += c;
                    }
                    continue;
                }
            }
            else if (this->state.inSourceRef)
            {
                if (c == ':')
                {
                    this->state.currentSourceRef = { this->state.text, 0 };
                    this->state.text.clear();
                    continue;
                }
            }
            else if (!this->state.inComment)
            {
                if (c == '#')
                {
                    this->state.inComment = true;
                }
                else if (c == '<')
                {
                    this->state.inSomethingWithALabel = true;
                    this->state.currentLabelReference.range = { (uint16_t)(ustrlen(this->state.text) + 1), (uint16_t)0 };
                }
                else if (this->state.inSomethingWithALabel)
                {
                    if (c == '>')
                    {
                        this->state.inSomethingWithALabel = false;
                        if (this->state.currentLabelReference.name.empty())
                        {
                            this->labelref();
                        }
                    }
                    else if (c == '+')
                    {
                        this->state.inSomethingWithALabel = false;
                        this->labelref();
                    }
                }
            }

            if (is_whitespace(c) && this->state.text.empty())
                continue;
            this->state.text += c;
        }
    }
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) const
{
    JsonWriter writer(out, this->lines, this->labels, this->filter);
    writer.write();
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) const
{
    for (auto line : this->lines)
    {
        out << line.text << "\n";
    }
}
