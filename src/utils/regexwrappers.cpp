#include "regexwrappers.hpp"
#include "regexes.hpp"
#include "utils.hpp"
#include <charconv>
#include <fmt/core.h>

AsmParser::regexed_sourceref AsmParser::AssemblyTextParserUtils::getSourceRef(const std::string_view line)
{
    if (const auto match = AsmParser::Regexes::sourceTag(line))
    {
        const auto file_index = match.get<1>().to_number();
        const auto line_index = match.get<2>().to_number();

        int column = 0;

        const auto matchWithColumn = AsmParser::Regexes::sourceTagWithColumn(line);
        if (matchWithColumn)
        {
            column = matchWithColumn.get<3>().to_number();
        }

        return { file_index, line_index, column };
    }

    return { 0, 0, 0 };
}

std::optional<AsmParser::asm_file_def> AsmParser::AssemblyTextParserUtils::getFileDef(const std::string_view line)
{
    if (const auto match = Regexes::fileFind(line))
    {
        const auto file_index = match.get<1>().to_number();
        const auto file_name = match.get<2>().to_view();

        const auto file_name_rest = match.get<4>().to_view();
        if (!file_name_rest.empty())
        {
            return asm_file_def{ file_index, fmt::format("{}/{}", file_name, file_name_rest) };
        }
        return asm_file_def{ file_index, std::string(file_name) };
    }

    return std::nullopt;
}

std::string AsmParser::AssemblyTextParserUtils::expandTabs(const std::string_view line)
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
            extraChars += spacesNeeded;
            expandedLine += spaces.substr(spacesNeeded);
        }
        else
        {
            expandedLine += c;
        }
    }

    return expandedLine;
}

// static inline void rtrim(std::string &s)
// {
//     s.erase(std::find_if(s.rbegin(), s.rend(),
//                          [](unsigned char ch)
//                          {
//                              return !std::isspace(ch);
//                          })
//             .base(),
//             s.end());
// }

static inline void ltrim(std::string &s)
{
    s.erase(s.begin(), std::find_if(s.begin(), s.end(),
                                    [](unsigned char ch)
                                    {
                                        return !std::isspace(ch);
                                    }));
}

std::string_view AsmParser::AssemblyTextParserUtils::getLineWithoutComment(const std::string_view line)
{
    bool spacing = false;
    bool stillStarting = true;
    auto lastit = line.end();

    for (auto it = line.begin(); it != line.end(); it++)
    {
        auto c = *it;
        if (c == ';' || c == '#')
        {
            if (!spacing)
                lastit = it;
            break;
        }
        else if (spacing)
        {
            if (!is_whitespace(c))
            {
                spacing = false;
            }
        }
        else if (is_whitespace(c))
        {
            if (!stillStarting)
            {
                spacing = true;
                lastit = it;
            }
        }
        else
        {
            stillStarting = false;
        }
    }

    return std::string_view{ line.begin(), lastit };
}

std::string_view AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(const std::string_view line)
{
    bool wordstarted = false;
    bool wordended = false;
    bool spacing = false;
    auto lastit = line.end();
    auto afterfirstword = line.begin();

    for (auto it = line.begin(); it != line.end(); it++)
    {
        auto c = *it;

        if (c == ';' || c == '#')
        {
            auto nextit = it + 1;

            if (nextit != line.end())
            {
                auto nextchar = *nextit;

                // it's only a comment if the ; or # is followed by a whitespace
                if (nextchar != ' ' && nextchar != '\t')
                {
                    continue;
                }
            }

            if (!spacing)
                lastit = it;
            break;
        }
        else if (!wordstarted && ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')))
        {
            wordstarted = true;
        }
        else if (wordstarted && !wordended && is_whitespace(c))
        {
            wordended = true;
            afterfirstword = it;
        }
        else if (wordended)
        {
            if (spacing)
            {
                if (!is_whitespace(c))
                {
                    lastit = line.end();
                    spacing = false;
                }
            }
            else if (is_whitespace(c))
            {
                spacing = true;
                lastit = it;
            }
        }
    }

    return std::string_view{ afterfirstword, lastit };
}

bool AsmParser::AssemblyTextParserUtils::is_probably_label(const std::string_view line)
{
    const auto filtered = getLineWithoutComment(line);

    return (filtered.ends_with(":"));
}

std::string AsmParser::AssemblyTextParserUtils::fixLabelIndentation(const std::string_view line)
{
    std::string filtered{ line };
    if (is_probably_label(line))
        ltrim(filtered);

    return filtered;
}

std::vector<AsmParser::asm_label_v> AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine(const std::string_view line)
{
    std::vector<AsmParser::asm_label_v> labelsInLine;

    const auto filteredLine = AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(line);

    if (filteredLine.find('\"') != std::string_view::npos)
    {
        return labelsInLine;
    }

    int diffLen = line.length() - filteredLine.length() + 1;

    int startidx = 0;
    for (auto match : ctre::range<R"re(([$%]?)([.@A-Z_a-z][.\dA-Z_a-z]*))re">(filteredLine))
    {
        AsmParser::asm_label_v label{};
        label.name = match.get<2>().to_view();

        const auto len = label.name.length();
        const auto loc = filteredLine.find(label.name, startidx);
        startidx += (loc - startidx) + len;

        label.range.start_col = loc + diffLen;
        label.range.end_col = loc + diffLen + ustrlen(label.name);

        labelsInLine.push_back(label);

        auto prefix = match.get<1>().to_view();
        if (!prefix.empty())
        {
            AsmParser::asm_label_v labelWithPrefix = label;
            labelWithPrefix.name = std::string_view(prefix.begin(), label.name.end());
            labelWithPrefix.range.start_col--;

            labelsInLine.push_back(labelWithPrefix);
        }
    }

    return labelsInLine;
}

bool AsmParser::AssemblyTextParserUtils::hasOpcode(const std::string_view line, bool inNvccCode)
{
    // Remove any leading label definition...
    if (const auto match = Regexes::labelDef(line))
    {
        // todo
        // line = line.substr(match[0].length);
    }

    // Strip any comments
    const auto lineWithoutComment = getLineWithoutComment(line);

    // .inst generates an opcode, so also counts
    if (Regexes::instOpcodeRe(lineWithoutComment))
        return true;

    // Detect assignment, that's not an opcode...
    if (Regexes::assignmentDef(lineWithoutComment))
        return false;

    if (inNvccCode)
        return Regexes::hasNvccOpcodeRe(lineWithoutComment);

    return Regexes::hasOpcodeRe(lineWithoutComment);
}

bool AsmParser::AssemblyTextParserUtils::isExampleOrStdin(const std::string_view filename)
{
    if (Regexes::stdInLooking(filename))
        return true;

    return false;
}

std::optional<AsmParser::asm_stabn> AsmParser::AssemblyTextParserUtils::getSourceInfoFromStabs(const std::string_view line)
{
    const auto match = Regexes::sourceStab(line);
    if (!match)
        return std::nullopt;

    const auto type = match.get<1>().to_number();
    if (type == 68)
    {
        const auto line_num = match.get<2>().to_number();

        return asm_stabn{ type, line_num };
    }
    else
    {
        return asm_stabn{ type, 0 };
    }
}

std::optional<AsmParser::asm_source_v> AsmParser::AssemblyTextParserUtils::get6502DbgInfo(const std::string_view line)
{
    if (const auto match = Regexes::source6502Dbg(line))
    {
        const auto file = match.get<1>().to_view();
        const auto iline = match.get<2>().to_number();

        // todo check if stdin?
        return asm_source_v{
            .file = file, .file_idx = 0, .line = iline, .column = 0, .is_end = false, .is_usercode = false, .inside_proc = false
        };
    }

    if (const auto matchend = Regexes::source6502DbgEnd(line))
    {
        return asm_source_v{ .file = {}, .file_idx = 0, .line = 0, .column = 0, .is_end = true, .is_usercode = false, .inside_proc = false };
    }

    return std::nullopt;
}

std::optional<AsmParser::asm_source_l> AsmParser::AssemblyTextParserUtils::getD2LineInfo(const std::string_view line)
{
    if (const auto match = Regexes::sourceD2Tag(line))
    {
        const auto line_num = match.get<1>().to_number();

        return asm_source_l{ .line = line_num };
    }

    return std::nullopt;
}

std::optional<AsmParser::asm_source_f> AsmParser::AssemblyTextParserUtils::getD2FileInfo(const std::string_view line)
{
    if (const auto match = Regexes::sourceD2File(line))
    {
        const auto file = match.get<1>().to_view();

        return asm_source_f{ .file = file };
    }

    return std::nullopt;
}


bool AsmParser::AssemblyTextParserUtils::startCommentBlock(const std::string_view line)
{
    if (Regexes::blockCommentStart(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::endCommentBlock(const std::string_view line)
{
    if (Regexes::blockCommentStop(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::startAppBlock(const std::string_view line)
{
    if (Regexes::startAppBlock(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::endAppBlock(const std::string_view line)
{
    if (Regexes::endAppBlock(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::startAsmNesting(const std::string_view line)
{
    if (Regexes::startAsmNesting(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::endAsmNesting(const std::string_view line)
{
    if (Regexes::endAsmNesting(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::startProcBlock(const std::string_view line)
{
    if (Regexes::startProcBlock(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::endBlock(const std::string_view line)
{
    if (Regexes::endBlock(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::endProcBlock(const std::string_view line)
{
    if (Regexes::endProcBlock(line))
        return true;

    return false;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getLabel(const std::string_view line)
{
    if (const auto match = Regexes::labelDef(line))
    {
        return match.get<1>().to_view();
    }

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getLabelFromObjdumpLabel(std::string_view line)
{
    if (line.starts_with("<") && line.ends_with(">:"))
    {
        return std::string_view{ line.begin() + 1, line.end() - 2 };
    }

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getLabelAssignment(const std::string_view line)
{
    if (const auto matchAssign = Regexes::labelAssignmentDef(line))
    {
        return matchAssign.get<1>().to_view();
    }

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getAssignmentDef(const std::string_view line)
{
    if (const auto match = Regexes::assignmentDef(line))
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getCudaLabel(const std::string_view line)
{
    if (const auto match = Regexes::cudaBeginDef(line))
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getFunctionTypeDefinedLabel(const std::string_view line)
{
    if (const auto match = Regexes::definesFunctionOrObject(line))
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getWeakDefinedLabel(const std::string_view line)
{
    if (const auto match = Regexes::definesWeak(line))
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getGlobalDefinedLabel(const std::string_view line)
{
    if (const auto match = Regexes::definesGlobal(line))
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getSectionNameDef(const std::string_view line)
{
    if (const auto match = Regexes::sectionDef(line))
    {
        if (match.get<1>().to_view() == "section")
        {
            return match.get<2>().to_view();
        }
        return match.get<1>().to_view();
    }

    return std::nullopt;
}

bool AsmParser::AssemblyTextParserUtils::isJustComments(const std::string_view line)
{
    if (Regexes::commentOnly(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::isJustNvccComments(const std::string_view line)
{
    if (Regexes::commentOnlyNvcc(line))
        return true;

    return false;
}


bool AsmParser::AssemblyTextParserUtils::isCudaEndDef(const std::string_view line)
{
    if (Regexes::cudaEndDef(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::isDataDefn(const std::string_view line)
{
    if (Regexes::dataDefn(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::isDirective(const std::string_view line)
{
    if (Regexes::directive(line))
        return true;

    return false;
}

bool AsmParser::AssemblyTextParserUtils::isInstOpcode(const std::string_view line)
{
    if (Regexes::instOpcodeRe(line))
        return true;

    return false;
}

std::string AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace(const std::string_view line, bool atStart)
{
    std::string squashed;
    squashed.reserve(line.length());

    enum class HorSpaceState
    {
        Start,
        Second,
        Stop,
        JustOne
    } state;

    if (atStart)
    {
        state = HorSpaceState::Start;
    }
    else
    {
        state = HorSpaceState::JustOne;
    }

    bool justspaces = true;

    for (const auto c : line)
    {
        if (state == HorSpaceState::Stop)
        {
            if (is_whitespace(c))
            {
                // ignore
            }
            else
            {
                state = HorSpaceState::JustOne;
                squashed += c;
                justspaces = false;
            }
        }
        else if (state == HorSpaceState::JustOne)
        {
            if (is_whitespace(c))
            {
                state = HorSpaceState::Stop;
                squashed += ' ';
            }
            else
            {
                squashed += c;
                justspaces = false;
            }
        }
        else if (state == HorSpaceState::Start)
        {
            if (is_whitespace(c))
            {
                state = HorSpaceState::Second;
                squashed += ' ';
            }
            else
            {
                state = HorSpaceState::Stop;
                squashed += c;
                justspaces = false;
            }
        }
        else if (state == HorSpaceState::Second)
        {
            if (is_whitespace(c))
            {
                squashed += ' ';
            }
            else
            {
                squashed += c;
                justspaces = false;
            }
            state = HorSpaceState::Stop;
        }
    }

    if (atStart && justspaces)
    {
        squashed.clear();
    }

    return squashed;
}

std::string AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespaceWithQuotes(const std::string_view line, bool atStart)
{
    if (const auto quotes = Regexes::findQuotes(line))
    {
        return fmt::format("{}{}{}", squashHorizontalWhitespaceWithQuotes(quotes.get<1>().to_view(), atStart),
                           quotes.get<2>().to_view(), squashHorizontalWhitespaceWithQuotes(quotes.get<3>().to_view(), false));
    }

    return squashHorizontalWhitespace(line);
}
