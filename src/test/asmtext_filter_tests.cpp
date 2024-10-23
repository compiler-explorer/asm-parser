#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

auto directoryDisposer = ApprovalTests::Approvals::useApprovalsSubdirectory("../../resources");

#include "../objdump/parser.hpp"
#include "../types/filter.hpp"
#include <filesystem>
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

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/example.asm";
    }
    else
    {
        asmpath = "../../resources/example.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputText(ss);

    ApprovalTests::Approvals::verify(ss.str());
}

TEST_CASE("gcc12_bin_fmt_O2_flto")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/gcc12_bin_fmt_O2_flto.asm";
    }
    else
    {
        asmpath = "../../resources/gcc12_bin_fmt_O2_flto.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputText(ss);

    ApprovalTests::Approvals::verify(ss.str());
}

TEST_CASE("gcc12_sort_object_reloc")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = false;
    filter.library_functions = false;
    filter.unused_labels = false;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/gcc12_sort_object_reloc.asm";
    }
    else
    {
        asmpath = "../../resources/gcc12_sort_object_reloc.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
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

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/example_intel.asm";
    }
    else
    {
        asmpath = "../../resources/example_intel.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputText(ss);

    ApprovalTests::Approvals::verify(ss.str());
}

TEST_CASE("ce-bug-3963")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/ce-bug-3963.asm";
    }
    else
    {
        asmpath = "../../resources/ce-bug-3963.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    parser.setReproducible();

    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputJson(ss);

    ApprovalTests::Approvals::verify(ss.str());
}

TEST_CASE("ce-bug-7000")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/ce-bug-7000.asm";
    }
    else
    {
        asmpath = "../../resources/ce-bug-7000.asm";
    }

    AsmParser::ObjDumpParser parser(filter);
    parser.setReproducible();

    std::fstream fs;
    fs.open(asmpath, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    parser.fromStream(fs);

    std::stringstream ss;
    parser.outputJson(ss);

    ApprovalTests::Approvals::verify(ss.str());
}
