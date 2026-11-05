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

std::string nopLines(int count)
{
    std::string dump;
    for (int i = 0; i < count; i++)
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

bool hasLine(const std::vector<std::string> &lines, const std::string &line)
{
    return std::find(lines.begin(), lines.end(), line) != lines.end();
}

bool hasLine(const ParsedOutput &output, const std::string &line)
{
    return hasLine(output.lines, line);
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
        CHECK(hasLine(output, "_XcptFilter:"));
        CHECK(hasLine(output, "pre_c_init:"));
    }

    SECTION("the user's functions are kept as user code")
    {
        filter.library_functions = true;
        const auto output = parseObjdump(dump, filter);

        CHECK(hasLine(output, "square(int):"));
        CHECK(hasLine(output, "main:"));
        CHECK(hasLine(output, "helper(int):"));
        CHECK_FALSE(hasLine(output, "mainCRTStartup:"));
        // runtime code without debug info, before any source line; the header of the output isn't a source line
        CHECK_FALSE(hasLine(output, "pre_c_init:"));
        // and an import thunk without debug info after the user's functions
        CHECK_FALSE(hasLine(output, "_XcptFilter:"));
    }

    SECTION("the main source isn't masked with -dont_mask_filenames")
    {
        filter.dont_mask_filenames = true;
        const auto output = parseObjdump(dump, filter);

        CHECK(output.json.find(R"("source": {"file": "example.cpp", "mainsource": "true", "line": 6})") !=
              std::string::npos);
    }
}

TEST_CASE("the source after a function label", "[asm]")
{
    AsmParser::Filter filter;
    filter.binary = true;

    SECTION("a label inside a function continues its source")
    {
        // objdump only prints a source line when it changes, labels starting with a dot are inside the function
        const std::string dump =
        objdumpFunction("main", "/app/example.cpp", 2) + "\n0000000000401010 <.l_start>:\n  401010:\t90                   \tnop\n";
        const auto output = parseObjdump(dump, filter);

        CHECK(output.json.find(R"("address": 4198416, "source": {"file": null, "mainsource": "true", "line": 3})") !=
              std::string::npos);
    }

    SECTION("a function without line information doesn't continue the source of the one before it")
    {
        // e.g. runtime code without debug info that's linked in after the user's code
        const std::string dump = objdumpFunction("main", "/app/example.cpp", 2) +
                                 "\n0000000000402000 <_setargv>:\n  402000:\t31 c0                \txor    eax,eax\n";

        SECTION("it has no source")
        {
            const auto output = parseObjdump(dump, filter);

            REQUIRE(hasLine(output, "_setargv:"));
            CHECK(output.json.find(R"("opcodes": ["31", "c0"], "address": 4202496, "source": null)") !=
                  std::string::npos);
        }

        SECTION("it isn't kept as user code")
        {
            filter.library_functions = true;
            const auto output = parseObjdump(dump, filter);

            CHECK(hasLine(output, "main:"));
            CHECK_FALSE(hasLine(output, "_setargv:"));
        }
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

namespace
{
// Trimmed from gcc 15 `-static -g` output for a function dividing two complex doubles, built in /app. __divdc3 comes
// from libgcc and has no line information; __libc_unused is never referenced, and __memset_sse2 is only referenced by
// __divdc3.
const std::string referencedHiddenDump = "0000000000401845 <f>:\n"
                                         "f():\n"
                                         "/app/example.c:2\n"
                                         "  401845:\tf3 0f 1e fa          \tendbr64\n"
                                         "  40184d:\te8 1e 00 00 00       \tcall   401870 <__divdc3>\n"
                                         "  401856:\tc3                   \tret\n"
                                         "\n"
                                         "0000000000401870 <__divdc3>:\n"
                                         "__divdc3():\n"
                                         "  401870:\tf3 0f 1e fa          \tendbr64\n"
                                         "  40189b:\t0f 86 b7 00 00 00    \tjbe    401958 <__divdc3+0xe8>\n"
                                         "  4018a0:\te8 00 00 00 00       \tcall   402000 <__memset_sse2>\n"
                                         "  4018a5:\tc3                   \tret\n"
                                         "\n"
                                         "0000000000402000 <__memset_sse2>:\n"
                                         "__memset_sse2():\n"
                                         "  402000:\tc3                   \tret\n"
                                         "\n"
                                         "0000000000402010 <__libc_unused>:\n"
                                         "__libc_unused():\n"
                                         "  402010:\tc3                   \tret\n";

std::vector<std::string> labelLines(const ParsedOutput &output)
{
    std::vector<std::string> labels;
    for (const auto &line : output.lines)
    {
        if (line.ends_with(':'))
            labels.push_back(line);
    }
    return labels;
}
} // namespace

TEST_CASE("hidden functions referenced from shown functions", "[binary]")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;

    SECTION("a hidden function that a shown function calls is shown")
    {
        const auto output = parseObjdump(referencedHiddenDump, filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "f:", "__divdc3:" });
        CHECK(output.json.find("\"__divdc3\": 5") != std::string::npos);
        CHECK(output.json.find("\"name\": \"__divdc3\"") != std::string::npos);
    }

    SECTION("references are not followed from a function that was hidden")
    {
        const auto output = parseObjdump(referencedHiddenDump, filter);
        CHECK_FALSE(hasLine(output, "__memset_sse2:"));
    }

    SECTION("a hidden function that nothing shown refers to stays hidden")
    {
        const auto output = parseObjdump(referencedHiddenDump, filter);
        CHECK_FALSE(hasLine(output, "__libc_unused:"));

        const auto hiddenOnly =
        parseObjdump(referencedHiddenDump.substr(referencedHiddenDump.find("\n0000000000401870")), filter);
        CHECK(hiddenOnly.lines.empty());
    }

    SECTION("a hidden function is shown when it is defined before the call")
    {
        const auto output = parseObjdump("0000000000401000 <__helper>:\n"
                                         "  401000:\tc3                   \tret\n"
                                         "\n"
                                         "0000000000401010 <main>:\n"
                                         "  401010:\te8 eb ff ff ff       \tcall   401000 <__helper>\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "__helper:", "main:" });
    }

    SECTION("a hidden .plt section does not make its callees referenced")
    {
        filter.plt = false;
        const auto output = parseObjdump("0000000000401000 <main>:\n"
                                         "  401000:\tc3                   \tret\n"
                                         "\n"
                                         "0000000000401020 <.plt>:\n"
                                         "  401020:\te8 00 00 00 00       \tcall   402000 <__memset_sse2>\n"
                                         "\n"
                                         "0000000000402000 <__memset_sse2>:\n"
                                         "  402000:\tc3                   \tret\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:" });
    }

    SECTION("a reference separated by a tab is found")
    {
        const auto output = parseObjdump("0000000000401000 <main>:\n"
                                         "  401000:\te8 eb ff ff ff       \tcall\t401800 <__helper>\n"
                                         "\n"
                                         "0000000000401800 <__helper>:\n"
                                         "  401800:\tc3                   \tret\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:", "__helper:" });
    }

    SECTION("a data reference in a comment does not count")
    {
        const auto output =
        parseObjdump("0000000000401000 <main>:\n"
                     "  401000:\t48 8b 05 d9 2f 00 00 \tmov    0x2fd9(%rip),%rax        # 404fe0 <__gmon_start__>\n"
                     "\n"
                     "0000000000404fe0 <__gmon_start__>:\n"
                     "  404fe0:\tc3                   \tret\n",
                     filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:" });
    }

    // aarch64-linux-gnu-objdump style: `#` is the immediate prefix there, not a comment
    SECTION("an aarch64 tbz target is found, where # is an immediate and not a comment")
    {
        const auto output = parseObjdump("00000000004005a0 <main>:\n"
                                         "  4005a0:\t36000040 \ttbz\tw0, #0, 4005a8 <__hidden>\n"
                                         "  4005a4:\td65f03c0 \tret\n"
                                         "\n"
                                         "00000000004005a8 <__hidden>:\n"
                                         "  4005a8:\td65f03c0 \tret\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:", "__hidden:" });
    }

    SECTION("targets after aarch64 immediates are found, with a cmp before them")
    {
        const auto output = parseObjdump("00000000004005a0 <main>:\n"
                                         "  4005a0:\t71000c1f \tcmp\tw0, #3\n"
                                         "  4005a4:\tb7f80041 \ttbnz\tx1, #63, 4005ac <__other>\n"
                                         "  4005a8:\td65f03c0 \tret\n"
                                         "\n"
                                         "00000000004005ac <__other>:\n"
                                         "  4005ac:\td65f03c0 \tret\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:", "__other:" });
    }

    SECTION("a plt stub is still hidden")
    {
        const auto output = parseObjdump("0000000000401000 <puts@plt>:\n"
                                         "  401000:\tff 25 12 2f 00 00    \tjmp    *0x2f12(%rip)\n"
                                         "\n"
                                         "0000000000401010 <main>:\n"
                                         "  401010:\te8 eb ff ff ff       \tcall   401000 <puts@plt>\n",
                                         filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "main:" });
    }

    SECTION("with library functions filtered the function is removed again, without a dangling reference")
    {
        filter.library_functions = true;
        const auto output = parseObjdump(referencedHiddenDump, filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "f:" });
        CHECK(output.json.find("\"name\": \"__divdc3\"") == std::string::npos);
        CHECK(output.json.find("\"__divdc3\": ") == std::string::npos);
        CHECK(hasLine(output, " call   401870 <__divdc3>"));
    }

    SECTION("with library functions filtered the function is kept when it has the program's line information")
    {
        filter.library_functions = true;
        std::string dump = referencedHiddenDump;
        dump.replace(dump.find("__divdc3():\n") + 12, 0, "/app/divdc3.c:7\n");
        const auto output = parseObjdump(dump, filter);
        CHECK(labelLines(output) == std::vector<std::string>{ "f:", "__divdc3:" });
    }
}

TEST_CASE("hidden functions and the line limit", "[binary]")
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;

    AsmParser::ObjDumpParser parser(filter);
    parser.setReproducible();

    SECTION("parsing stops at the limit without reading the rest of the stream")
    {
        std::stringstream in(objdumpFunction("__hidden", "/app/example.cpp", 10) + objdumpFunction("main", "/app/example.cpp", 6000) +
                             objdumpFunction("later", "/app/example.cpp", 20000));
        parser.fromStream(in);

        // the caller terminates objdump when the stream wasn't read to the end
        CHECK_FALSE(in.eof());
        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.back() == "[truncated; too many lines]");
    }

    SECTION("the lines of a hidden function that nothing refers to don't use up the limit")
    {
        std::stringstream in(objdumpFunction("__hidden", "/app/example.cpp", 6000) +
                             objdumpFunction("main", "/app/example.cpp", 100));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 101);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() != "[truncated; too many lines]");
    }

    SECTION("a hidden function that is kept fits alongside the shown code")
    {
        std::stringstream in(
        objdumpFunction("main", "/app/example.cpp", 4000) + "  401800:\te8 00 00 00 00       \tcall   402000 <__big>\n" +
        objdumpFunction("__unused", "/app/example.cpp", 3000) + objdumpFunction("__big", "/app/example.cpp", 500));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 4503);
        CHECK(lines.back() != "[truncated; too many lines]");
        CHECK(hasLine(lines, "__big:"));
        CHECK_FALSE(hasLine(lines, "__unused:"));

        // __unused is in the way when the file is parsed, but not in the output
        std::stringstream json;
        parser.outputJson(json);
        CHECK(json.str().find("\"__big\": 4003") != std::string::npos);
    }

    SECTION("a hidden function that doesn't fit is not shown, and doesn't truncate the shown code")
    {
        std::stringstream in(objdumpFunction("main", "/app/example.cpp", 4000) + "  401800:\te8 00 00 00 00       \tcall   402000 <__big>\n" +
                             objdumpFunction("__big", "/app/example.cpp", 2000));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 4002);
        CHECK(lines.back() == " call   402000 <__big>");
        CHECK_FALSE(hasLine(lines, "__big:"));
    }

    SECTION("a hidden function defined before its caller doesn't push the call out of the output")
    {
        std::stringstream in(
        objdumpFunction("__big", "/app/example.cpp", 99) + objdumpFunction("main", "/app/example.cpp", 4985) +
        "  401800:\te8 00 00 00 00       \tcall   402000 <__big>\n" + objdumpFunction("after", "/app/example.cpp", 2));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 4990);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() == " nop");
        CHECK(hasLine(lines, " call   402000 <__big>"));
        CHECK(hasLine(lines, "after:"));
        CHECK_FALSE(hasLine(lines, "__big:"));
    }

    SECTION("a hidden function defined before its caller is shown when it fits")
    {
        std::stringstream in(
        objdumpFunction("__small", "/app/example.cpp", 9) + objdumpFunction("main", "/app/example.cpp", 4985) +
        "  401800:\te8 00 00 00 00       \tcall   402000 <__small>\n" + objdumpFunction("after", "/app/example.cpp", 2));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5000);
        CHECK(lines.front() == "__small:");
        CHECK(lines.back() == " nop");
        std::stringstream json;
        parser.outputJson(json);
        CHECK(json.str().find("\"__small\": 1") != std::string::npos);
        CHECK(json.str().find("\"main\": 11") != std::string::npos);
    }

    SECTION("a call that the limit refused doesn't keep its target")
    {
        std::stringstream in(
        objdumpFunction("__h", "/app/example.cpp", 10) + objdumpFunction("main", "/app/example.cpp", 4999) +
        "  401800:\te8 00 00 00 00       \tcall   402000 <__h>\n" + objdumpFunction("after", "/app/example.cpp", 2));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() == "[truncated; too many lines]");
        CHECK_FALSE(hasLine(lines, "__h:"));
    }

    SECTION("a hidden function whose caller was truncated away is not shown")
    {
        std::stringstream in(objdumpFunction("__h", "/app/example.cpp", 10) + objdumpFunction("f", "/app/example.cpp", 6000) +
                             objdumpFunction("main", "/app/example.cpp", 1) + "  401800:\te8 00 00 00 00       \tcall   402000 <__h>\n");
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "f:");
        CHECK(lines.back() == "[truncated; too many lines]");
        CHECK_FALSE(hasLine(lines, "__h:"));
    }

    SECTION("the last hidden functions are removed first when they don't all fit")
    {
        std::stringstream in(objdumpFunction("__a", "/app/example.cpp", 500) + objdumpFunction("__b", "/app/example.cpp", 3000) +
                             objdumpFunction("__c", "/app/example.cpp", 500) + objdumpFunction("main", "/app/example.cpp", 2000) +
                             "  401800:\te8 00 00 00 00       \tcall   402000 <__a>\n"
                             "  401805:\te8 00 00 00 00       \tcall   402000 <__b>\n"
                             "  40180a:\te8 00 00 00 00       \tcall   402000 <__c>\n");
        parser.fromStream(in);

        // 2004 shown lines, then 501 + 3001 + 501. Without __c there is still no room for __b, and __c would have
        // fitted by itself, but the last ones go first
        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 2004 + 501);
        CHECK(hasLine(lines, "__a:"));
        CHECK_FALSE(hasLine(lines, "__b:"));
        CHECK_FALSE(hasLine(lines, "__c:"));
        CHECK(lines.back() != "[truncated; too many lines]");
    }

    SECTION("a hidden function called early is shown even though the shown code is over the limit")
    {
        std::stringstream in(objdumpFunction("__h", "/app/example.cpp", 9) + objdumpFunction("main", "/app/example.cpp", 0) +
                             "  401800:\te8 00 00 00 00       \tcall   402000 <__h>\n" + nopLines(6000));
        parser.fromStream(in);

        // the shown code is cut to make room for the 10 lines of __h
        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "__h:");
        CHECK(lines[10] == "main:");
        CHECK(lines[11] == " call   402000 <__h>");
        CHECK(lines.back() == "[truncated; too many lines]");
        std::stringstream json;
        parser.outputJson(json);
        CHECK(json.str().find("\"__h\": 1") != std::string::npos);
        CHECK(json.str().find("\"main\": 11") != std::string::npos);
    }

    SECTION("a hidden function that would straddle the cut is not shown, and doesn't stop the others")
    {
        std::stringstream in(objdumpFunction("__s", "/app/example.cpp", 2) + objdumpFunction("__big", "/app/example.cpp", 4997) +
                             objdumpFunction("main", "/app/example.cpp", 0) +
                             "  401800:\te8 00 00 00 00       \tcall   402000 <__s>\n"
                             "  401805:\te8 00 00 00 00       \tcall   402000 <__big>\n" +
                             nopLines(6000));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "__s:");
        CHECK(lines.back() == "[truncated; too many lines]");
        CHECK_FALSE(hasLine(lines, "__big:"));
    }

    SECTION("a hidden function whose only caller is cut by the limit is not shown")
    {
        std::stringstream in(objdumpFunction("__h", "/app/example.cpp", 9) + objdumpFunction("main", "/app/example.cpp", 4995) +
                             "  401800:\te8 00 00 00 00       \tcall   402000 <__h>\n" + nopLines(10));
        parser.fromStream(in);

        // without __h the call is line 4997, with it 5007
        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() == "[truncated; too many lines]");
        CHECK_FALSE(hasLine(lines, "__h:"));
        CHECK(hasLine(lines, " call   402000 <__h>"));
    }

    SECTION("shown code is only truncated when it alone is over the limit")
    {
        std::stringstream in(objdumpFunction("__a", "/app/example.cpp", 10) + objdumpFunction("main", "/app/example.cpp", 5000) +
                             "  401800:\te8 00 00 00 00       \tcall   402000 <__a>\n");
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.front() == "main:");
        CHECK(lines.back() == "[truncated; too many lines]");
    }

    SECTION("parsing stops at the limit when only hidden functions are left")
    {
        std::stringstream in(objdumpFunction("main", "/app/example.cpp", 4999) + objdumpFunction("__a", "/app/example.cpp", 10) +
                             objdumpFunction("__b", "/app/example.cpp", 20000));
        parser.fromStream(in);

        CHECK_FALSE(in.eof());
        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 5001);
        CHECK(lines.back() == "[truncated; too many lines]");
    }

    SECTION("the hidden functions that are held are bounded, however many there are")
    {
        // each is 1001 lines with its label: only the first four fit under the cap, and the fifth is dropped part way
        std::string dump;
        for (int i = 0; i < 300; i++)
            dump += objdumpFunction("__h" + std::to_string(i), "/app/example.cpp", 1000);
        dump += objdumpFunction("main", "/app/example.cpp", 4997);
        dump += "  401800:\te8 00 00 00 00       \tcall   402000 <__h0>\n"
                "  401805:\te8 00 00 00 00       \tcall   402000 <__h299>\n";
        std::stringstream in(dump);
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        CHECK(lines.size() == 5000);
        CHECK(lines.back() == " call   402000 <__h299>");
        CHECK_FALSE(hasLine(lines, "__h0:"));
        CHECK_FALSE(hasLine(lines, "__h299:"));
    }

    SECTION("hidden functions held under the cap are still shown when referenced")
    {
        std::string dump;
        for (int i = 0; i < 8; i++)
            dump += objdumpFunction("__h" + std::to_string(i), "/app/example.cpp", 1000);
        dump += objdumpFunction("main", "/app/example.cpp", 1);
        dump += "  401800:\te8 00 00 00 00       \tcall   402000 <__h0>\n"
                "  401805:\te8 00 00 00 00       \tcall   402000 <__h7>\n";
        std::stringstream in(dump);
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        CHECK(hasLine(lines, "__h0:"));
        CHECK_FALSE(hasLine(lines, "__h7:"));
        CHECK(lines.size() == 4 + 1001);
    }

    SECTION("labels after a hidden function that was removed point at the right lines")
    {
        std::stringstream in(objdumpFunction("f", "/app/example.cpp", 2) + objdumpFunction("__hidden", "/app/example.cpp", 3) +
                             objdumpFunction("g", "/app/example.cpp", 1) + objdumpFunction("__also", "/app/example.cpp", 5) +
                             objdumpFunction("h", "/app/example.cpp", 1));
        parser.fromStream(in);

        const auto lines = outputLines(parser);
        REQUIRE(lines.size() == 7);
        std::stringstream json;
        parser.outputJson(json);
        CHECK(json.str().find("\"f\": 1") != std::string::npos);
        CHECK(json.str().find("\"g\": 4") != std::string::npos);
        CHECK(json.str().find("\"h\": 6") != std::string::npos);
    }

    SECTION("a hidden function with the program's line information is removed with library functions filtered")
    {
        filter.library_functions = true;
        AsmParser::ObjDumpParser libraryParser(filter);
        std::stringstream in(objdumpFunction("f", "/app/example.cpp", 1) + objdumpFunction("__hidden", "/app/example.cpp", 3) +
                             objdumpFunction("g", "/app/example.cpp", 1));
        libraryParser.fromStream(in);
        CHECK(labelLines({ outputLines(libraryParser), "" }) == std::vector<std::string>{ "f:", "g:" });
    }
}

TEST_CASE("label references after an immediate", "[objdump]")
{
    AsmParser::Filter filter;
    filter.binary = true;

    // aarch64-linux-gnu-objdump style: `#` is the immediate prefix there, not a comment
    SECTION("an aarch64 branch target after an immediate is a label reference")
    {
        const auto output = parseObjdump("00000000004005a0 <main>:\n"
                                         "  4005a0:\t36000040 \ttbz\tw0, #0, 4005a8 <foo>\n"
                                         "  4005a4:\tb7f80041 \ttbnz\tx1, #63, 4005a8 <foo>\n"
                                         "\n"
                                         "00000000004005a8 <foo>:\n"
                                         "  4005a8:\td65f03c0 \tret\n",
                                         filter);
        CHECK(output.json.find(R"("labels": [{"name": "foo", "range": {"startCol": 22, "endCol": 25}}])") != std::string::npos);
        CHECK(output.json.find(R"("labels": [{"name": "foo", "range": {"startCol": 24, "endCol": 27}}])") != std::string::npos);
    }

    SECTION("a symbol in an x86 comment about data is not a label reference")
    {
        const auto output =
        parseObjdump("0000000000401000 <main>:\n"
                     "  401000:\t48 8b 05 21 30 00 00 \tmov    0x3021(%rip),%rax        # 404028 <data>\n"
                     "  401007:\tc3                   \tret\n"
                     "\n"
                     "0000000000404028 <data>:\n"
                     "  404028:\tc3                   \tret\n",
                     filter);
        CHECK(output.json.find(R"("name": "data")") == std::string::npos);
    }
}
