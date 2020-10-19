#pragma once

#include <ctre.hpp>
#include <string_view>

#define DEF_MATCHER(NAME,REGEX) struct NAME {\
    static auto match(const std::string_view text) {\
        return ctre::match<REGEX>(text);\
    }\
}

DEF_MATCHER(labelDef, "^(?:.proc\\s+)?([\\w$.@]+):");
DEF_MATCHER(labelFindNonMips, "[.A-Z_a-z][\\w$.]*");
DEF_MATCHER(labelFindMips, "[$.A-Z_a-z][\\w$.]*");
DEF_MATCHER(mipsLabelDefinition, "^\\$[\\w$.]+:");
DEF_MATCHER(dataDefn, "^\\s*\\.(string|asciz|ascii|[1248]?byte|short|x?word|long|quad|value|zero)");
DEF_MATCHER(fileFind, "^\\s*\\.file\\s+(\\d+)\\s+\"([^\"]+)\"(\\s+\"([^\"]+)\")?.*");
DEF_MATCHER(hasOpcodeRe, "^\\s*[A-Za-z]");
DEF_MATCHER(instructionRe, "^\\s*[A-Za-z]+");
DEF_MATCHER(identifierFindRe, "[$.@A-Z_a-z][\\dA-z]*");
DEF_MATCHER(hasNvccOpcodeRe, "^\\s*[@A-Za-z\\|]");
DEF_MATCHER(definesFunction, "^\\s*\\.(type.*,\\s*[#%@]function|proc\\s+[.A-Z_a-z][\\w$.]*:.*)$");
DEF_MATCHER(definesGlobal, "^\\s*\\.(?:globa?l|GLB|export)\\s*([.A-Z_a-z][\\w$.]*)");
DEF_MATCHER(definesWeak, "^\\s*\\.(?:weak|weakext)\\s*([.A-Z_a-z][\\w$.]*)");
DEF_MATCHER(indentedLabelDef, "^\\s*([$.A-Z_a-z][\\w$.]*):");
DEF_MATCHER(assignmentDef, "^\\s*([$.A-Z_a-z][\\w$.]+)\\s*=");
DEF_MATCHER(directive, "^\\s*\\..*$");
DEF_MATCHER(startAppBlock, "\\s*#APP.*");
DEF_MATCHER(endAppBlock, "\\s*#NO_APP.*");
DEF_MATCHER(startAsmNesting, "\\s*# Begin ASM.*");
DEF_MATCHER(endAsmNesting, "\\s*# End ASM.*");
DEF_MATCHER(cudaBeginDef, "\\.(entry|func)\\s+(?:\\([^)]*\\)\\s*)?([$.A-Z_a-z][\\w$.]*)\\($");
DEF_MATCHER(cudaEndDef, "^\\s*\\)\\s*$");
DEF_MATCHER(asmOpcodeRe, "^\\s*([\\da-f]+):\\s*(([\\da-f]{2} ?)+)\\s*(.*)");
DEF_MATCHER(lineRe, "^(/[^:]+):(\\d+).*");
DEF_MATCHER(labelRe, "^([\\da-f]+)\\s+<([^>]+)>:$");
DEF_MATCHER(destRe, "\\s([\\da-f]+)\\s+<([^+>]+)(\\+0x[\\da-f]+)?>$");
DEF_MATCHER(commentRe, "[#;]");
DEF_MATCHER(instOpcodeRe, "(\\.inst\\.?\\w?)\\s*(.*)");

DEF_MATCHER(blockComments, "^[\t ]*/\\*(\\*(?!/)|[^*])*\\*/\\s*");

DEF_MATCHER(commentOnly, "^\\s*(((#|@|//).*)|(/\\*.*\\*/)|(;\\s*)|(;[^;].*)|(;;.*\\S.*))$");
DEF_MATCHER(commentOnlyNvcc, "^\\s*(((#|;|//).*)|(/\\*.*\\*/))$");
DEF_MATCHER(sourceTag, "^\\s*\\.loc\\s+(\\d+)\\s+(\\d+).*");
// DEF_MATCHER(source6502Dbg, "^\\s*\\.dbg\\s+line,\\s*\"([^\"]+)\",\\s*(\\d+)");
// DEF_MATCHER(source6502DbgEnd, "^\\s*\\.dbg\\s+line[^,]";
// DEF_MATCHER(sourceStab, "^\\s*\\.stabn\\s+(\\d+),0,(\\d+),.*");
DEF_MATCHER(stdInLooking, "<stdin>|^-$|example\\.[^/]+$|<source>");
DEF_MATCHER(endBlock, "\\.(cfi_endproc|data|text|section)");

