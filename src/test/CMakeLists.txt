add_executable(asm-parser-test test_test.cpp asmtext_filter_tests.cpp)
target_link_libraries(asm-parser-test asm-parser-lib)
add_test(NAME asm-parser-test COMMAND $<TARGET_FILE:asm-parser-test>)
