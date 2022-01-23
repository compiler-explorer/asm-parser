add_executable(asm-parser-test test_test.cpp)
target_link_libraries(asm-parser-test asm-parser-lib)
add_test(NAME asm-parser-test COMMAND $<TARGET_FILE:asm-parser-test>)
