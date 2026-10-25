add_executable(asm-parser-test test_test.cpp asmtext_filter_tests.cpp objdump_benchmark.cpp)
target_link_libraries(asm-parser-test asm-parser-lib)
# Enable Catch2's built-in micro-benchmarking support (BENCHMARK macro).
target_compile_definitions(asm-parser-test PRIVATE CATCH_CONFIG_ENABLE_BENCHMARKING)
add_test(NAME asm-parser-test COMMAND $<TARGET_FILE:asm-parser-test>)

if(MINGW)
    # ApprovalTests on Windows only splits __FILE__ on backslashes, but CMake passes gcc paths with forward slashes
    string(REPLACE "/" "\\" native_test_source_dir "${CMAKE_CURRENT_SOURCE_DIR}/")
    target_compile_options(asm-parser-test PRIVATE "-fmacro-prefix-map=${CMAKE_CURRENT_SOURCE_DIR}/=${native_test_source_dir}")
endif()
