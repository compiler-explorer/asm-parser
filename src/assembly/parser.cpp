#include "parser.hpp"
#include "../utils/jsonwriter.hpp"
#include "../utils/regexwrappers.hpp"
#include "../utils/utils.hpp"

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

bool AsmParser::AssemblyTextParser::label_is_defined(const std::string_view s) const
{
    return std::any_of(this->labels.begin(), this->labels.end(), [s](auto labelpair) {
        return s == labelpair.first;
    });
}

void AsmParser::AssemblyTextParser::handleStabs(const std::string_view line)
{
    const auto stabs_opt = AssemblyTextParserUtils::getSourceInfoFromStabs(line);
    if (stabs_opt)
    {
        const auto [type, line] = stabs_opt.value();

        // cf http://www.math.utah.edu/docs/info/stabs_11.html#SEC48
        if (type == 68)
        {
            this->state.currentSourceRef = { "<stdin>", line };
        }
        else if (type == 100 || type == 132)
        {
            this->state.currentSourceRef = {};
            this->state.previousLabel.clear();
        }
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
    const auto [file_index, line_index] = AssemblyTextParserUtils::getSourceRef(line);
    if (file_index != 0)
    {
        try
        {
            const auto file = files.at(file_index);

            const auto match_stdin = AssemblyTextParserUtils::isExampleOrStdin(file);
            if (match_stdin)
            {
                this->state.currentSourceRef.is_usercode = true;
                this->state.currentSourceRef.file = file;
            }
            else
            {
                this->state.currentSourceRef.file = file;
            }

            this->state.currentSourceRef.line = line_index;
        }
        catch (...)
        {
            this->state.currentSourceRef = {};
        }
    }
}

std::optional<std::string_view> AsmParser::AssemblyTextParser::getLabelFromLine(const std::string_view line)
{
    auto match_label = AssemblyTextParserUtils::getLabel(line);
    if (match_label)
    {
        return match_label;
    }
    else
    {
        auto match_assign = AssemblyTextParserUtils::getAssignmentDef(line);
        if (match_assign)
        {
            return match_assign;
        }
        else
        {
            auto match_cuda = AssemblyTextParserUtils::getCudaLabel(line);
            if (match_cuda)
            {
                this->state.inNvccDef = true;
                this->state.inNvccCode = true;
                return match_cuda;
            }
            else
            {
                return std::nullopt;
            }
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

    if (AssemblyTextParserUtils::startAppBlock(line) || AssemblyTextParserUtils::startAsmNesting(line))
    {
        this->state.inCustomAssembly++;
    }
    else if (AssemblyTextParserUtils::endAppBlock(line) || AssemblyTextParserUtils::endAsmNesting(line))
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

    if (AssemblyTextParserUtils::endBlock(line) || (this->state.inNvccCode && str_contains(line, '}')))
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
                const auto labelDef = AssemblyTextParserUtils::getLabel(lastLine.text);

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


    if (this->filter.comment_only && ((AssemblyTextParserUtils::isJustComments(line) && !this->state.inNvccCode) ||
                                      (AssemblyTextParserUtils::isJustNvccComments(line) && this->state.inNvccCode)))
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
        // It's a label definition.
        // if (!this->label_is_used(found_label.value()))
        // {
        //     //     // It's an unused label.
        //     //     if (this->filter.unused_labels) {
        //     //         this->state.text.clear();
        //     //         return;
        //     //     }
        // }
        // else
        {
            // A used label.
            this->state.previousLabel = found_label.value();
            this->labels.push_back({ this->state.previousLabel, lines.size() + 1 });
        }
    }

    if (this->state.inNvccDef)
    {
        if (AssemblyTextParserUtils::isCudaEndDef(line))
            this->state.inNvccDef = false;
    }
    else if (!found_label && this->filter.directives)
    {
        // Check for directives only if it wasn't a label; the regexp would
        // otherwise misinterpret labels as directives.
        if (AssemblyTextParserUtils::isDataDefn(line) && !this->state.previousLabel.empty())
        {
            // We're defining data that's being used somewhere.
        }
        else
        {
            // .inst generates an opcode, so does not count as a directive
            if (AssemblyTextParserUtils::isDirective(line) && !AssemblyTextParserUtils::isInstOpcode(line))
            {
                this->state.text.clear();
                return;
            }
        }
    }

    std::string filteredLine{ line };
    filteredLine = AssemblyTextParserUtils::expandTabs(filteredLine);
    // todo: const text = AsmRegex.filterAsmLine(line, filters);

    this->state.currentLine.is_label = found_label ? true : false;
    this->state.currentLine.text = filteredLine;

    if (!this->state.currentLine.is_label)
    {
        this->state.currentLine.labels = AssemblyTextParserUtils::getUsedLabelsInLine(filteredLine);
    }
    else
    {
        this->state.currentLine.labels.clear();
    }

    if (!AssemblyTextParserUtils::hasOpcode(line, this->state.inNvccCode))
    {
        this->state.currentLine.source = {};
    }
    else
    {
        this->state.currentLine.source = this->state.currentSourceRef;
    }

    this->lines.push_back(this->state.currentLine);

    this->state.text.clear();
}

void AsmParser::AssemblyTextParser::filterOutReferedLabelsThatArentDefined()
{
    for (auto &line : this->lines)
    {
        for (auto it = line.labels.begin(); it != line.labels.end();)
        {
            if (!this->label_is_defined(it->name))
            {
                it = line.labels.erase(it);
            }
            else
            {
                ++it;
            }
        }
    }
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

    this->filterOutReferedLabelsThatArentDefined();
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
