#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

#include "../assembly/parser.hpp"
#include "../assembly/regexes.hpp"

TEST_CASE("Test some regexes directly", "[regex]")
{
    auto match = AsmParser::Regexes::labelDef("myfunctionlabel:   # with comments");
    CHECK(match);
    REQUIRE(match.get<1>().to_view() == "myfunctionlabel");

    CHECK(AsmParser::Regexes::labelDef(".mydirective:   # with comments"));
    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax   # with comments"));

    CHECK(AsmParser::Regexes::dataDefn(R"(  .string "Hello, world!\n   # with comments")"));

    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax   # with comments"));
}

TEST_CASE("Test text assembly utilities", "[asm]")
{
    const auto [file, line] = AsmParser::AssemblyTextParserUtils::getSourceRef(R"(        .loc 1 351 7)");
    REQUIRE(file == 1);
    REQUIRE(line == 351);

    const auto [file_index, filename] = AsmParser::AssemblyTextParserUtils::getFileDef(
    R"(        .file 2 "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h")");
    REQUIRE(file_index == 2);
    REQUIRE(filename == "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h");
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
