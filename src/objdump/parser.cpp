#include "parser.hpp"
#include "../types/line.hpp"
#include "../utils/jsonwriter.hpp"
#include "../utils/regexwrappers.hpp"
#include "../utils/utils.hpp"
#include <algorithm>
#include <clocale>
#include <ctre.hpp>
#include <istream>

namespace
{
constexpr std::size_t maxLines = 5000;
}

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
    this->inRelocation = false;
    this->inSourceRefLineNumber = false;
}

AsmParser::ObjDumpParser::ObjDumpParser(const Filter &filter) : filter(filter)
{
    reproducible = false;
}

void AsmParser::ObjDumpParser::updateSourceRefLineNumber()
{
    auto lineNum = atoi(this->state.text.c_str());
    if (lineNum > 0)
    {
        this->state.currentSourceRef.line = lineNum;
    }
}

void AsmParser::ObjDumpParser::eol()
{
    this->total_lines++;

    if (this->state.inLabel)
    {
        this->label();
    }

    if (this->state.ignoreUntilNextLabel)
    {
        this->state.commonReset();
        return;
    }

    if (this->state.inSourceRefLineNumber)
    {
        this->updateSourceRefLineNumber();
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
        if (this->state.currentLine.source.is_usercode)
            this->lastFunctionHasUserCode = true;

        // A function without user code is only removed at the next label, so its lines mustn't use up the limit,
        // otherwise a large statically linked runtime hides the user's functions behind it
        if (lines.size() < maxLines || this->may_remove_last_function())
        {
            lines.push_back(this->state.currentLine);
        }
        else
        {
            // A function kept for its user code may have run past the limit while it could still be removed
            this->lines.resize(maxLines);
            std::erase_if(this->labels,
                          [](const auto &label)
                          {
                              return static_cast<std::size_t>(label.second) > maxLines;
                          });

            asm_line truncated = {};
            truncated.text = "[truncated; too many lines]";
            lines.push_back(truncated);
            this->state.stopParsing = true;
        }
    }

    this->state.commonReset();
}

bool AsmParser::ObjDumpParser::may_remove_last_function() const
{
    return this->filter.library_functions && !this->labels.empty() && !this->lastFunctionHasUserCode;
}

void AsmParser::ObjDumpParser::maybe_remove_last_function()
{
    if (this->may_remove_last_function())
    {
        this->lines.erase(this->lines.begin() + this->labels.back().second - 1, this->lines.end());
        this->labels.pop_back();
        // every function that is still there was kept for having user code
        this->lastFunctionHasUserCode = true;
    }
}

void AsmParser::ObjDumpParser::label()
{
    if (this->state.text.empty())
    {
        this->state.inLabel = false;
        return;
    }

    auto label = AssemblyTextParserUtils::getLabelFromObjdumpLabel(this->state.text);
    if (label)
        this->state.text = label.value();

    this->maybe_remove_last_function();

    // objdump only prints a source line when it changes, but a new function doesn't continue the source of the one
    //  before it; labels starting with a dot are inside a function (e.g. .l_start in hand-written assembly)
    if (!this->state.text.starts_with("."))
        this->state.currentSourceRef = {};

    this->state.ignoreUntilNextLabel = AssemblyTextParserUtils::shouldIgnoreFunction(this->state.text, this->filter);
    if (this->state.ignoreUntilNextLabel)
        return;

    if (this->filter.library_functions)
        this->state.checkNextFileForLibraryCode = true;

    this->state.previousLabel = this->state.text;
    this->state.currentLine.label = this->state.text;

    this->state.text = this->state.text + ":";
    this->state.currentLine.is_label = true;

    this->labels.push_back({ this->state.previousLabel, static_cast<int32_t>(lines.size() + 1) });
    this->lastFunctionHasUserCode = false;
}

void AsmParser::ObjDumpParser::labelref()
{
    if (this->state.ignoreUntilNextLabel)
    {
        this->state.currentLabelReference = {};
        return;
    }

    std::size_t lastBracketPos = this->state.text.find_last_of('>');
    if (lastBracketPos == std::string::npos)
    {
        this->state.currentLabelReference = {};
        return;
    }

    std::size_t startBracketPos = std::string::npos;
    for (std::size_t i = lastBracketPos; i-- > 0;)
    {
        if (this->state.text[i] == '<')
        {
            if (i == 0 || is_whitespace(this->state.text[i - 1]))
            {
                startBracketPos = i;
            }
        }
    }

    if (startBracketPos != std::string::npos && startBracketPos < lastBracketPos)
    {
        std::size_t labelEndPos = lastBracketPos;

        std::size_t lastPlusPos = this->state.text.find_last_of('+', lastBracketPos);

        if (lastPlusPos != std::string::npos && lastPlusPos > startBracketPos)
        {
            std::size_t offsetLen = lastBracketPos - lastPlusPos - 1;

            if (offsetLen >= 3 && this->state.text[lastPlusPos + 1] == '0' && this->state.text[lastPlusPos + 2] == 'x')
            {
                bool validHex = true;
                for (std::size_t i = 3; i <= offsetLen; ++i)
                {
                    if (!is_hex(this->state.text[lastPlusPos + i]))
                    {
                        validHex = false;
                        break;
                    }
                }

                if (validHex)
                {
                    labelEndPos = lastPlusPos;
                }
            }
        }

        if (labelEndPos > startBracketPos + 1)
        {
            try
            {
                std::string_view text_view(this->state.text);

                this->state.currentLabelReference.range.start_col =
                static_cast<uint16_t>(ustrlen(text_view.substr(0, startBracketPos)) + 1);

                this->state.currentLabelReference.range.end_col =
                static_cast<uint16_t>(ustrlen(text_view.substr(0, labelEndPos)));

                std::size_t nameLen = labelEndPos - startBracketPos - 1;
                this->state.currentLabelReference.name = text_view.substr(startBracketPos + 1, nameLen);

                if (!AssemblyTextParserUtils::shouldIgnoreFunction(this->state.currentLabelReference.name, this->filter))
                {
                    this->state.currentLine.labels.push_back(this->state.currentLabelReference);
                }
            }
            catch (...)
            {
                // ignore erroneous nonsense
                this->state.currentLabelReference.name = "";
            }
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
    bool maybeNotHexAfterall = false;

    if (!this->state.ignoreUntilNextLabel)
    {
        int64_t addr = 0;
        int8_t bitsdone = 0;
        for (auto c = this->state.text.rbegin(); c != this->state.text.rend(); c++)
        {
            if (!is_hex(*c))
            {
                maybeNotHexAfterall = true;
                break;
            }

            auto hint = hex2int(*c);
            if (hint != 0)
            {
                // note: the if works for cases in 64 bit objdumps where label lines are formatted like this "0000000000408000 <_init>:"
                //  because it most likely won't get to the last/first hex chunk this way.
                //  Otherwise makes gcc think it's gonna be bigger than a int64_t and complain about potential overflows.
                //  (or maybe some other bit of the code is wrong??)
                addr += hint << bitsdone;
            }
            bitsdone += 4;
        }

        this->state.currentLine.address = addr;
    }

    if (maybeNotHexAfterall)
    {
        // it might be a label that we can ignore because its noise..
        this->state.skipRestOfTheLine = true;
        this->state.inAddress = false;
    }
    else
    {
        this->state.inAddress = false;
        this->state.inOpcodes = true;
    }
}

void AsmParser::ObjDumpParser::undo_last_line_if_label()
{
    const auto lastLine = this->lines.back();
    if (lastLine.is_label)
    {
        std::erase_if(this->labels,
                      [lastLine](auto &label)
                      {
                          return label.first == lastLine.label;
                      });
        this->lines.pop_back();
    }
}

void AsmParser::ObjDumpParser::do_file_check(std::string_view filename)
{
    this->state.currentSourceRef.is_usercode = !this->lib_detection.file_in_library(filename);
}

void AsmParser::ObjDumpParser::actually_filename()
{
    this->state.currentFilename = this->state.text;
    this->state.inAddress = false;
    this->state.inOpcodes = false;
    this->state.skipRestOfTheLine = true;

    this->do_file_check(this->state.currentFilename);
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

void AsmParser::ObjDumpParser::setReproducible()
{
    this->reproducible = true;
}

void AsmParser::ObjDumpParser::fromStream(std::istream &in)
{
    char c;

    this->total_lines = 0;
    this->state.inAddress = true;
    while (!this->state.stopParsing && in.get(c))
    {
        if (c == '\r')
        {
            // skip cr (assuming there's going to be an lf)
        }
        else if (c == '\n')
        {
            if (!this->state.inComment && !this->state.inLabel)
            {
                this->labelref();
            }
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
                else if (c == ';')
                {
                    continue;
                }
                else if (c == ':')
                {
                    // a source reference on Windows starts with a drive letter, e.g. C:\Windows\TEMP\...\example.cpp:5
                    const auto next = in.peek();
                    if (this->state.text.length() == 1 && (next == '\\' || next == '/') &&
                        is_windows_path(this->state.text + c + static_cast<char>(next)))
                    {
                        this->state.inAddress = false;
                        this->state.inSourceRef = true;
                        this->state.text += c;
                        continue;
                    }

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
                // go on until eol
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
                else if (c == 'R')
                {
                    this->state.inRelocation = true;
                    this->state.inOpcodes = false;

                    this->state.text += "   ";
                }
                else if (!is_hex(c))
                {
                    this->state.inOpcodes = false;
                }
            }
            else if (this->state.inRelocation)
            {
                // R_XXXXXX<tab>data for reloc
                // data can be symbol, symbol + addend, some value alone.
                // Simply change TAB to single space then take everything until EOL as data.
                if (c == '\t')
                {
                    this->state.text += ' ';
                    continue;
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
                    // the header of the output looks the same on Windows when objdump got an absolute path, e.g.
                    //  C:\Windows\TEMP\compiler-explorer-compilerAbC123\output.s.exe:     file format pei-x86-64
                    //  while a source reference is followed by its line number
                    const auto next = in.peek();
                    if (is_windows_path(this->state.text) && !(next >= '0' && next <= '9'))
                    {
                        this->state.text.clear();
                        this->state.inSourceRef = false;
                        this->state.skipRestOfTheLine = true;
                        continue;
                    }

                    this->state.currentSourceRef = asm_source{ .file = this->state.text, .line = 0, .column = 0 };
                    this->state.currentFilename = this->state.currentSourceRef.file;
                    this->state.text.clear();
                    this->do_file_check(this->state.currentSourceRef.file);

                    // like /app/ paths, the user's sources in the Compiler Explorer temp directory on Windows
                    //  are shown relative to it
                    if (auto relative = windows_program_relative_path(this->state.currentSourceRef.file))
                        this->state.currentSourceRef.file = std::move(relative.value());

                    this->state.inSourceRef = true;
                    this->state.inSourceRefLineNumber = true;
                    continue;
                }
                else if (this->state.inSourceRefLineNumber && is_whitespace(c))
                {
                    this->updateSourceRefLineNumber();
                    this->state.text.clear();
                    this->state.skipRestOfTheLine = true;
                    continue;
                }
            }
            else if (!this->state.inComment)
            {
                if (c == '#')
                {
                    if (!this->state.inLabel)
                    {
                        this->labelref();
                    }
                    this->state.inComment = true;
                }
            }

            if (is_whitespace(c) && this->state.text.empty())
                continue;
            this->state.text += c;
        }
    }

    this->maybe_remove_last_function();
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) const
{
    std::vector<std::unique_ptr<asm_line_v>> linesv;
    linesv.reserve(this->lines.size());
    for (auto &line : this->lines)
    {
        linesv.push_back(std::make_unique<asm_line_v>(line));
    }

    std::vector<asm_labelpair> labelsv;
    labelsv.reserve(this->labels.size());
    for (auto &label : this->labels)
    {
        labelsv.push_back(asm_labelpair{ std::string_view{ label.first.begin(), label.first.end() }, label.second });
    }

    JsonWriter writer(out, linesv, labelsv, this->filter, this->total_lines);
    if (this->reproducible)
        writer.setReproducible();
    writer.write();
}

void AsmParser::ObjDumpParser::outputDebugJson(std::ostream &out) const
{
    out << "Not implemented"
        << "\n";
    throw std::runtime_error("Not implemented");
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) const
{
    for (const auto &line : this->lines)
    {
        out << line.text << "\n";
    }
}
