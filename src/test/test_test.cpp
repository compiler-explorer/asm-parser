#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

#include "../utils/regexwrappers.hpp"

TEST_CASE("Test text assembly utilities", "[asm]")
{
    const auto [file, line] = AsmParser::AssemblyTextParserUtils::getSourceRef(R"(        .loc 1 351 7)");
    REQUIRE(file == 1);
    REQUIRE(line == 351);

    const auto file_def = AsmParser::AssemblyTextParserUtils::getFileDef(
    R"(        .file 2 "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h")");
    REQUIRE(file_def.value().file_index == 2);
    REQUIRE(file_def.value().file_name == "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h");

    const auto endproc = AsmParser::AssemblyTextParserUtils::endBlock("\t.cfi_endproc");
    CHECK(endproc);

    const auto indentedLabel = AsmParser::AssemblyTextParserUtils::getLineWithoutComment("\tlabel:");
    REQUIRE(indentedLabel == "\tlabel:");
}

TEST_CASE("Clang-style file directive", "[asm]")
{
    const auto file_def = AsmParser::AssemblyTextParserUtils::getFileDef(R"(        .file 1 "/dir/src" "filename.cpp")");
    REQUIRE(file_def.value().file_index == 1);
    REQUIRE(file_def.value().file_name == "/dir/src/filename.cpp");
}

TEST_CASE("expandTabs", "[strings]")
{
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("no tabs in here") == ("no tabs in here"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("0\t1234567A") == ("0       1234567A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("01\t234567A") == ("01      234567A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("012\t34567A") == ("012     34567A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("0123\t4567A") == ("0123    4567A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("01234\t567A") == ("01234   567A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("012345\t67A") == ("012345  67A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("0123456\t7A") == ("0123456 7A"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("01234567\tA") == ("01234567        A"));

    REQUIRE(AsmParser::AssemblyTextParserUtils::expandTabs("\tpush\trbp") == ("        push    rbp"));
}

TEST_CASE("line filters", "[asm]")
{
    const auto filteredLine1 = AsmParser::AssemblyTextParserUtils::getLineWithoutComment("   mov eax, [_mylabel+8]  ");
    REQUIRE(filteredLine1 == "   mov eax, [_mylabel+8]");

    const auto filteredLine2 = AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(
    "   mov eax, [_mylabel+8]  # some comment");
    REQUIRE(filteredLine2 == " eax, [_mylabel+8]");


    const auto line1 =
    AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord("   mov eax, ptr [_mylabel+8]");
    REQUIRE(line1 == " eax, ptr [_mylabel+8]");

    const auto line2 = AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(
    "   mov eax, ptr [_mylabel+8]     # comment");
    REQUIRE(line2 == " eax, ptr [_mylabel+8]");

    const auto line3 = AsmParser::AssemblyTextParserUtils::getLineWithoutComment("_label123:  # comment");
    REQUIRE(line3 == "_label123:");

    const auto line4 = AsmParser::AssemblyTextParserUtils::getLineWithoutComment("_label123:");
    REQUIRE(line4 == "_label123:");

    const auto line5 =
    AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord("   mov eax, ptr #notacomment");
    REQUIRE(line5 == " eax, ptr #notacomment");

    const auto line6 =
    AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord("        movl    $.L.str, %edi");
    REQUIRE(line6 == "    $.L.str, %edi");
}

TEST_CASE("potential label spotting", "[asm]")
{
    const auto labels =
    AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("  mov ptr eax, <_somelabel+8>  # my comments");
    REQUIRE(labels.size() == 3);
    REQUIRE(labels[2].name == "_somelabel");

    const auto jbe = AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        jbe     .LBB0_3");
    REQUIRE(jbe.size() == 1);
    REQUIRE(jbe[0].name == ".LBB0_3");
    REQUIRE(jbe[0].range.start_col == 17);
    REQUIRE(jbe[0].range.end_col == 24);

    const auto movlower = AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        movw    r1, #:lower16:.LC0");
    REQUIRE(movlower.size() == 3);
    REQUIRE(movlower[0].name == "r1");
    REQUIRE(movlower[1].name == "lower16");
    REQUIRE(movlower[2].name == ".LC0");

    const auto movldollarlabel =
    AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        movl    $.L.str, %edi");
    REQUIRE(movldollarlabel.size() == 4);
    REQUIRE(movldollarlabel[0].name == ".L.str");
    REQUIRE(movldollarlabel[1].name == "$.L.str");
    REQUIRE(movldollarlabel[2].name == "edi");
    REQUIRE(movldollarlabel[3].name == "%edi");

    const auto bltid = AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        bltid   r18,$L2");
    REQUIRE(bltid.size() == 3);
    REQUIRE(bltid[0].name == "r18");
    REQUIRE(bltid[1].name == "L2");
    REQUIRE(bltid[2].name == "$L2");

    const auto morelabels =
    AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        movsd   xmm0, qword ptr [rsi + 8*rax]");
    REQUIRE(morelabels.size() == 5);

    REQUIRE(morelabels[0].name == "xmm0");
    REQUIRE(morelabels[0].range.start_col == 17);
    REQUIRE(morelabels[0].range.end_col == 21);

    REQUIRE(morelabels[1].name == "qword");
    REQUIRE(morelabels[1].range.start_col == 23);
    REQUIRE(morelabels[1].range.end_col == 28);

    REQUIRE(morelabels[2].name == "ptr");
    REQUIRE(morelabels[2].range.start_col == 29);
    REQUIRE(morelabels[2].range.end_col == 32);

    REQUIRE(morelabels[3].name == "rsi");
    REQUIRE(morelabels[3].range.start_col == 34);
    REQUIRE(morelabels[3].range.end_col == 37);

    REQUIRE(morelabels[4].name == "rax");
    REQUIRE(morelabels[4].range.start_col == 42);
    REQUIRE(morelabels[4].range.end_col == 45);

    const auto quoted = AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine(R"( .ascii  \"Hello world\\000\")");
    REQUIRE(quoted.size() == 0);
}

TEST_CASE("squashes horizontal whitespace", "[strings]")
{
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("") == "");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace(" ") == "");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("    ") == "");

    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace(" abc") == " abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("   abc") == "  abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("       abc") == "  abc");

    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("abc abc") == "abc abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("abc   abc") == "abc abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("abc     abc") == "abc abc");

    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace(" abc  abc") == " abc abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("  abc abc") == "  abc abc");

    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("  abc     abc") == "  abc abc");
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespace("    abc   abc") == "  abc abc");
}

TEST_CASE("squashes horizontal whitespace with quotes", "[strings]")
{
    REQUIRE(AsmParser::AssemblyTextParserUtils::squashHorizontalWhitespaceWithQuotes(R"(  .string   "   abc  etc"   # hello   "  wor  ld")",
                                                                                     true) ==
            R"(  .string "   abc  etc"  # hello "  wor  ld")");
}

TEST_CASE("Data definitions", "[asm]")
{
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(  .string   "   abc  etc"   # hello   "  wor  ld")"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(        .ascii  "Hello world\000")"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(        .ascii  "moo\012\000")"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(        .4byte  0x37d)"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(        .byte   0x2)"));
    REQUIRE(AsmParser::AssemblyTextParserUtils::isDataDefn(R"(        .asciz   "Hello world")"));
}

TEST_CASE("Labels", "[asm]")
{
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel("hello:") == "hello");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel(".LC0:") == ".LC0");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel("_Z12testFunctionPii:") == "_Z12testFunctionPii");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel("_ZNSt9bad_allocC2Ev:") == "_ZNSt9bad_allocC2Ev");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel("..___tag_value_main.2:") == "..___tag_value_main.2");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel("$Ltext0:") == "$Ltext0");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabel(
            "_ZN95_$LT$example..Bla$LT$$u27$a$GT$$u20$as$u20$core..convert..Into$LT$alloc..string..String$GT$$GT$"
            "4into17h38301ffbb2e8fb47E:") == "_ZN95_$LT$example..Bla$LT$$u27$a$GT$$u20$as$u20$core..convert..Into$LT$"
                                             "alloc..string..String$GT$$GT$4into17h38301ffbb2e8fb47E");
    REQUIRE(AsmParser::AssemblyTextParserUtils::getLabelAssignment(".Lset0 = .Lpubnames_end1-.Lpubnames_begin1") ==
            ".Lset0");
}

TEST_CASE("6502 debugging", "[asm]")
{
    const auto match1 = AsmParser::AssemblyTextParserUtils::get6502DbgInfo(R"(	.dbg	line, "/tmp/test.c", 2)");
    REQUIRE(match1.value().file == "/tmp/test.c");
    REQUIRE(match1.value().line == 2);

    const auto match2 = AsmParser::AssemblyTextParserUtils::get6502DbgInfo(R"(	.dbg	line)");
    REQUIRE(match2.value().is_end);
    REQUIRE(match2.value().file.empty());
    REQUIRE(match2.value().line == 0);
}

TEST_CASE("instruction directives", "[asm]")
{
    const auto match = AsmParser::AssemblyTextParserUtils::isInstOpcode("        .inst.n 0xdefe");
    REQUIRE(match == true);
}