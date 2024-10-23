#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/parser.hpp"
#include "../utils/library_detection.hpp"
#include <iosfwd>
#include <string_view>
#include <unordered_map>

namespace AsmParser
{

class ObjDumpParserState
{
    public:
    bool inComment{};
    bool inSomethingWithALabel{};
    bool hasPrefixingWhitespace{};
    bool inAddress{};
    bool inLabel{};
    bool inOpcodes{};
    bool inSectionStart{};
    bool inSectionName{};
    bool inSourceRef{};
    bool inSourceRefLineNumber{};
    bool inRelocation{};
    bool skipRestOfTheLine{};
    bool stopParsing{};
    bool ignoreUntilNextLabel{};
    bool checkNextFileForLibraryCode{};

    asm_label currentLabelReference{};
    asm_source currentSourceRef{};
    std::string previousLabel;
    std::string text;
    std::string currentFilename;
    std::string currentSection;
    asm_line currentLine{};

    void commonReset();
};

class ObjDumpParser : public IParser
{
    private:
    const Filter filter;
    ObjDumpParserState state{};
    LibraryDetection lib_detection;
    std::vector<asm_line> lines;
    std::vector<asm_labelpair_t> labels;

    bool reproducible;

    // todo: bad names
    void actually_address();
    void actually_filename();
    void do_file_check(std::string_view filename);
    void undo_last_line_if_label();

    void updateSourceRefLineNumber();
    bool shouldIgnoreFunction(std::string_view name) const;
    void eol();
    void address();
    void opcodes();
    void label();
    void labelref();

    public:
    explicit ObjDumpParser(const Filter &filter);

    void setReproducible() override;

    void fromStream(std::istream &in) override;

    void outputJson(std::ostream &out) const override;
    void outputText(std::ostream &out) const override;

    void outputDebugJson(std::ostream &out) const override;
};

} // namespace AsmParser
