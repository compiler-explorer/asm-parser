#pragma once

#include <ctre.hpp>
#include <string_view>

namespace AsmParser
{

template <ctll::fixed_string RE>
constexpr auto make_matcher()
{
    return [](const std::string_view text) {
        return ctre::match<RE>(text);
    };
}

struct Regexes
{
    static constexpr auto labelDef = make_matcher<R"re(^(?:.proc\s+)?([\w$.@]+):)re">();
    static constexpr auto labelFindNonMips = make_matcher<R"re([.A-Z_a-z][\w$.]*)re">();
    static constexpr auto labelFindMips = make_matcher<R"re([$.A-Z_a-z][\w$.]*)re">();
    static constexpr auto mipsLabelDefinition = make_matcher<R"re(^\$[\w$.]+:)re">();
    static constexpr auto dataDefn =
    make_matcher<R"re(^\s*\.(string|asciz|ascii|[1248]?byte|short|x?word|long|quad|value|zero))re">();
    static constexpr auto fileFind = make_matcher<R"re(^\s*\.file\s+(\d+)\s+"([^"]+)"(\s+"([^"]+)")?.*)re">();
    static constexpr auto hasOpcodeRe = make_matcher<R"re(^\s*[A-Za-z])re">();
    static constexpr auto instructionRe = make_matcher<R"re(^\s*[A-Za-z]+)re">();
    static constexpr auto identifierFindRe = make_matcher<R"re([$.@A-Z_a-z][\dA-z]*)re">();
    static constexpr auto hasNvccOpcodeRe = make_matcher<R"re(^\s*[@A-Za-z\|])re">();
    static constexpr auto definesFunction =
    make_matcher<R"re(^\s*\.(type.*,\s*[#%@]function|proc\s+[.A-Z_a-z][\w$.]*:.*)$)re">();
    static constexpr auto definesGlobal = make_matcher<R"re(^\s*\.(?:globa?l|GLB|export)\s*([.A-Z_a-z][\w$.]*))re">();
    static constexpr auto definesWeak = make_matcher<R"re(^\s*\.(?:weak|weakext)\s*([.A-Z_a-z][\w$.]*))re">();
    static constexpr auto indentedLabelDef = make_matcher<R"re(^\s*([$.A-Z_a-z][\w$.]*):)re">();
    static constexpr auto assignmentDef = make_matcher<R"re(^\s*([$.A-Z_a-z][\w$.]+)\s*=)re">();
    static constexpr auto directive = make_matcher<R"re(^\s*\..*$)re">();
    static constexpr auto startAppBlock = make_matcher<R"re(\s*#APP.*)re">();
    static constexpr auto endAppBlock = make_matcher<R"re(\s*#NO_APP.*)re">();
    static constexpr auto startAsmNesting = make_matcher<R"re(\s*# Begin ASM.*)re">();
    static constexpr auto endAsmNesting = make_matcher<R"re(\s*# End ASM.*)re">();
    static constexpr auto cudaBeginDef = make_matcher<R"re(\.(entry|func)\s+(?:\([^)]*\)\s*)?([$.A-Z_a-z][\w$.]*)\($)re">();
    static constexpr auto cudaEndDef = make_matcher<R"re(^\s*\)\s*$)re">();
    static constexpr auto asmOpcodeRe = make_matcher<R"re(^\s*([\da-f]+):\s*(([\da-f]{2} ?)+)\s*(.*))re">();
    static constexpr auto lineRe = make_matcher<R"re(^(/[^:]+):(\d+).*)re">();
    static constexpr auto labelRe = make_matcher<R"re(^([\da-f]+)\s+<([^>]+)>:$)re">();
    static constexpr auto destRe = make_matcher<R"re(\s([\da-f]+)\s+<([^+>]+)(\+0x[\da-f]+)?>$)re">();
    static constexpr auto commentRe = make_matcher<R"re([#;])re">();
    static constexpr auto instOpcodeRe = make_matcher<R"re((\.inst\.?\w?)\s*(.*))re">();
    static constexpr auto blockComments = make_matcher<R"re(^[\t ]*/\*(\*(?!/)|[^*])*\*/\s*)re">();
    static constexpr auto commentOnly = make_matcher<R"re(^\s*(((#|@|//).*)|(/\*.*\*/)|(;\s*)|(;[^;].*)|(;;.*\S.*))$)re">();
    static constexpr auto commentOnlyNvcc = make_matcher<R"re(^\s*(((#|;|//).*)|(/\*.*\*/))$)re">();
    static constexpr auto sourceTag = make_matcher<R"re(^\s*\.loc\s+(\d+)\s+(\d+).*)re">();
    static constexpr auto source6502Dbg = make_matcher<R"re(^\s*\.dbg\s+line,\s*"([^"]+)",\s*(\d+))re">();
    static constexpr auto sourceStab = make_matcher<R"re(^\s*\.stabn\s+(\d+),0,(\d+),.*)re">();
    static constexpr auto stdInLooking = make_matcher<R"re(<stdin>|^-$|example\.[^/]+$|<source>)re">();
    static constexpr auto endBlock = make_matcher<R"re(\.(cfi_endproc|data|text|section))re">();
};


}; // namespace AsmParser
