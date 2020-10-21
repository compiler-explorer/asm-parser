#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/parser.hpp"
#include <iosfwd>
#include <optional>
#include <string_view>
#include <unordered_map>

namespace AsmParser
{

class AssemblyTextParserState
{
    public:
    bool stopParsing{};

    bool mayRemovePreviousLabel{ true };
    bool keepInlineCode{};
    asm_source lastOwnSource{};

    bool inNvccDef{};
    bool inNvccCode{};
    int inCustomAssembly{ 0 };

    asm_label currentLabelReference{};
    asm_source currentSourceRef{};
    std::string previousLabel;
    std::string text;
    std::string currentFilename;
    std::string currentSection;
    asm_line currentLine{};
};

class AssemblyTextParserUtils
{
    public:
    static std::pair<int, int> getSourceRef(const std::string_view line);
    static std::optional<AsmParser::asm_file_def> getFileDef(const std::string_view line);
    static std::string expandTabs(const std::string line);
    static std::string getLineWithoutComment(const std::string_view line);
    static std::string getLineWithoutCommentAndStripFirstWord(const std::string_view line);
    static std::vector<AsmParser::asm_label> getUsedLabelsInLine(const std::string_view line);
    static bool hasOpcode(const std::string_view line, bool inNvccCode);
};

class AssemblyTextParser : public IParser
{
    private:
    const Filter filter;
    AssemblyTextParserState state{};

    std::unordered_map<int, std::string> files;
    std::vector<asm_line> lines;
    std::vector<asm_labelpair> labels;

    bool label_is_used(const std::string_view s) const;
    std::optional<std::string_view> getLabelFromLine(const std::string_view line);

    void handleStabs(const std::string_view line);
    void handleSource(const std::string_view line);
    void handleFiledef(const std::string_view line);

    void eol();

    public:
    AssemblyTextParser(const Filter filter);

    void fromStream(std::istream &in) override;

    void outputJson(std::ostream &out) const override;
    void outputText(std::ostream &out) const override;
};

}; // namespace AsmParser
