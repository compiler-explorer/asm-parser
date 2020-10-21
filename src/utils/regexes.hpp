#pragma once

#include <ctre.hpp>
#include <string_view>

namespace AsmParser
{

struct Regexes
{
    static constexpr auto labelDef = ctre::search<R"re(^(?:.proc\s+)?([\w$.@]+):)re">;
    static constexpr auto labelFindNonMips = ctre::match<R"re([.A-Z_a-z][\w$.]*)re">;
    static constexpr auto labelFindMips = ctre::match<R"re([$.A-Z_a-z][\w$.]*)re">;
    static constexpr auto mipsLabelDefinition = ctre::match<R"re(^\$[\w$.]+:)re">;

    static constexpr auto dataDefn = ctre::search<R"re(^\s*\.(string|asciz|ascii|[1248]?byte|short|x?word|long|quad|value|zero))re">;
    static constexpr auto fileFind = ctre::match<R"re(^\s*\.file\s+(\d+)\s+"([^"]+)"(\s+"([^"]+)")?.*)re">;
    static constexpr auto hasOpcodeRe = ctre::search<R"re(^\s*[A-Za-z])re">;
    // todo: stop using this static constexpr auto instructionRe = make_matcher<R"re(^\s*[A-Za-z]+)re">;
    static constexpr auto hasNvccOpcodeRe = ctre::match<R"re(^\s*[@A-Za-z\|])re">;
    static constexpr auto definesFunction = ctre::match<R"re(^\s*\.(type.*,\s*[#%@]function|proc\s+[.A-Z_a-z][\w$.]*:.*)$)re">;
    static constexpr auto definesGlobal = ctre::match<R"re(^\s*\.(?:globa?l|GLB|export)\s*([.A-Z_a-z][\w$.]*))re">;
    static constexpr auto definesWeak = ctre::match<R"re(^\s*\.(?:weak|weakext)\s*([.A-Z_a-z][\w$.]*))re">;
    // static constexpr auto indentedLabelDef = make_matcher<R"re(^\s*([$.A-Z_a-z][\w$.]*):)re">;
    static constexpr auto assignmentDef = ctre::match<R"re(^\s*([$.A-Z_a-z][\w$.]+)\s*=)re">;
    static constexpr auto directive = ctre::match<R"re(^\s*\..*$)re">;
    static constexpr auto startAppBlock = ctre::match<R"re(\s*#APP.*)re">;
    static constexpr auto endAppBlock = ctre::match<R"re(\s*#NO_APP.*)re">;
    static constexpr auto startAsmNesting = ctre::match<R"re(\s*# Begin ASM.*)re">;
    static constexpr auto endAsmNesting = ctre::match<R"re(\s*# End ASM.*)re">;
    static constexpr auto cudaBeginDef = ctre::match<R"re(\.(entry|func)\s+(?:\([^)]*\)\s*)?([$.A-Z_a-z][\w$.]*)\($)re">;
    static constexpr auto cudaEndDef = ctre::match<R"re(^\s*\)\s*$)re">;
    // static constexpr auto asmOpcodeRe = make_matcher<R"re(^\s*([\da-f]+):\s*(([\da-f]{2} ?)+)\s*(.*))re">;
    // static constexpr auto lineRe = make_matcher<R"re(^(/[^:]+):(\d+).*)re">;
    // static constexpr auto labelRe = make_matcher<R"re(^([\da-f]+)\s+<([^>]+)>:$)re">;
    // static constexpr auto destRe = make_matcher<R"re(\s([\da-f]+)\s+<([^+>]+)(\+0x[\da-f]+)?>$)re">;
    static constexpr auto commentRe = ctre::search<R"re([#;])re">;
    static constexpr auto instOpcodeRe = ctre::match<R"re((\.inst\.?\w?)\s*(.*))re">;
    // static constexpr auto blockComments = make_matcher<R"re(^[\t ]*/\*(\*(?!/)|[^*])*\*/\s*)re">;
    static constexpr auto commentOnly = ctre::match<R"re(^\s*(((#|@|//).*)|(/\*.*\*/)|(;\s*)|(;[^;].*)|(;;.*\S.*))$)re">;
    static constexpr auto commentOnlyNvcc = ctre::match<R"re(^\s*(((#|;|//).*)|(/\*.*\*/))$)re">;
    static constexpr auto sourceTag = ctre::match<R"re(^\s*\.loc\s+(\d+)\s+(\d+).*)re">;
    // static constexpr auto source6502Dbg = make_matcher<R"re(^\s*\.dbg\s+line,\s*"([^"]+)",\s*(\d+))re">;
    static constexpr auto sourceStab = ctre::search<R"re(^\s*\.stabn\s+(\d+),0,(\d+),.*)re">;
    static constexpr auto stdInLooking = ctre::search<R"re(<stdin>|^-$|example\.[^/]+$|<source>)re">;
    static constexpr auto endBlock = ctre::match<R"re(\.(cfi_endproc|data|text|section))re">;
};


}; // namespace AsmParser
