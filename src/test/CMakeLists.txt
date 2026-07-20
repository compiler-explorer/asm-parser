add_executable(asm-parser-test test_test.cpp asmtext_filter_tests.cpp objdump_benchmark.cpp)
target_link_libraries(asm-parser-test asm-parser-objs)
# Enable Catch2's built-in micro-benchmarking support (BENCHMARK macro).
target_compile_definitions(asm-parser-test PRIVATE CATCH_CONFIG_ENABLE_BENCHMARKING)
add_test(NAME asm-parser-test COMMAND $<TARGET_FILE:asm-parser-test>)
