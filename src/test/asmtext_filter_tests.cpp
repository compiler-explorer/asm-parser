#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

auto directoryDisposer = ApprovalTests::Approvals::useApprovalsSubdirectory("../../resources");

#include "../objdump/parser.hpp"
#include "../types/filter.hpp"
#include <iostream>

TEST_CASE("HelloApprovals")
{
    ApprovalTests::Approvals::verify("Hello Approvals");
}

TEST_CASE("filter_example")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open("../resources/example.asm", std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputText(ss);

    ApprovalTests::Approvals::verify(ss.str());
}

TEST_CASE("filter_example_intel")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open("../resources/example_intel.asm", std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputText(ss);

    ApprovalTests::Approvals::verify(ss.str());
}
