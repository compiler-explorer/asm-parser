
set(PARSER_SOURCES
    utils/utils.cpp
    utils/jsonwriter.cpp
    utils/regexwrappers.cpp
    objdump/parser.cpp
    assembly/parser.cpp
)

add_executable(asm-parser
    main.cpp
    ${PARSER_SOURCES})

target_link_libraries(asm-parser ${CONAN_LIBS})

set(TEST_SOURCES
    test/test_test.cpp)

if("${PARSER_SOURCES}" STREQUAL "")
    message(FATAL_ERROR "PARSER_SOURCES are missing")
endif()

add_executable(test
    ${TEST_SOURCES}
    ${PARSER_SOURCES})

target_link_libraries(test
    ${CONAN_LIBS})
