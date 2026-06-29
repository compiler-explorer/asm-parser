# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

asm-parser is a C++ tool that categorizes and filters assembly code for Compiler Explorer. It processes both regular compiler assembly output and GNU objdump binary output, providing JSON or text output with filtered assembly suitable for display in CE.

## Build Commands

**Initial Setup:**
```bash
./setup.sh  # Sets up Python venv, installs Conan2, configures C++20 profile
```

**Development Build:**
```bash
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug -G Ninja  # Ninja preferred
cmake --build . --config Debug
```

**Production Build:**
```bash
mkdir -p build && cd build
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target asm-parser
```

**Running Tests:**
```bash
make test                    # Via CMake/CTest
./build/src/test/asm-parser-test  # Direct execution
```

**Code Formatting:**
```bash
clang-format -i src/*/*.cpp src/*/*.hpp
```

## Architecture

**Core Components:**
- `src/assembly/parser.{cpp,hpp}` - Parses compiler assembly text output
- `src/objdump/parser.{cpp,hpp}` - Parses GNU objdump binary output  
- `src/types/` - Core interfaces (IParser) and data structures (Filter, Line)
- `src/utils/` - JSON output, regex wrappers, library detection utilities

**Parser Architecture:**
Both parsers implement `IParser` interface with state machine-based parsing. The `Filter` struct controls which filtering operations are applied (directives, unused labels, comments, library functions, etc.).

**Key Features:**
- Binary mode: Processes objdump output with addresses, opcodes, relocations
- Assembly text mode: Processes compiler-generated assembly 
- Label analysis: Identifies and removes unused labels/functions
- Library detection: Filters external library code based on file paths
- Multiple output formats: JSON (default) or filtered text

## Testing Framework

Uses **Catch2** with **ApprovalTests** for regression testing. Test data in `/resources/` includes real-world assembly examples and bug reproduction cases from Compiler Explorer.

**Test file naming convention:**
- Input: `resources/example.asm` 
- Expected output: `resources/asmtext_filter_tests.example.approved.txt`

Tests cover various architectures, compiler outputs, and edge cases from CE bug reports.

## Dependencies

Managed via **Conan 2.x**:
- Catch2 2.13.10 (testing)
- ApprovalTests.cpp 10.12.2 (golden master testing)  
- fmt 11.0.0 (string formatting)
- ctre 3.7.1 (compile-time regex)

## Development Notes

- Requires GCC 12+ or equivalent with C++20 support
- Debug builds include sanitizers (AddressSanitizer, LeakSanitizer, UBSan)
- Release builds use -O3 with Link Time Optimization
- UTF-8 locale required for Unicode support
- Production deployment copies binary to `/usr/local/bin/asm-parser`

## Common Usage Patterns

**Binary objdump processing:**
```bash
objdump -d a.out -l --insn-width=16 | asm-parser -stdin -binary
```

**Assembly text filtering:**
```bash
asm-parser -directives -unused_labels -comment_only file.asm
```

**Text output mode:**
```bash
asm-parser -outputtext -library_functions input.asm
```