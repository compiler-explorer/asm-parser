#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

#include "../assembly/parser.hpp"
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
}

TEST_CASE("line filters", "[asm]")
{
    const auto filteredLine1 = AsmParser::AssemblyTextParserUtils::getLineWithoutComment("   mov eax, [_mylabel+8]  ");
    REQUIRE(filteredLine1 == "   mov eax, [_mylabel+8]  ");

    const auto filteredLine2 = AsmParser::AssemblyTextParserUtils::getLineWithoutCommentAndStripFirstWord(
    "   mov eax, [_mylabel+8]  # some comment");
    REQUIRE(filteredLine2 == " eax, [_mylabel+8]  ");
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
    REQUIRE(jbe[0].range.end_col == 23);

    const auto morelabels =
    AsmParser::AssemblyTextParserUtils::getUsedLabelsInLine("        movsd   xmm0, qword ptr [rsi + 8*rax]");
    REQUIRE(morelabels.size() == 5);

    REQUIRE(morelabels[0].name == "xmm0");
    REQUIRE(morelabels[0].range.start_col == 17);
    REQUIRE(morelabels[0].range.end_col == 20);

    REQUIRE(morelabels[1].name == "qword");
    REQUIRE(morelabels[1].range.start_col == 23);
    REQUIRE(morelabels[1].range.end_col == 27);

    REQUIRE(morelabels[2].name == "ptr");
    REQUIRE(morelabels[2].range.start_col == 29);
    REQUIRE(morelabels[2].range.end_col == 31);

    REQUIRE(morelabels[3].name == "rsi");
    REQUIRE(morelabels[3].range.start_col == 34);
    REQUIRE(morelabels[3].range.end_col == 36);

    REQUIRE(morelabels[4].name == "rax");
    REQUIRE(morelabels[4].range.start_col == 42);
    REQUIRE(morelabels[4].range.end_col == 44);
}
