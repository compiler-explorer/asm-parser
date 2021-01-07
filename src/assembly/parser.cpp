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

void AsmParser::AssemblyTextParser::handleStabs(const std::string_view line)
{
    const auto stabs_opt = AssemblyTextParserUtils::getSourceInfoFromStabs(line);
    if (stabs_opt)
    {
        const auto [type, line] = stabs_opt.value();

        // cf http://www.math.utah.edu/docs/info/stabs_11.html#SEC48
        if (type == 68)
        {
            this->state.currentSourceRef = asm_source{ .file = "<stdin>", .line = line };
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

            this->state.hasProcMarkers = true;

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
            this->state.currentSourceRef.inside_proc = true;

            this->amendPreviousLinesWith(this->state.currentSourceRef);
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

void AsmParser::AssemblyTextParser::markLabelOnLineAsUsed(const std::string_view label, const std::string_view line)
{
    asm_label label_ref;

    label_ref.name = label;
    label_ref.range.start_col = line.find(label) + 1;
    label_ref.range.end_col = label_ref.range.start_col + ustrlen(label_ref.name);

    labels_used.insert(label_ref.name);
}

void AsmParser::AssemblyTextParser::maybeAddBlank()
{
    bool lastBlank = lines.size() == 0 || lines[lines.size() - 1].text.empty();
    if (!lastBlank)
        lines.emplace_back(asm_line{});
}

bool AsmParser::AssemblyTextParser::isEmptyOrJustWhitespace(const std::string_view line) const
{
    if (line.empty())
        return true;

    for (auto c : line)
    {
        if (!is_whitespace(c))
            return false;
    }

    return true;
}

/*
// todo
        function handle6502(line) {
            const match = line.match(source6502Dbg);
            if (match) {
                const file = match[1];
                const sourceLine = parseInt(match[2]);
                source = {
                    file: !file.match(stdInLooking) ? file : null,
                    line: sourceLine,
                };
            } else if (line.match(source6502DbgEnd)) {
                source = null;
            }
        }
*/

void AsmParser::AssemblyTextParser::handle6502(const std::string_view line)
{
    if (line.empty())
    {
        // hello
    }
}

void AsmParser::AssemblyTextParser::handleSection(const std::string_view line)
{
    auto match = AssemblyTextParserUtils::getSectionNameDef(line);
    if (match)
    {
        this->state.currentSection = match.value();
    }
}

void AsmParser::AssemblyTextParser::eol()
{
    // if (this->lines.size() == 5000)
    // {
    //     asm_line truncated = {};
    //     truncated.text = "[truncated; too many lines]";
    //     this->lines.push_back(truncated);
    //     this->state.stopParsing = true;
    //     return;
    // }

    const std::string_view line = this->state.text;

    if (this->filter.comment_only)
    {
        // todo: this needs to be handled outside of the lines (or with state)
        // Remove any block comments that start and end on a line if we're removing comment-only lines.
        // asmResult = asmResult.replace(blockComments, '');
    }

    if (isEmptyOrJustWhitespace(line))
    {
        maybeAddBlank();
        return;
    }

    if (AssemblyTextParserUtils::startAppBlock(line) || AssemblyTextParserUtils::startAsmNesting(line))
    {
        this->state.inCustomAssembly++;
    }
    else if (AssemblyTextParserUtils::endAppBlock(line) || AssemblyTextParserUtils::endAsmNesting(line))
    {
        this->state.inCustomAssembly--;
    }

    // if (source && source.file === null) {
    //     lastOwnSource = source;
    // }

    if (AssemblyTextParserUtils::startBlock(line) && this->state.currentSourceRef.line == 0)
    {
        this->markPreviousInternalLabelAsInsideProc();
        if (this->filter.directives)
        {
            this->state.text.clear();
            return;
        }
    }

    if (AssemblyTextParserUtils::endBlock(line) || (this->state.inNvccCode && str_contains(line, '}')))
    {
        this->state.currentSourceRef = {};
        this->state.previousLabel.clear();
        this->state.lastOwnSource = {};
    }
    else
    {
        this->handleFiledef(line);
        this->handleSource(line);
        this->handleStabs(line);
        // handle6502(line);
    }

    this->handleSection(line);

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
                if (lastLine.is_label)
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

    std::string filteredLine{ line };

    if (this->state.inCustomAssembly > 0)
    {
        filteredLine = AssemblyTextParserUtils::fixLabelIndentation(filteredLine);
    }

    bool probablyALabel = false;

    const auto found_label = this->getLabelFromLine(filteredLine);
    if (found_label)
    {
        probablyALabel = true;

        const auto label = std::string(found_label.value());
        this->state.currentLine.label = label;
        this->state.previousLabel = label;
        this->labels_defined[label] = lines.size() + 1;

        if (!label.starts_with('.'))
        {
            this->state.previousParentLabel = label;
        }
    }

    bool isDataDef = AssemblyTextParserUtils::isDataDefn(line);

    if (this->state.inNvccDef)
    {
        if (AssemblyTextParserUtils::isCudaEndDef(line))
            this->state.inNvccDef = false;
    }
    else if (!probablyALabel && this->filter.directives && !isDataDef)
    {
        // .inst generates an opcode, so does not count as a directive
        if (AssemblyTextParserUtils::isDirective(line) && !AssemblyTextParserUtils::isInstOpcode(line))
        {
            const auto weakDef = AssemblyTextParserUtils::getWeakDefinedLabel(filteredLine);
            if (weakDef)
            {
                markLabelOnLineAsUsed(weakDef.value(), filteredLine);
            }
            else
            {
                const auto globalDef = AssemblyTextParserUtils::getGlobalDefinedLabel(filteredLine);
                if (globalDef)
                {
                    markLabelOnLineAsUsed(globalDef.value(), filteredLine);
                }
            }

            this->state.text.clear();
            return;
        }
    }

    filteredLine = AssemblyTextParserUtils::expandTabs(filteredLine);
    if (this->filter.whitespace)
    {
        filteredLine = AssemblyTextParserUtils::squashHorizontalWhitespaceWithQuotes(filteredLine, true);
    }

    this->state.currentLine.is_label = probablyALabel;

    if (probablyALabel)
    {
        this->state.currentLine.is_internal_label = isInternalLabel(this->state.currentLine.label);
    }
    else
    {
        this->state.currentLine.is_internal_label = false;
    }

    this->state.currentLine.text = filteredLine;
    this->state.currentLine.is_data = isDataDef;
    this->state.currentLine.is_inline_asm = (this->state.inCustomAssembly > 0);

    const auto hasOpcode = AssemblyTextParserUtils::hasOpcode(filteredLine, this->state.inNvccCode);

    if (!this->state.currentLine.is_label)
    {
        this->state.currentLine.label.clear();
        if (hasOpcode)
        {
            this->state.currentLine.labels = AssemblyTextParserUtils::getUsedLabelsInLine(filteredLine);

            for (auto &label_ref : this->state.currentLine.labels)
                labels_used.insert(label_ref.name);
        }
        else if (isDataDef)
        {
            this->state.currentLine.labels.clear();
            // todo: mark the labels in here as weakly linked (e.g. " .quad .L441")

            // this->state.currentLine.labels = AssemblyTextParserUtils::getUsedLabelsInLine(filteredLine);

            // for (auto &label_ref : this->state.currentLine.labels)
            //     labels_used.insert(label_ref.name);
        }
        else
        {
            this->state.currentLine.labels.clear();
        }
    }
    else
    {
        this->state.currentLine.labels.clear();
    }

    if (this->state.currentLine.label == this->state.previousParentLabel)
    {
        this->state.currentLine.closest_parent_label.clear();
    }
    else
    {
        this->state.currentLine.closest_parent_label = this->state.previousParentLabel;
    }

    this->state.currentLine.source = this->state.currentSourceRef;
    this->state.currentLine.section = this->state.currentSection;

    this->lines.push_back(this->state.currentLine);

    this->state.text.clear();
}

bool AsmParser::AssemblyTextParser::isInternalLabel(const std::string_view label) const
{
    return label.starts_with(".") || label.starts_with("$");
}

void AsmParser::AssemblyTextParser::amendPreviousLinesWith(const asm_source &source)
{
    for (auto it = this->lines.rbegin(); it != this->lines.rend(); it++)
    {
        auto &line = *it;
        if (line.is_label)
        {
            line.source = asm_source{ .file = source.file,
                                      .line = source.line,
                                      .is_usercode = source.is_usercode && !line.is_internal_label,
                                      .inside_proc = source.inside_proc };
            if (!line.is_internal_label)
            {
                break;
            }
        }
        else
        {
            break;
        }
    }
}

void AsmParser::AssemblyTextParser::markPreviousInternalLabelAsInsideProc()
{
    for (auto it = this->lines.rbegin(); it != this->lines.rend(); it++)
    {
        auto &line = *it;
        if (line.is_label)
        {
            if (line.is_internal_label)
            {
                line.source.inside_proc = true;
            }
            break;
        }
        else
        {
            break;
        }
    }
}

void AsmParser::AssemblyTextParser::filterOutReferedLabelsThatArentDefined(asm_line &line)
{
    for (auto it = line.labels.begin(); it != line.labels.end();)
    {
        if (!this->labels_defined.contains(it->name))
        {
            it = line.labels.erase(it);
        }
        else
        {
            ++it;
        }
    }
}

bool AsmParser::AssemblyTextParser::determineUsage(const asm_line &lineWithLabel) const
{
    return this->labels_used.contains(lineWithLabel.label);
}

void AsmParser::AssemblyTextParser::markLabelUsage()
{
    for (auto &label : this->labels_defined)
    {
        auto &line = this->lines[label.second - 1];
        if (this->determineUsage(line))
        {
            line.is_used = true;
        }
    }
}

void AsmParser::AssemblyTextParser::removeUnused()
{
    std::vector<asm_line> rebuild;
    rebuild.reserve(this->lines.size());

    bool remove = false;
    bool removeOnlyThis = false;
    bool isUsed = false;

    for (auto it = this->lines.begin(); it != this->lines.end();)
    {
        auto &line = *it;
        removeOnlyThis = false;

        if (line.is_label)
        {
            isUsed = line.is_used || line.source.is_usercode;

            if (this->filter.unused_labels)
            {
                if (remove && isUsed)
                {
                    remove = false;
                }
                else if (!remove && !isUsed)
                {
                    if ((this->state.hasProcMarkers && line.source.inside_proc) && line.is_internal_label)
                    {
                        removeOnlyThis = true;
                    }
                    else if (line.is_inline_asm)
                    {
                        removeOnlyThis = true;
                    }
                    else if (!this->state.hasProcMarkers && !line.closest_parent_label.empty())
                    {
                        remove = !this->labels_used.contains(line.closest_parent_label);
                        removeOnlyThis = !remove && line.is_internal_label;
                    }
                    else
                    {
                        remove = true;
                    }
                }
            }
        }

        if (remove || removeOnlyThis || (!isUsed && this->filter.compatmode && this->filter.directives && line.is_data))
        {
            // filter this out
        }
        else
        {
            this->filterOutReferedLabelsThatArentDefined(line);

            rebuild.push_back(line);
        }

        ++it;
    }

    this->lines = rebuild;
}

void AsmParser::AssemblyTextParser::fromStream(std::istream &in)
{
    char c;

    this->state.text.reserve(1024);

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

    if (!this->state.text.empty())
    {
        // if last line wasn't terminated; still parse
        this->eol();
    }

    this->markLabelUsage();
    this->removeUnused();
}

std::vector<AsmParser::asm_labelpair> AsmParser::AssemblyTextParser::redetermineLabels() const
{
    std::vector<AsmParser::asm_labelpair> labels;
    labels.reserve(this->lines.size());

    int line_number = 1;
    for (auto &line : this->lines)
    {
        if (line.is_label)
        {
            labels.emplace_back(asm_labelpair{ line.label, line_number });
        }

        line_number++;
    }

    return labels;
}

void AsmParser::AssemblyTextParser::outputDebugJson(std::ostream &out) const
{
    const std::vector<asm_labelpair> labels = this->redetermineLabels();

    DebugJsonWriter writer(out, this->lines, labels, this->filter);
    writer.write();
}

void AsmParser::AssemblyTextParser::outputJson(std::ostream &out) const
{
    const std::vector<asm_labelpair> labels = this->redetermineLabels();

    JsonWriter writer(out, this->lines, labels, this->filter);
    writer.write();
}

void AsmParser::AssemblyTextParser::outputText(std::ostream &out) const
{
    for (auto line : this->lines)
    {
        out << line.text << "\n";
    }
}
