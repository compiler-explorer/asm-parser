#pragma once

#include "../types/line.hpp"
#include <optional>
#include <string>
#include <string_view>
#include <vector>

namespace AsmParser
{

struct regexed_sourceref
{
    int file_index;
    int line_index;
    int column;
};

class AssemblyTextParserUtils
{
    public:
    static regexed_sourceref getSourceRef(std::string_view line);
    static std::optional<AsmParser::asm_file_def> getFileDef(std::string_view line);
    static bool is_probably_label(std::string_view line);
    static std::string fixLabelIndentation(std::string_view line);
    static std::string_view getLineWithoutComment(std::string_view line);
    static std::string_view getLineWithoutCommentAndStripFirstWord(std::string_view line);

    static std::string expandTabs(std::string_view line);

    static std::string squashHorizontalWhitespace(std::string_view line, bool atStart = true);
    static std::string squashHorizontalWhitespaceWithQuotes(std::string_view line, bool atStart);

    static std::vector<AsmParser::asm_label_v> getUsedLabelsInLine(std::string_view line);

    static bool hasOpcode(std::string_view line, bool inNvccCode);

    static bool isExampleOrStdin(std::string_view filename);

    static bool isJustComments(std::string_view line);
    static bool isJustNvccComments(std::string_view line);

    static std::optional<AsmParser::asm_stabn> getSourceInfoFromStabs(std::string_view line);
    static std::optional<AsmParser::asm_source_v> get6502DbgInfo(std::string_view line);

    static std::optional<AsmParser::asm_source_f> getD2FileInfo(std::string_view line);
    static std::optional<AsmParser::asm_source_l> getD2LineInfo(std::string_view line);

    static std::optional<std::string_view> getLabel(std::string_view line);
    static std::optional<std::string_view> getAssignmentDef(std::string_view line);
    static std::optional<std::string_view> getLabelAssignment(std::string_view line);
    static std::optional<std::string_view> getCudaLabel(std::string_view line);
    static std::optional<std::string_view> getFunctionTypeDefinedLabel(std::string_view line);
    static std::optional<std::string_view> getWeakDefinedLabel(std::string_view line);
    static std::optional<std::string_view> getGlobalDefinedLabel(std::string_view line);
    static std::optional<std::string_view> getSectionNameDef(std::string_view line);

    static bool startCommentBlock(std::string_view line);
    static bool endCommentBlock(std::string_view line);

    static bool startAppBlock(std::string_view line);
    static bool endAppBlock(std::string_view line);
    static bool startAsmNesting(std::string_view line);
    static bool endAsmNesting(std::string_view line);

    static bool startProcBlock(std::string_view line);
    static bool endBlock(std::string_view line);
    static bool endProcBlock(std::string_view line);

    static bool isCudaEndDef(std::string_view line);
    static bool isDataDefn(std::string_view line);
    static bool isDirective(std::string_view line);
    static bool isInstOpcode(std::string_view line);
};

} // namespace AsmParser
