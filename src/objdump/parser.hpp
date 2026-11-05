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
    // are parsed anyway and removed at the end if nothing referred to them. Their lines don't count towards the limit.
    struct ProvisionalFunction
    {
        std::size_t start; // index in lines of the label
        std::size_t end; // one past the last line, or npos while it is still being parsed
        bool kept;
    };

    // Only direct references from shown functions count: following them transitively would pull in all of stdio from a
    // call to printf.
    NameSet referencedHiddenFunctions;
    // every hidden function something referred to, whether or not that counted
    NameSet hiddenReferenceTargets;
    std::vector<ProvisionalFunction> provisionalFunctions;
    std::unordered_multimap<std::string, std::size_t, TransparentStringHash, std::equal_to<>> provisionalByName;
    std::size_t provisionalLines{};
    // false for a function that is only here because something referred to it
    bool currentFunctionIsShown{ true };
    bool truncated{};

    // todo: bad names
    void actually_address();
    void actually_filename();
    void do_file_check(std::string_view filename);
    void undo_last_line_if_label();
    bool may_remove_last_function() const;
    void maybe_remove_last_function();
    void updateSourceRefLineNumber();
    bool inProvisionalFunction() const;
    void startProvisionalFunction(const std::string &name);
    void endProvisionalFunction();
    void dropProvisionalFunction();
    void noteHiddenReference(std::string_view name);
    void finishParsing();
    void removeUnreferencedHiddenFunctions();
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
