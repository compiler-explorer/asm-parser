#pragma once

#include "../types/line.hpp"
#include <optional>
#include <string>
#include <string_view>
#include <vector>

namespace AsmParser
{

class AssemblyTextParserUtils
{
    public:
    static std::pair<int, int> getSourceRef(const std::string_view line);
    static std::optional<AsmParser::asm_file_def> getFileDef(const std::string_view line);
    static std::string expandTabs(const std::string line);
    static bool is_probably_label(const std::string line);
    static std::string fixLabelIndentation(const std::string line);
    static std::string getLineWithoutComment(const std::string_view line);
    static std::string getLineWithoutCommentAndStripFirstWord(const std::string_view line);
    static std::vector<AsmParser::asm_label> getUsedLabelsInLine(const std::string_view line);
    static bool hasOpcode(const std::string_view line, bool inNvccCode);

    static bool isExampleOrStdin(const std::string_view filename);

    static bool isJustComments(const std::string_view line);
    static bool isJustNvccComments(const std::string_view line);

    static std::optional<AsmParser::asm_stabn> getSourceInfoFromStabs(const std::string_view line);

    static std::optional<std::string_view> getLabel(const std::string_view line);
    static std::optional<std::string_view> getAssignmentDef(const std::string_view line);
    static std::optional<std::string_view> getCudaLabel(const std::string_view line);

    static bool startAppBlock(const std::string_view line);
    static bool endAppBlock(const std::string_view line);
    static bool startAsmNesting(const std::string_view line);
    static bool endAsmNesting(const std::string_view line);

    static bool endBlock(const std::string_view line);

    static bool isCudaEndDef(const std::string_view line);
    static bool isDataDefn(const std::string_view line);
    static bool isDirective(const std::string_view line);
    static bool isInstOpcode(const std::string_view line);
};

}; // namespace AsmParser