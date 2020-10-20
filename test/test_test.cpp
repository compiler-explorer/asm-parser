#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

#include "../src/assembly/regexes.hpp"

TEST_CASE("Test some regexes directly", "[regex]") {
    CHECK(AsmParser::Regexes::labelDef("myfunctionlabel:"));
    CHECK(AsmParser::Regexes::labelDef(".mydirective:"));
    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax"));

    // todo: this should work, but doesn't, why not?
    // CHECK(AsmParser::Regexes::dataDefn(R"(  .string "Hello, world!\n")"));

    CHECK(!AsmParser::Regexes::labelDef("  mov eax, eax"));

    CHECK(AsmParser::Regexes::fileFind(R"(        .file 1 "/opt/compiler-explorer/gcc-10.2.0/include/c++/10.2.0/bits/char_traits.h")"));
    CHECK(AsmParser::Regexes::sourceTag(R"(        .loc 1 351 7)"));
}
