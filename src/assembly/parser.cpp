#include "parser.hpp"
#include "../utils/jsonwriter.hpp"
#include "../utils/regexwrappers.hpp"
#include "../utils/utils.hpp"

#include <algorithm>
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

bool AsmParser::AssemblyTextParser::handleStabs(const std::string_view line)
{
    const auto stabs_opt = AssemblyTextParserUtils::getSourceInfoFromStabs(line);
    if (stabs_opt)
    {
        const auto [type, iline] = stabs_opt.value();

        // cf http://www.math.utah.edu/docs/info/stabs_11.html#SEC48
        if (type == 68)
        {
            this->state.currentSourceRef =
            asm_source_v{ .file = {}, .file_idx = 0, .line = iline, .column = 0, .is_end = false, .is_usercode = false, .inside_proc = false };
        }
        else if (type == 100 || type == 132)
        {
            this->state.currentSourceRef = {};
            this->state.previousLabel = {};
        }

        return true;
    }

    return false;
}

bool AsmParser::AssemblyTextParser::handleFiledef(const std::string_view line)
{
    const auto opt_file_def = AssemblyTextParserUtils::getFileDef(line);
    if (opt_file_def)
    {
        const auto file_def = opt_file_def.value();
        files[file_def.file_index] = file_def.file_name;

        return true;
    }

    return false;
}

bool AsmParser::AssemblyTextParser::handleSource(const std::string_view line)
{
    const auto [file_index, line_index, column] = AssemblyTextParserUtils::getSourceRef(line);
    if (file_index != 0)
    {
        this->state.hasProcMarkers = true;

        this->state.currentSourceRef.file_idx = file_index;

        this->state.currentSourceRef.line = line_index;
        this->state.currentSourceRef.column = column;
        this->state.currentSourceRef.inside_proc = true;

        this->amendPreviousLinesWith(this->state.currentSourceRef);
        return true;
    }

    return false;
}

std::optional<std::string_view> AsmParser::AssemblyTextParser::getLabelFromLine(const std::string_view line)
{
    auto match_label = AssemblyTextParserUtils::getLabel(line);
    if (match_label)
    {
        return match_label;
    }

    auto match_label_assign = AssemblyTextParserUtils::getLabelAssignment(line);
    if (match_label_assign)
    {
        this->state.currentLine->is_assignment = true;
        return match_label_assign;
    }

    auto match_assign = AssemblyTextParserUtils::getAssignmentDef(line);
    if (match_assign)
    {
        this->state.currentLine->is_assignment = true;
        return match_assign;
    }

    auto match_cuda = AssemblyTextParserUtils::getCudaLabel(line);
    if (match_cuda)
    {
        this->state.inNvccDef = true;
        this->state.inNvccCode = true;
        return match_cuda;
    }

    return std::nullopt;
}

void AsmParser::AssemblyTextParser::maybeAddBlank()
{
    bool lastBlank = lines.size() == 0 || lines[lines.size() - 1]->text.empty();
    if (!lastBlank)
        lines.emplace_back(std::make_unique<asm_line_v>());
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

bool AsmParser::AssemblyTextParser::handleD2(const std::string_view line)
{
    const auto match_line = AssemblyTextParserUtils::getD2LineInfo(line);
    if (match_line)
    {
        const auto line_source = match_line.value();

        const auto match_stdin = AssemblyTextParserUtils::isExampleOrStdin(this->state.currentSourceFile);
        this->state.currentSourceRef = asm_source_v{ .file = this->state.currentSourceFile,
                                                     .file_idx = 0,
                                                     .line = line_source.line,
                                                     .column = 0,
                                                     .is_end = false,
                                                     .is_usercode = match_stdin,
                                                     .inside_proc = false };

        this->amendPreviousLinesWith(this->state.currentSourceRef);
        return true;
    }
    else
    {
        const auto match_file = AssemblyTextParserUtils::getD2FileInfo(line);
        if (match_file)
        {
            const auto file_source = match_file.value();
            this->state.currentSourceFile = file_source.file;
            return true;
        }
    }

    return false;
}

bool AsmParser::AssemblyTextParser::handle6502(const std::string_view line)
{
    const auto match = AssemblyTextParserUtils::get6502DbgInfo(line);
    if (match)
    {
        const auto source = match.value();
        if (!source.is_end)
            this->state.currentSourceRef = asm_source_v{
                .file = source.file, .file_idx = 0, .line = source.line, .column = 0, .is_end = false, .is_usercode = false, .inside_proc = false
            };

        return true;
    }

    return false;
}

bool AsmParser::AssemblyTextParser::handleSection(const std::string_view line)
{
    const auto match = AssemblyTextParserUtils::getSectionNameDef(line);
    if (match)
    {
        this->state.currentSection = match.value();
        return true;
    }

    return false;
}

void AsmParser::AssemblyTextParser::extractUsedLabelsFromDirective(const std::string_view line)
{
    const auto weakDef = AssemblyTextParserUtils::getWeakDefinedLabel(line);
    if (weakDef)
    {
        this->used_labels[weakDef.value()].insert(this->state.previousLabel);
    }
    else
    {
        const auto globalDef = AssemblyTextParserUtils::getGlobalDefinedLabel(line);
        if (globalDef)
        {
            this->usercode_labels.insert(globalDef.value());
            this->used_labels[globalDef.value()].insert(this->state.previousLabel);
        }
    }
}

void AsmParser::AssemblyTextParser::extractUsedLabelsFromOpcodeLine(const std::string_view line)
{
    this->state.currentLine->labels = AssemblyTextParserUtils::getUsedLabelsInLine(line);

    for (auto &label_ref : this->state.currentLine->labels)
    {
        if (label_ref.name != this->state.previousParentLabel)
            this->used_labels[label_ref.name].insert(this->state.previousParentLabel);
    }
}

void AsmParser::AssemblyTextParser::extractUsedLabelsFromDataLine(const std::string_view line)
{
    this->state.currentLine->labels = AssemblyTextParserUtils::getUsedLabelsInLine(line);

    for (auto &label_ref : this->state.currentLine->labels)
    {
        this->data_used_labels[label_ref.name].insert(this->state.previousLabel);
    }
}

void AsmParser::AssemblyTextParser::handleLabelAliasing()
{
    if (!this->state.previousLabelOnSameAddress.empty())
    {
        if (!this->state.currentLine->is_assignment)
        {
            if (this->state.currentLine->is_label)
            {
                this->aliased_labels[this->state.currentLine->label] = this->state.previousLabelOnSameAddress;
            }
            else if (this->state.currentLine->has_opcode || this->state.currentLine->is_data)
            {
                this->state.previousLabelOnSameAddress = {};
            }
        }
        else
        {
            this->state.previousLabelOnSameAddress = {};
        }
    }

    if (this->state.currentLine->is_label && !this->state.currentLine->is_assignment)
    {
        this->state.previousLabelOnSameAddress = this->state.currentLine->label;
    }
}

void AsmParser::AssemblyTextParser::handleLabelDefinition(const std::string_view line)
{
    const auto found_label = this->getLabelFromLine(line);
    if (found_label)
    {
        this->state.currentLine->label = found_label.value();
        this->state.currentLine->is_label = true;
        this->state.currentLine->is_internal_label = this->isInternalLabel(this->state.currentLine->label);

        this->state.previousLabel = this->state.currentLine->label;
        this->labels_defined[this->state.currentLine->label] = lines.size() + 1;

        if (!this->state.currentLine->is_internal_label)
        {
            this->state.previousParentLabel = this->state.currentLine->label;
        }
    }
    else
    {
        this->state.currentLine->is_label = false;
        this->state.currentLine->is_internal_label = false;
    }
}

void AsmParser::AssemblyTextParser::eol()
{
    this->state.currentLine = std::make_unique<asm_line_v>();

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
        bool removeThisLine = false;

        if (!this->state.hasStartedCommentBlock)
        {
            this->state.hasStartedCommentBlock = AssemblyTextParserUtils::startCommentBlock(line);
        }

        if (this->state.hasStartedCommentBlock)
        {
            removeThisLine = true;
            this->state.hasStartedCommentBlock = !AssemblyTextParserUtils::endCommentBlock(line);
        }

        if (removeThisLine)
        {
            this->state.text.clear();
            return;
        }
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

    {
        std::string filteredLine{ line };

        if (this->state.inCustomAssembly > 0)
        {
            filteredLine = AssemblyTextParserUtils::fixLabelIndentation(filteredLine);
        }

        filteredLine = AssemblyTextParserUtils::expandTabs(filteredLine);
        if (this->filter.whitespace)
        {
            filteredLine = AssemblyTextParserUtils::squashHorizontalWhitespaceWithQuotes(filteredLine, true);
        }

        this->state.currentLine->text = std::move(filteredLine);
    }

    if (AssemblyTextParserUtils::startBlock(this->state.currentLine->text) && this->state.currentSourceRef.line == 0)
    {
        this->markPreviousInternalLabelAsInsideProc();
        if (this->filter.directives)
        {
            this->state.text.clear();
            return;
        }
    }

    bool handledSourceDirective = false;

    if (AssemblyTextParserUtils::endBlock(this->state.currentLine->text) ||
        (this->state.inNvccCode && str_contains(this->state.currentLine->text, '}')))
    {
        this->state.currentSourceRef = {};
        this->state.previousLabel = {};
        this->state.lastOwnSource = {};
    }
    else
    {
        handledSourceDirective = this->handleFiledef(this->state.currentLine->text);
        if (!handledSourceDirective)
            handledSourceDirective = this->handleSource(this->state.currentLine->text);
        if (!handledSourceDirective)
            handledSourceDirective = this->handleStabs(this->state.currentLine->text);
        if (!handledSourceDirective)
            handledSourceDirective = this->handle6502(this->state.currentLine->text);
        if (!handledSourceDirective)
            handledSourceDirective = this->handleD2(this->state.currentLine->text);
    }

    if (!handledSourceDirective)
        this->handleSection(this->state.currentLine->text);

    if (this->filter.library_functions && !this->state.lastOwnSource.line && this->state.currentFilename.empty())
    {
        if (this->state.mayRemovePreviousLabel && this->lines.size() > 0)
        {
            if (this->lines[this->lines.size() - 1]->text.empty())
            {
                this->state.keepInlineCode = true;
            }
            else
            {
                if (this->lines[this->lines.size() - 1]->is_label)
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

    if (handledSourceDirective)
    {
        this->state.currentLine->is_data = false;
        this->state.currentLine->is_directive = true;
        this->state.currentLine->is_label = false;
        this->state.currentLine->is_internal_label = false;
    }
    else
    {
        this->handleLabelDefinition(this->state.currentLine->text);

        this->state.currentLine->is_data = AssemblyTextParserUtils::isDataDefn(this->state.currentLine->text);
        this->state.currentLine->is_directive = false;
    }

    if (this->state.inNvccDef)
    {
        if (AssemblyTextParserUtils::isCudaEndDef(this->state.currentLine->text))
            this->state.inNvccDef = false;
    }
    else if (!this->state.currentLine->is_label && !this->state.currentLine->is_data)
    {
        if (!handledSourceDirective)
        {
            this->state.currentLine->is_directive = AssemblyTextParserUtils::isDirective(this->state.currentLine->text);
        }

        // .inst generates an opcode, so does not count as a directive
        if (this->state.currentLine->is_directive && !AssemblyTextParserUtils::isInstOpcode(this->state.currentLine->text))
        {
            this->extractUsedLabelsFromDirective(this->state.currentLine->text);

            if (this->filter.directives)
            {
                this->state.filteredlines.push_back(std::move(this->state.currentLine));
                this->state.text.clear();
                return;
            }
        }
    }

    this->state.currentLine->is_inline_asm = (this->state.inCustomAssembly > 0);

    this->state.currentLine->has_opcode = AssemblyTextParserUtils::hasOpcode(this->state.currentLine->text, this->state.inNvccCode);

    this->state.currentLine->labels.clear();
    if (!this->state.currentLine->is_label && this->state.currentLine->has_opcode)
    {
        this->extractUsedLabelsFromOpcodeLine(this->state.currentLine->text);
    }

    if (!this->state.currentLine->is_label && this->state.currentLine->is_data)
    {
        this->extractUsedLabelsFromDataLine(this->state.currentLine->text);
    }

    if (this->state.currentLine->is_assignment || (this->state.currentLine->label == this->state.previousParentLabel))
    {
        this->state.currentLine->closest_parent_label.clear();
    }
    else
    {
        this->state.currentLine->closest_parent_label = this->state.previousParentLabel;
    }

    this->state.currentLine->source = this->state.currentSourceRef;
    this->state.currentLine->section = this->state.currentSection;

    this->handleLabelAliasing();

    this->lines.push_back(std::move(this->state.currentLine));

    this->state.text.clear();
}

bool AsmParser::AssemblyTextParser::isInternalLabel(const std::string_view label) const
{
    return label.starts_with(".") || label.starts_with("$") || label.starts_with("L");
}

void AsmParser::AssemblyTextParser::amendPreviousLinesWith(const asm_source_v &source)
{
    for (auto it = this->lines.rbegin(); it != this->lines.rend(); it++)
    {
        auto &line = *it;
        if (line->is_label)
        {
            line->source = asm_source_v{ .file = source.file,
                                         .file_idx = source.file_idx,
                                         .line = source.line,
                                         .column = source.column,
                                         .is_end = false,
                                         .is_usercode = source.is_usercode && !line->is_internal_label,
                                         .inside_proc = source.inside_proc };
            if (!line->is_internal_label)
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
        if (line->is_label)
        {
            if (line->is_internal_label)
            {
                line->source.inside_proc = true;
            }
            break;
        }
        else
        {
            break;
        }
    }
}

void AsmParser::AssemblyTextParser::filterOutReferedLabelsThatArentDefined(asm_line_v *line)
{
    for (auto it = line->labels.begin(); it != line->labels.end();)
    {
        const auto label = *it;
        if (!this->labels_defined.contains(label.name))
        {
            it = line->labels.erase(it);
        }
        else
        {
            ++it;
        }
    }
}

bool AsmParser::AssemblyTextParser::isUsedThroughAlias(const std::string_view label) const
{
    const auto aliasfind = this->aliased_labels.find(label);
    if (aliasfind != this->aliased_labels.end())
    {
        return this->isUsed(aliasfind->second, 1);
    }

    return false;
}

bool AsmParser::AssemblyTextParser::isUsed(const std::string_view label, const int depth) const
{
    if (usercode_labels.contains(label))
        return true;

    const auto usedfind = this->used_labels.find(label);
    if (usedfind != this->used_labels.end())
    {
        for (auto &ref : usedfind->second)
        {
            if (ref.empty())
                return true;

            const auto used = this->isUsed(ref, 0);
            if (used)
                return true;
        }
    }

    if (depth > 0)
    {
        const auto weakfind = this->weakly_used_labels.find(label);
        if (weakfind != this->weakly_used_labels.end())
        {
            for (auto &ref : weakfind->second)
            {
                const auto used = this->isUsed(ref, depth - 1);
                if (used)
                    return true;
            }
        }

        const auto datafind = this->data_used_labels.find(label);
        if (datafind != this->data_used_labels.end())
        {
            for (auto &ref : datafind->second)
            {
                const auto used = this->isUsed(ref, depth - 1);
                if (used)
                    return true;
            }
        }
    }

    return false;
}

bool AsmParser::AssemblyTextParser::isDataUsedThroughAlias(const std::string_view label) const
{
    const auto weakfind = this->data_used_labels.find(label);
    if (weakfind != this->data_used_labels.end())
    {
        for (auto &ref : weakfind->second)
        {
            const auto used = this->isUsedThroughAlias(ref);
            if (used)
                return true;
        }
    }

    return false;
}

void AsmParser::AssemblyTextParser::filterNonLabels()
{
    std::erase_if(this->used_labels,
                  [this](auto &label)
                  {
                      return !this->labels_defined.contains(label.first);
                  });

    std::erase_if(this->weakly_used_labels,
                  [this](auto &label)
                  {
                      return !this->labels_defined.contains(label.first);
                  });
}

void AsmParser::AssemblyTextParser::markLabelUsage()
{
    for (auto &label : this->labels_defined)
    {
        auto &line = this->lines[label.second - 1];
        if (this->isUsed(line->label, 1))
        {
            line->is_used = true;
        }
        else if (this->isDataUsedThroughAlias(line->label))
        {
            line->is_used_data_through_alias = true;
        }
        else if (this->isUsedThroughAlias(line->label))
        {
            line->is_used_through_alias = true;
        }
    }
}

void AsmParser::AssemblyTextParser::removeUnused()
{
    bool remove = false;
    bool removeOnlyThis = false;
    bool isUsed = false;
    bool isUsedThroughAlias = false;
    bool isDataUsedThroughAlias = false;

    for (auto it = this->lines.begin(); it != this->lines.end();)
    {
        auto &line = *it;
        removeOnlyThis = false;

        if (line->is_label)
        {
            isUsed = line->is_used;
            isUsedThroughAlias = line->is_used_through_alias;
            isDataUsedThroughAlias = line->is_used_data_through_alias;

            if (this->filter.unused_labels)
            {
                if (remove && isUsed)
                {
                    remove = false;
                }
                else if (!remove && !isUsed)
                {
                    if (isUsedThroughAlias)
                    {
                        removeOnlyThis = true;
                    }
                    else if (isDataUsedThroughAlias)
                    {
                    }
                    else
                    {
                        if (line->is_internal_label)
                        {
                            removeOnlyThis = true;
                        }
                        else if (line->is_inline_asm)
                        {
                            removeOnlyThis = true;
                        }
                        else if (!line->closest_parent_label.empty())
                        {
                            remove = !this->used_labels.contains(line->closest_parent_label);
                            removeOnlyThis = !remove && line->is_internal_label;
                        }
                        else
                        {
                            remove = true;
                        }
                    }
                }
            }
        }

        if (remove || removeOnlyThis ||
            (!isUsed && !isUsedThroughAlias && !isDataUsedThroughAlias && this->filter.compatmode &&
             this->filter.directives && line->is_data))
        {
            // filter this out
            this->state.filteredlines.push_back(std::move(line));
            it = this->lines.erase(it);
        }
        else
        {
            this->filterOutReferedLabelsThatArentDefined(line.get());

            if (line->source.file_idx != 0)
            {
                try
                {
                    const auto file = files.at(line->source.file_idx);

                    const auto match_stdin = AssemblyTextParserUtils::isExampleOrStdin(file);
                    if (match_stdin)
                    {
                        line->source.is_usercode = true;
                        line->source.file = file;
                    }
                    else
                    {
                        line->source.file = file;
                    }
                }
                catch (...)
                {
                    line->source = {};
                }
            }

            ++it;
        }
    }
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

    this->filterNonLabels();
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
        if (line->is_label)
        {
            labels.emplace_back(asm_labelpair{ line->label, line_number });
        }

        line_number++;
    }

    return labels;
}

void AsmParser::AssemblyTextParser::outputDebugJson(std::ostream &out) const
{
    const std::vector<asm_labelpair> labels = this->redetermineLabels();

    DebugJsonWriter writer(out, this->lines, labels, this->filter, this->used_labels, this->weakly_used_labels, this->aliased_labels);
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
    for (auto &line : this->lines)
    {
        out << line->text << "\n";
    }
}
