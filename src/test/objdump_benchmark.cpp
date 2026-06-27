#include <catch2/catch.hpp>

#include "../objdump/parser.hpp"
#include "../types/filter.hpp"

#include <filesystem>
#include <fstream>
#include <sstream>
#include <string>

namespace
{

std::string resourcePath(const std::string &name)
{
    if (std::filesystem::current_path().string().ends_with("test"))
        return "../../../resources/" + name;
    return "../../resources/" + name;
}

std::string readResource(const std::string &name)
{
    std::ifstream fs(resourcePath(name), std::ios::binary);
    REQUIRE(fs.is_open() == true);
    std::stringstream ss;
    ss << fs.rdbuf();
    return ss.str();
}

AsmParser::Filter defaultBinaryFilter()
{
    AsmParser::Filter filter;
    filter.binary = true;
    filter.plt = true;
    filter.library_functions = true;
    filter.unused_labels = true;
    return filter;
}

// Parse a buffer with a fresh parser and produce the JSON output, exercising the
// full objdump pipeline the way main.cpp does for a -binary run. Returns the
// output size so Catch keeps the result and the work isn't optimised away.
size_t parseObjDump(const std::string &input, const AsmParser::Filter &filter)
{
    AsmParser::ObjDumpParser parser(filter);
    std::istringstream in(input);
    parser.fromStream(in);

    std::ostringstream out;
    parser.outputJson(out);
    return out.str().size();
}

} // namespace

TEST_CASE("objdump parser benchmark", "[!benchmark][objdump]")
{
    const auto filter = defaultBinaryFilter();

    // The asm files here are pre-captured objdump output of various sizes.
    for (const auto &name : {"example.asm", "example_intel.asm", "gcc12_sort_object_reloc.asm",
                             "gcc12_bin_fmt_O2_flto.asm", "gcc14_bin_fmt_print_O0.asm"})
    {
        const std::string input = readResource(name);

        BENCHMARK(std::string("parse ") + name)
        {
            return parseObjDump(input, filter);
        };
    }
}
