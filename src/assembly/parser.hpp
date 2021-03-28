#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/parser.hpp"
#include <iosfwd>
#include <optional>
#include <string_view>
#include <unordered_map>
#include <unordered_set>

namespace AsmParser
{

class AssemblyTextParserState
{
    public:
    bool stopParsing{};
    bool hasProcMarkers{};

    bool mayRemovePreviousLabel{ true };
    bool keepInlineCode{};
    asm_source lastOwnSource{};

    bool inNvccDef{};
    bool inNvccCode{};
    int inCustomAssembly{ 0 };

    asm_label currentLabelReference{};
    asm_source currentSourceRef{};
    std::string previousLabel;
    std::string previousParentLabel;
    std::string previousLabelOnSameAddress;
    std::string text;
    std::string currentFilename;
    std::string currentSection;
    asm_line currentLine{};
};

class AssemblyTextParser : public IParser
{
    private:
    const Filter filter;
    AssemblyTextParserState state{};

    std::unordered_map<int, std::string> files;
    std::vector<asm_line> lines;
    std::unordered_map<std::string, int32_t> labels_defined;
    std::unordered_set<std::string> used_labels;
    std::unordered_map<std::string, std::unordered_set<std::string>> weakly_used_labels;
    std::unordered_map<std::string, std::string> aliased_labels;

    bool label_is_defined(const std::string_view s) const;
    std::optional<std::string_view> getLabelFromLine(const std::string_view line);

    void handleStabs(const std::string_view line);
    void handleSource(const std::string_view line);
    void handleFiledef(const std::string_view line);
    void handle6502(const std::string_view line);
    void handleSection(const std::string_view line);

    void eol();

    bool isInternalLabel(const std::string_view label) const;
    bool isEmptyOrJustWhitespace(const std::string_view line) const;
    void maybeAddBlank();
    void amendPreviousLinesWith(const asm_source &source);
    void markPreviousInternalLabelAsInsideProc();
    bool isUsedThroughAlias(const std::string &label) const;
    bool isUsed(const std::string &label, const int depth) const;

    void filterNonLabels();
    void markLabelUsage();
    void filterOutReferedLabelsThatArentDefined(asm_line &line);
    void removeUnused();

    void extractUsedLabelsFromDirective(const std::string_view line);
    void extractUsedLabelsFromOpcodeLine(const std::string_view line);
    void extractUsedLabelsFromDataLine(const std::string_view line);
    void handleLabelAliasing();
    void handleLabelDefinition(const std::string_view line);

    std::vector<asm_labelpair> redetermineLabels() const;

    public:
    AssemblyTextParser(const Filter filter);

    void fromStream(std::istream &in) override;

    void outputJson(std::ostream &out) const override;
    void outputText(std::ostream &out) const override;

    void outputDebugJson(std::ostream &out) const override;
};

}; // namespace AsmParser
