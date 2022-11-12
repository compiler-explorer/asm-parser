#pragma once

#include <ctre.hpp>
#include <string_view>

namespace AsmParser
{

struct Regexes
{
    static constexpr auto labelDef = ctre::search<R"re(^(?:.proc\h+)?([\w$.@]+):)re">;
    static constexpr auto labelAssignmentDef = ctre::search<R"re(^([\.$\w][\w\d]*)\h+=)re">;
    static constexpr auto labelFindNonMips = ctre::match<R"re([.A-Z_a-z][\w$.]*)re">;
    static constexpr auto labelFindMips = ctre::match<R"re([$.A-Z_a-z][\w$.]*)re">;
    static constexpr auto mipsLabelDefinition = ctre::match<R"re(^\$[\w$.]+:)re">;

    static constexpr auto dataDefn = ctre::search<R"re(^\h*\.(string|asciz|ascii|[1248]?byte|short|half|[dx]?word|long|quad|value|zero))re">;
    static constexpr auto fileFind = ctre::match<R"re(^\h*\.file\h+(\d+)\h+"([^"]+)"(\h+"([^"]+)")?.*)re">;
    static constexpr auto hasOpcodeRe = ctre::search<R"re(^\h*[A-Za-z])re">;
    // todo: stop using this static constexpr auto instructionRe = make_matcher<R"re(^\h*[A-Za-z]+)re">;
    static constexpr auto hasNvccOpcodeRe = ctre::match<R"re(^\h*[@A-Za-z\|])re">;
    static constexpr auto definesFunction = ctre::match<R"re(^\h*\.(type.*,\h*[#%@]function|proc\h+[.A-Z_a-z][\w$.]*:.*)$)re">;
    static constexpr auto definesFunctionOrObject = ctre::search<R"re(\.type\h*([a-z_A-Z0-9]*),\h*@?(function|object|proc))re">;
    static constexpr auto definesGlobal = ctre::search<R"re(^\h*\.(?:globa?l|GLB|export)\h*([.A-Z_a-z][\w$.]*))re">;
    static constexpr auto definesWeak = ctre::search<R"re(^\h*\.(?:weakext|weak)\h*([.A-Z_a-z][\w$.]*))re">;
    // static constexpr auto indentedLabelDef = make_matcher<R"re(^\h*([$.A-Z_a-z][\w$.]*):)re">;
    static constexpr auto assignmentDef = ctre::match<R"re(^\h*([$.A-Z_a-z][\w$.]+)\h*=)re">;
    static constexpr auto directive = ctre::match<R"re(^\h*\..*$)re">;
    static constexpr auto startAppBlock = ctre::match<R"re(\h*#APP.*)re">;
    static constexpr auto endAppBlock = ctre::match<R"re(\h*#NO_APP.*)re">;
    static constexpr auto startAsmNesting = ctre::match<R"re(\h*# Begin ASM.*)re">;
    static constexpr auto endAsmNesting = ctre::match<R"re(\h*# End ASM.*)re">;
    static constexpr auto cudaBeginDef = ctre::search<R"re(\.(entry|func)\h+(?:\([^)]*\)\h*)?([$.A-Z_a-z][\w$.]*)\($)re">;
    static constexpr auto cudaEndDef = ctre::match<R"re(^\h*\)\h*$)re">;
    // static constexpr auto asmOpcodeRe = make_matcher<R"re(^\h*([\da-f]+):\h*(([\da-f]{2} ?)+)\h*(.*))re">;
    // static constexpr auto lineRe = make_matcher<R"re(^(/[^:]+):(\d+).*)re">;
    // static constexpr auto labelRe = make_matcher<R"re(^([\da-f]+)\h+<([^>]+)>:$)re">;
    // static constexpr auto destRe = make_matcher<R"re(\h([\da-f]+)\h+<([^+>]+)(\+0x[\da-f]+)?>$)re">;
    static constexpr auto commentRe = ctre::search<R"re([#;])re">;
    static constexpr auto instOpcodeRe = ctre::search<R"re((\.inst\.?\w?)\h*(.*))re">;
    static constexpr auto blockCommentStart = ctre::search<R"re(^\h*/\*)re">;
    static constexpr auto blockCommentStop = ctre::search<R"re(\*/)re">;
    static constexpr auto commentOnly = ctre::match<R"re(^\h*(((#|@|//).*)|(/\*.*\*/)|(;\s*)|(;[^;].*)|(;;.*\S.*))$)re">;
    static constexpr auto commentOnlyNvcc = ctre::match<R"re(^\h*(((#|;|//).*)|(/\*.*\*/))$)re">;
    static constexpr auto sourceTag = ctre::match<R"re(^\h*\.loc\h+(\d+)\h+(\d+).*)re">;
    static constexpr auto sourceTagWithColumn = ctre::match<R"re(^\h*\.loc\h+(\d+)\h+(\d+)\h+(\d+).*)re">;
    static constexpr auto source6502Dbg = ctre::match<R"re(^\h*\.dbg\h+line,\h*"([^"]+)",\h*(\d+))re">;
    static constexpr auto source6502DbgEnd = ctre::search<R"re(^\h*\.dbg\h+line)re">;
    static constexpr auto sourceStab = ctre::search<R"re(^\h*\.stabn\h+(\d+),0,(\d+),.*)re">;
    static constexpr auto sourceD2Tag = ctre::match<R"re(^\h*\.d2line\h+(\d+),?\h*(\d*).*)re">;
    static constexpr auto sourceD2File = ctre::match<R"re(^\h*\.d2file\h+"(.*)")re">;
    static constexpr auto stdInLooking = ctre::search<R"re(<stdin>|^-$|example\.[^/]+$|<source>)re">;
    static constexpr auto startProcBlock = ctre::search<R"re(\.cfi_startproc)re">;
    static constexpr auto endBlock = ctre::search<R"re(\.(cfi_endproc|data|text|section))re">;
    static constexpr auto endProcBlock = ctre::search<R"re(\.cfi_endproc)re">;

    static constexpr auto sectionDef = ctre::search<R"re(\.(data|text|section)\h*"?([.a-zA-Z0-9\-]*)"?)re">;

    static constexpr auto findQuotes = ctre::search<R"re((.*?)("(?:[^"\\]|\\.)*")(.*))re">;

    static constexpr auto binaryIgnoreFunction =
    ctre::search<R"re(^(__.*|_(init|start|fini)|(de)?register_tm_clones|call_gmon_start|frame_dummy|\.plt.*|_dl_relocate_static_pie)$)re">;
};


} // namespace AsmParser
