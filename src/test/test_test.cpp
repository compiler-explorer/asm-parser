#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

#include "../assembly/parser.hpp"
#include "../assembly/regexes.hpp"

TEST_CASE("Test some regexes directly", "[regex]")
{
    CHECK(AsmParser::Regexes::labelDef("myfunctionlabel:"));
    CHECK(AsmParser::Regexes::labelDef(".mydirective:"));
    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax"));

    CHECK(AsmParser::Regexes::dataDefn(R"(  .string "Hello, world!\n")"));

    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax"));

    const auto fileMatch =
    AsmParser::Regexes::fileFind(R"(        .file 1 "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h")");
    CHECK(fileMatch);
    REQUIRE(fileMatch.get<1>().to_view() == "1");
    REQUIRE(fileMatch.get<2>().to_view() == "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h");

    const auto sourceMatch = AsmParser::Regexes::sourceTag(R"(        .loc 1 351 7)");
    CHECK(sourceMatch);
    REQUIRE(sourceMatch.get<1>().to_view() == "1");
    REQUIRE(sourceMatch.get<2>().to_view() == "351");
}

TEST_CASE("Test text assembly utilities", "[asm]")
{
    const auto [file, line] = AsmParser::AssemblyTextParserUtils::getSourceRefMatch(R"(        .loc 1 351 7)");

    REQUIRE(file == 1);
    REQUIRE(line == 351);
}
