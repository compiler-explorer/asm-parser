#pragma once

#include <ctre.hpp>
#include <string_view>

namespace AsmParser
{

struct Regexes
{
    static constexpr auto labelDef = ctre::search<R"re(^(?:.proc\h+)?([\w$.@]+):)re">;
    static constexpr auto labelFindNonMips = ctre::match<R"re([.A-Z_a-z][\w$.]*)re">;
    static constexpr auto labelFindMips = ctre::match<R"re([$.A-Z_a-z][\w$.]*)re">;
    static constexpr auto mipsLabelDefinition = ctre::match<R"re(^\$[\w$.]+:)re">;

    static constexpr auto dataDefn = ctre::search<R"re(^\h*\.(string|asciz|ascii|[1248]?byte|short|x?word|long|quad|value|zero))re">;
    static constexpr auto fileFind = ctre::match<R"re(^\h*\.file\h+(\d+)\h+"([^"]+)"(\h+"([^"]+)")?.*)re">;
    static constexpr auto hasOpcodeRe = ctre::search<R"re(^\h*[A-Za-z])re">;
    // todo: stop using this static constexpr auto instructionRe = make_matcher<R"re(^\h*[A-Za-z]+)re">;
    static constexpr auto hasNvccOpcodeRe = ctre::match<R"re(^\h*[@A-Za-z\|])re">;
    static constexpr auto definesFunction = ctre::match<R"re(^\h*\.(type.*,\h*[#%@]function|proc\h+[.A-Z_a-z][\w$.]*:.*)$)re">;
    static constexpr auto definesGlobal = ctre::match<R"re(^\h*\.(?:globa?l|GLB|export)\h*([.A-Z_a-z][\w$.]*))re">;
    static constexpr auto definesWeak = ctre::match<R"re(^\h*\.(?:weak|weakext)\h*([.A-Z_a-z][\w$.]*))re">;
    // static constexpr auto indentedLabelDef = make_matcher<R"re(^\h*([$.A-Z_a-z][\w$.]*):)re">;
    static constexpr auto assignmentDef = ctre::match<R"re(^\h*([$.A-Z_a-z][\w$.]+)\h*=)re">;
    static constexpr auto directive = ctre::match<R"re(^\h*\..*$)re">;
    static constexpr auto startAppBlock = ctre::match<R"re(\h*#APP.*)re">;
    static constexpr auto endAppBlock = ctre::match<R"re(\h*#NO_APP.*)re">;
    static constexpr auto startAsmNesting = ctre::match<R"re(\h*# Begin ASM.*)re">;
    static constexpr auto endAsmNesting = ctre::match<R"re(\h*# End ASM.*)re">;
    static constexpr auto cudaBeginDef = ctre::match<R"re(\.(entry|func)\h+(?:\([^)]*\)\h*)?([$.A-Z_a-z][\w$.]*)\($)re">;
    static constexpr auto cudaEndDef = ctre::match<R"re(^\h*\)\h*$)re">;
    // static constexpr auto asmOpcodeRe = make_matcher<R"re(^\h*([\da-f]+):\h*(([\da-f]{2} ?)+)\h*(.*))re">;
    // static constexpr auto lineRe = make_matcher<R"re(^(/[^:]+):(\d+).*)re">;
    // static constexpr auto labelRe = make_matcher<R"re(^([\da-f]+)\h+<([^>]+)>:$)re">;
    // static constexpr auto destRe = make_matcher<R"re(\h([\da-f]+)\h+<([^+>]+)(\+0x[\da-f]+)?>$)re">;
    static constexpr auto commentRe = ctre::search<R"re([#;])re">;
    static constexpr auto instOpcodeRe = ctre::match<R"re((\.inst\.?\w?)\h*(.*))re">;
    // static constexpr auto blockComments = make_matcher<R"re(^[\t ]*/\*(\*(?!/)|[^*])*\*/\h*)re">;
    static constexpr auto commentOnly = ctre::match<R"re(^\h*(((#|@|//).*)|(/\*.*\*/)|(;\s*)|(;[^;].*)|(;;.*\S.*))$)re">;
    static constexpr auto commentOnlyNvcc = ctre::match<R"re(^\h*(((#|;|//).*)|(/\*.*\*/))$)re">;
    static constexpr auto sourceTag = ctre::match<R"re(^\h*\.loc\h+(\d+)\h+(\d+).*)re">;
    // static constexpr auto source6502Dbg = make_matcher<R"re(^\h*\.dbg\h+line,\h*"([^"]+)",\h*(\d+))re">;
    static constexpr auto sourceStab = ctre::search<R"re(^\h*\.stabn\h+(\d+),0,(\d+),.*)re">;
    static constexpr auto stdInLooking = ctre::search<R"re(<stdin>|^-$|example\.[^/]+$|<source>)re">;
    static constexpr auto endBlock = ctre::search<R"re(\.(cfi_endproc|data|text|section))re">;
};


}; // namespace AsmParser
