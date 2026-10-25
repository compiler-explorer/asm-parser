#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

auto directoryDisposer = ApprovalTests::Approvals::useApprovalsSubdirectory("../../resources");

#include "../objdump/parser.hpp"
#include "../types/filter.hpp"
#include <algorithm>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <sstream>

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
    filter.library_functions = false;
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

TEST_CASE("ce-bug-4848")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;
    filter.code_only = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/ce-bug-4848.asm";
    }
    else
    {
        asmpath = "../../resources/ce-bug-4848.asm";
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

TEST_CASE("example-llvm-objdump")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/example-llvm-objdump.asm";
    }
    else
    {
        asmpath = "../../resources/example-llvm-objdump.asm";
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

TEST_CASE("ce-bug-8809")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = false;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/ce-bug-8809.asm";
    }
    else
    {
        asmpath = "../../resources/ce-bug-8809.asm";
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

TEST_CASE("ce-bug-2346")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;

    std::string asmpath;
    if (std::filesystem::current_path().string().ends_with("test"))
    {
        asmpath = "../../../resources/ce-bug-2346.asm";
    }
    else
    {
        asmpath = "../../resources/ce-bug-2346.asm";
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

namespace
{
// a function of `nops` instructions that objdump attributes to `file`
std::string objdumpFunction(const std::string &name, const std::string &file, int nops)
{
    std::string dump = "\n0000000000401000 <" + name + ">:\n" + name + "():\n" + file + ":3\n";
    for (int i = 0; i < nops; i++)
        dump += "  401000:\t90                   \tnop\n";
    return dump;
}

std::vector<std::string> outputLines(const AsmParser::ObjDumpParser &parser)
{
    std::stringstream ss;
    parser.outputText(ss);
    std::vector<std::string> lines;
    for (std::string line; std::getline(ss, line);)
        lines.push_back(line);
    return lines;
}
} // namespace

TEST_CASE("line limit for a function kept for its user code")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.library_functions = true;

    AsmParser::ObjDumpParser parser(filter);

    SECTION("user code that only shows up past the limit")
    {
        // code inlined from a header comes before the user's own line
        std::stringstream in(
        objdumpFunction("main", "/opt/compiler-explorer/gcc-15.1.0/include/c++/15.1.0/bits/stl_vector.h", 6000) +
        "/app/example.cpp:4\n  401000:\tc3                   \tret\n");
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() == "[truncated; too many lines]");
    }

    SECTION("a function that starts at the limit")
    {
        std::stringstream in(objdumpFunction("first", "/app/example.cpp", 4999) +
                             objdumpFunction("second", "/app/example.cpp", 1));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.back() == "[truncated; too many lines]");

        std::stringstream json;
        parser.outputJson(json);
        CHECK(json.str().find("\"second\"") == std::string::npos);
    }
}

namespace
{
std::string readResource(const std::string &name)
{
    std::string path;
    if (std::filesystem::current_path().string().ends_with("test"))
        path = "../../../resources/" + name;
    else
        path = "../../resources/" + name;

    std::fstream fs;
    fs.open(path, std::fstream::in);
    REQUIRE(fs.is_open() == true);

    std::stringstream ss;
    ss << fs.rdbuf();
    return ss.str();
}

struct ParsedOutput
{
    std::vector<std::string> lines;
    std::string json;
};

ParsedOutput parseObjdump(const std::string &dump, const AsmParser::Filter &filter)
{
    AsmParser::ObjDumpParser parser(filter);
    parser.setReproducible();

    std::stringstream in(dump);
    parser.fromStream(in);

    std::stringstream json;
    parser.outputJson(json);

    return { outputLines(parser), json.str() };
}

bool hasLine(const ParsedOutput &output, const std::string &line)
{
    return std::find(output.lines.begin(), output.lines.end(), line) != output.lines.end();
}
} // namespace

TEST_CASE("Windows source paths from a mingw build", "[windows]")
{
    // GNU objdump output of a mingw binary, the user's sources are in Compiler Explorer's temp directory on Windows
    auto dump = readResource("mingw-windows-paths.asm");

    // depending on how the compiler recorded the path, objdump can also print it with forward slashes
    const bool forwardSlashes = GENERATE(false, true);
    if (forwardSlashes)
    {
        for (std::size_t pos = 0; (pos = dump.find("C:\\Windows\\TEMP\\", pos)) != std::string::npos;)
            dump.replace(pos, 16, "C:/Windows/TEMP/");
    }

    AsmParser::Filter filter;
    filter.binary = true;

    SECTION("the user's functions get their sources")
    {
        const auto output = parseObjdump(dump, filter);

        CHECK(output.json.find(R"("source": {"file": null, "mainsource": "true", "line": 3})") != std::string::npos);
        CHECK(output.json.find(R"("source": {"file": null, "mainsource": "true", "line": 6})") != std::string::npos);
        CHECK(output.json.find(R"("source": {"file": "src/helper.cpp", "mainsource": "false", "line": 2})") !=
              std::string::npos);
        // the C runtime keeps its own source
        CHECK(output.json.find("crtexe.c") != std::string::npos);
    }

    SECTION("the user's functions are kept as user code")
    {
        filter.library_functions = true;
        const auto output = parseObjdump(dump, filter);

        CHECK(hasLine(output, "square(int):"));
        CHECK(hasLine(output, "main:"));
        CHECK(hasLine(output, "helper(int):"));
        CHECK_FALSE(hasLine(output, "mainCRTStartup:"));
    }

    SECTION("the main source isn't masked with -dont_mask_filenames")
    {
        filter.dont_mask_filenames = true;
        const auto output = parseObjdump(dump, filter);

        CHECK(output.json.find(R"("source": {"file": "example.cpp", "mainsource": "true", "line": 6})") !=
              std::string::npos);
    }
}

TEST_CASE("control characters in a symbol name are escaped in the JSON", "[json]")
{
    // a broken symbol table can give an import thunk a name of raw bytes
    const std::string dump = objdumpFunction("main", "/app/example.cpp", 1) +
                             "  401006:\tff 25 3a 08 00 00    \tjmp    *0x83a(%rip)        # 140002620 <\x17\x08>\n";

    AsmParser::Filter filter;
    filter.binary = true;
    const auto output = parseObjdump(dump, filter);

    CHECK(output.json.find("<\\u0017\\u0008>") != std::string::npos);
    CHECK(std::none_of(output.json.begin(), output.json.end(),
                       [](const char c)
                       {
                           return static_cast<unsigned char>(c) < 0x20 && c != '\n';
                       }));
}
