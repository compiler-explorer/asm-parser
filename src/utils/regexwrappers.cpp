#include "regexwrappers.hpp"
#include "regexes.hpp"
#include "utils.hpp"
#include <fmt/core.h>

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

static inline void rtrim(std::string &s)
{
    s.erase(std::find_if(s.rbegin(), s.rend(),
                         [](unsigned char ch) {
                             return !std::isspace(ch);
                         })
            .base(),
            s.end());
}

static inline void ltrim(std::string &s)
{
    s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch) {
                return !std::isspace(ch);
            }));
}

std::string_view AsmParser::AssemblyTextParserUtils::getLineWithoutComment(const std::string_view line)
{
    bool spacing = false;
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
            spacing = true;
            lastit = it;
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

std::vector<AsmParser::asm_label> AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine(const std::string_view line)
{
    std::vector<AsmParser::asm_label> labelsInLine;

    const auto filteredLine = AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(line);

    int diffLen = line.length() - filteredLine.length() + 1;

    int startidx = 0;
    for (auto match : ctre::range<R"re(([$.@A-Z_a-z][\dA-Z_a-z]*))re">(filteredLine))
    {
        AsmParser::asm_label label{};
        label.name = std::string(match.get<1>().to_view());

        const auto len = label.name.length();
        const auto loc = filteredLine.find(label.name, startidx);
        startidx += (loc - startidx) + len;

        label.range.start_col = loc + diffLen;
        label.range.end_col = loc + diffLen + ustrlen(label.name);

        labelsInLine.push_back(label);
    }

    return labelsInLine;
}

bool AsmParser::AssemblyTextParserUtils::hasOpcode(const std::string_view line, bool inNvccCode)
{
    // Remove any leading label definition...
    const auto match = Regexes::labelDef(line);
    if (match)
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
        return !!Regexes::hasNvccOpcodeRe(lineWithoutComment);

    return !!Regexes::hasOpcodeRe(lineWithoutComment);
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

    const auto type = svtoi(match.get<1>().to_view());
    if (type == 68)
    {
        const auto line = svtoi(match.get<2>().to_view());

        return asm_stabn{ type, line };
    }
    else
    {
        return asm_stabn{ type, 0 };
    }
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

bool AsmParser::AssemblyTextParserUtils::endBlock(const std::string_view line)
{
    if (Regexes::endBlock(line))
        return true;

    return false;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getLabel(const std::string_view line)
{
    auto match = Regexes::labelDef(line);
    if (match)
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getAssignmentDef(const std::string_view line)
{
    auto match = Regexes::assignmentDef(line);
    if (match)
        return match.get<1>().to_view();

    return std::nullopt;
}

std::optional<std::string_view> AsmParser::AssemblyTextParserUtils::getCudaLabel(const std::string_view line)
{
    auto match = Regexes::cudaBeginDef(line);
    if (match)
        return match.get<1>().to_view();

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
