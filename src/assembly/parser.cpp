#include "parser.hpp"
#include "../utils/jsonwriter.hpp"
#include "regexes.hpp"
#include <fmt/core.h>

#include <cstdlib>
#include <istream>

AsmParser::AssemblyTextParser::AssemblyTextParser(const Filter filter) : filter(filter)
{
}

bool str_contains(const std::string_view s, char c)
{
    auto found = s.find(c);

    return (found != std::string::npos);
}

bool AsmParser::AssemblyTextParser::label_is_used(const std::string_view s) const
{
    return std::any_of(this->labels.begin(), this->labels.end(), [s](auto labelpair) {
        return s == labelpair.first;
    });
}

std::optional<std::string_view> AsmParser::AssemblyTextParser::getLabelFromLine(const std::string_view line)
{
    auto match_label = Regexes::labelDef(line);
    if (match_label)
    {
        return match_label.get<1>().to_view();
    }
    else
    {
        auto match_assign = Regexes::assignmentDef(line);
        if (match_assign)
        {
            return match_assign.get<1>().to_view();
        }
        else
        {
            auto match_cuda = Regexes::cudaBeginDef(line);
            if (match_cuda)
            {
                this->state.inNvccDef = true;
                this->state.inNvccCode = true;
                return match_cuda.get<1>().to_view();
            }
            else
            {
                return std::nullopt;
            }
        }
    }
}

inline int svtoi(const std::string_view sv)
{
    return std::atoi(sv.data());
}

std::pair<int, int> AsmParser::AssemblyTextParserUtils::getSourceRef(const std::string_view line)
{
    const auto match = AsmParser::Regexes::sourceTag(line);
    if (match)
    {
        const auto file_index = svtoi(match.get<1>().to_view());
        const auto line_index = svtoi(match.get<2>().to_view());

        return { file_index, line_index };
    }
    else
    {
        return { 0, 0 };
    }
}

std::optional<AsmParser::asm_file_def> AsmParser::AssemblyTextParserUtils::getFileDef(const std::string_view line)
{
    const auto match = Regexes::fileFind(line);
    if (match)
    {
        const auto file_index = svtoi(match.get<1>().to_view());
        const auto file_name = match.get<2>().to_view();

        const auto file_name_rest = match.get<4>().to_view();
        if (!file_name_rest.empty())
        {
            return asm_file_def{ file_index, fmt::format("{}/{}", file_name, file_name_rest) };
        }
        else
        {
            return asm_file_def{ file_index, std::string(file_name) };
        }
    }

    return std::nullopt;
}

std::string AsmParser::AssemblyTextParserUtils::expandTabs(const std::string line)
{
    std::string expandedLine;

    const std::string spaces = "        ";
    expandedLine.reserve(line.length());

    auto extraChars = 0;
    for (auto c : line)
    {
        if (c == '\t')
        {
            const auto total = expandedLine.length() + extraChars;
            const auto spacesNeeded = (total + 8) & 7;
            extraChars += spacesNeeded - 1;
            expandedLine += spaces.substr(spacesNeeded);
        }
        else
        {
            expandedLine += c;
        }
    }

    return expandedLine;
}

void AsmParser::AssemblyTextParser::handleStabs(const std::string_view line)
{
    const auto match = Regexes::sourceStab(line);
    if (!match)
        return;

    // cf http://www.math.utah.edu/docs/info/stabs_11.html#SEC48
    const auto type = svtoi(match.get<1>().to_view());
    if (type == 68)
    {
        const auto line = svtoi(match.get<2>().to_view());
        this->state.currentSourceRef = { "<stdin>", line };
    }
    else if (type == 100 || type == 132)
    {
        this->state.currentSourceRef = {};
        this->state.previousLabel.clear();
    }
}

void AsmParser::AssemblyTextParser::handleFiledef(const std::string_view line)
{
    const auto opt_file_def = AssemblyTextParserUtils::getFileDef(line);
    if (opt_file_def)
    {
        const auto file_def = opt_file_def.value();
        files[file_def.file_index] = file_def.file_name;
    }
}

void AsmParser::AssemblyTextParser::handleSource(const std::string_view line)
{
    const auto [file_index, line_index] = AsmParser::AssemblyTextParserUtils::getSourceRef(line);
    if (file_index != 0)
    {
        try
        {
            const auto file = files.at(file_index);

            // auto match_stdin = Regexes::stdInLooking(file);
            // if (match_stdin) {
            //     this->state.currentSourceRef.file.clear();
            // } else {
            this->state.currentSourceRef.file = file;
            //}

            this->state.currentSourceRef.line = line_index;
        }
        catch (...)
        {
            this->state.currentSourceRef = {};
        }
    }
}

void AsmParser::AssemblyTextParser::eol()
{
    const std::string_view line = this->state.text;

    if (this->filter.comment_only)
    {
        // todo: this needs to be handled outside of the lines (or with state)
        // Remove any block comments that start and end on a line if we're removing comment-only lines.
        // asmResult = asmResult.replace(blockComments, '');
    }

    // if (line.trim().length() == 0) {}; //return maybeAddBlank();

    if (Regexes::startAppBlock(line) || Regexes::startAsmNesting(line))
    {
        this->state.inCustomAssembly++;
    }
    else if (Regexes::endAppBlock(line) || Regexes::endAsmNesting(line))
    {
        this->state.inCustomAssembly--;
    }

    this->handleFiledef(line);
    this->handleSource(line);
    this->handleStabs(line);
    // handle6502(line);

    // if (source && source.file === null) {
    //     lastOwnSource = source;
    // }

    if (Regexes::endBlock(line) || (this->state.inNvccCode && str_contains(line, '}')))
    {
        this->state.currentSourceRef = {};
        this->state.previousLabel.clear();
        this->state.lastOwnSource = {};
    }

    if (this->filter.library_functions && !this->state.lastOwnSource.line && this->state.currentFilename.empty())
    {
        if (this->state.mayRemovePreviousLabel && this->lines.size() > 0)
        {
            const auto lastLine = this->lines[this->lines.size() - 1];

            if (lastLine.text.empty())
            {
                this->state.keepInlineCode = true;
            }
            else
            {
                const auto labelDef = Regexes::labelDef(lastLine.text);

                if (labelDef)
                {
                    this->lines.pop_back();
                    this->state.keepInlineCode = false;
                    // todo: delete labelDefinitions[labelDef[1]];
                }
                else
                {
                    this->state.keepInlineCode = true;
                }
            }

            this->state.mayRemovePreviousLabel = false;
        }

        if (!this->state.keepInlineCode)
        {
            this->state.text.clear();
            return;
        };
    }
    else
    {
        this->state.mayRemovePreviousLabel = true;
    }


    if (this->filter.comment_only && ((Regexes::commentOnly(line) && !this->state.inNvccCode) ||
                                      (Regexes::commentOnlyNvcc(line) && this->state.inNvccCode)))
    {
        this->state.text.clear();
        return;
    }

    if (this->state.inCustomAssembly > 0)
    {
        // todo: line = this.fixLabelIndentation(line);
    }

    const auto found_label = this->getLabelFromLine(line);
    if (found_label)
    {
        // // It's a label definition.
        // if (!this->label_is_used(found_label.value())) {
        //     // It's an unused label.
        //     if (this->filter.unused_labels) {
        //         this->state.text.clear();
        //         return;
        //     }
        // } else {
        //     // A used label.
        //     this->state.previousLabel = found_label.value();
        //     // todo: labelDefinitions[match[1]] = asm.length + 1;
        // }
    }

    if (this->state.inNvccDef)
    {
        if (Regexes::cudaEndDef(line))
            this->state.inNvccDef = false;
    }
    else if (!found_label && this->filter.directives)
    {
        // Check for directives only if it wasn't a label; the regexp would
        // otherwise misinterpret labels as directives.
        if (Regexes::dataDefn(line) && !this->state.previousLabel.empty())
        {
            // We're defining data that's being used somewhere.
        }
        else
        {
            // .inst generates an opcode, so does not count as a directive
            if (Regexes::directive(line) && !Regexes::instOpcodeRe(line))
            {
                this->state.text.clear();
                return;
            }
        }
    }

    std::string filteredLine{ line };
    filteredLine = AssemblyTextParserUtils::expandTabs(filteredLine);
    // todo: const text = AsmRegex.filterAsmLine(line, filters);

    // todo: const labelsInLine = this.getUsedLabelsInLine(filteredLine);

    this->state.currentLine.is_label = found_label ? true : false;
    this->state.currentLine.text = filteredLine;

    this->state.currentLine.source = this->state.currentSourceRef;

    // if (!this.hasOpcode(line, this->state.inNvccCode))
    // {
    //     this->state.currentLine.source = {};
    // }

    this->lines.push_back(this->state.currentLine);

    this->state.text.clear();
}


void AsmParser::AssemblyTextParser::fromStream(std::istream &in)
{
    char c;

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

        this->state.text += c;
    }
}

void AsmParser::AssemblyTextParser::outputJson(std::ostream &out) const
{
    JsonWriter writer(out, this->lines, this->labels, this->filter);
    writer.write();
}

void AsmParser::AssemblyTextParser::outputText(std::ostream &out) const
{
    for (auto line : this->lines)
    {
        out << line.text << "\n";
    }
}
