#pragma once

#include "../types/filter.hpp"
#include "../types/line.hpp"
#include "../types/parser.hpp"
#include "../utils/library_detection.hpp"
#include <functional>
#include <iosfwd>
#include <string>
#include <string_view>
#include <unordered_map>
#include <unordered_set>

namespace AsmParser
{

struct TransparentStringHash
{
    using is_transparent = void;
    std::size_t operator()(std::string_view sv) const noexcept
    {
        return std::hash<std::string_view>{}(sv);
    }
};

class ObjDumpParserState
{
    public:
    bool inComment{};
    bool afterSpacedHash{};
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

    size_t total_lines{};
    bool lastFunctionHasUserCode{};

    using NameSet = std::unordered_set<std::string, TransparentStringHash, std::equal_to<>>;

    // A function that binaryIgnoreFunction hides unless a function we show calls or jumps to it. Whether that happens
    // isn't known until the whole of the output has been read, as the caller can come after the callee, so the lines
    // are parsed anyway and the functions nothing shown referred to are removed at the end. Shown code has priority:
    // the lines of these functions don't count towards the limit while parsing, and at the end the last of the
    // referenced ones are removed until the output fits, before any shown code is truncated.
    struct HiddenFunction
    {
        std::string name;
        std::size_t start; // index in lines of the label
        std::size_t end; // one past the last line, or npos while it is still being parsed
        bool hadUserCode; // lastFunctionHasUserCode as it was before the function started
    };

    // Only direct references from shown lines that end up in the output count: following them transitively would pull
    // in all of stdio from a call to printf.
    NameSet hiddenReferenceTargets;
    std::vector<HiddenFunction> hiddenFunctions;
    // The lines held for hiddenFunctions, referenced or not, are capped at maxLines so that the output of a binary with
    // a lot of hidden code can't use unbounded memory. Once the cap is reached a hidden function that is still being
    // parsed is dropped and later ones aren't stored at all, the same as when nothing refers to them. At most maxLines
    // of them could be shown anyway, and the later ones are the first to go.
    std::size_t hiddenLines{};
    bool truncated{};

    // todo: bad names
    void actually_address();
    void actually_filename();
    void do_file_check(std::string_view filename);
    void undo_last_line_if_label();
    bool may_remove_last_function() const;
    void maybe_remove_last_function();
    void updateSourceRefLineNumber();
    bool inHiddenFunction() const;
    void startHiddenFunction(const std::string &name);
    void endHiddenFunction();
    void abandonHiddenFunction();
    void finishParsing();
    std::vector<bool> chooseHiddenFunctionsToKeep() const;
    void removeHiddenFunctions(const std::vector<bool> &keep);
    void removeReferencesToRemovedHiddenFunctions();
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
