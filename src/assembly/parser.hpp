#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/parser.hpp"
#include <iosfwd>
#include <memory>
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
    bool hasStartedCommentBlock{};

    bool mayRemovePreviousLabel{ true };
    bool keepInlineCode{};
    asm_source_v lastOwnSource{};

    bool inNvccDef{};
    bool inNvccCode{};
    int inCustomAssembly{ 0 };

    asm_label_v currentLabelReference{};
    asm_source_v currentSourceRef{};
    std::string_view previousLabel;
    std::string_view previousParentLabel;
    std::string_view previousLabelOnSameAddress;
    std::string text;
    std::string_view currentFilename;
    std::string_view currentSection;
    std::string_view currentSourceFile;
    std::unique_ptr<asm_line_v> currentLine;

    std::vector<std::unique_ptr<asm_line_v>> filteredlines;
};

class AssemblyTextParser : public IParser
{
    private:
    const Filter filter;
    AssemblyTextParserState state{};

    std::unordered_map<int, std::string> files;
    std::vector<std::unique_ptr<asm_line_v>> lines;
    std::unordered_map<std::string_view, int32_t> labels_defined;
    std::unordered_set<std::string_view> usercode_labels;
    std::unordered_map<std::string_view, std::unordered_set<std::string_view>> used_labels;
    std::unordered_map<std::string_view, std::unordered_set<std::string_view>> data_used_labels;
    std::unordered_map<std::string_view, std::unordered_set<std::string_view>> weakly_used_labels;
    std::unordered_map<std::string_view, std::string_view> aliased_labels;

    bool label_is_defined(const std::string_view s) const;
    std::optional<std::string_view> getLabelFromLine(const std::string_view line);

    bool handleStabs(const std::string_view line);
    bool handleSource(const std::string_view line);
    bool handleFiledef(const std::string_view line);
    bool handle6502(const std::string_view line);
    bool handleD2(const std::string_view line);
    bool handleSection(const std::string_view line);

    void eol();

    bool isInternalLabel(const std::string_view label) const;
    bool isEmptyOrJustWhitespace(const std::string_view line) const;
    void maybeAddBlank();
    void amendPreviousLinesWith(const asm_source_v &source);
    void markPreviousInternalLabelAsInsideProc();
    bool isUsedThroughAlias(const std::string_view label) const;
    bool isDataUsedThroughAlias(const std::string_view label) const;
    bool isUsed(const std::string_view label, const int depth) const;

    void filterNonLabels();
    void markLabelUsage();
    void filterOutReferedLabelsThatArentDefined(asm_line_v *line);
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
