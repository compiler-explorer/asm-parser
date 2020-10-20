
set(PARSER_SOURCES
    utils/utils.cpp
    utils/jsonwriter.cpp
    objdump/parser.cpp
    assembly/parser.cpp
)

add_executable(asm-parser
    main.cpp
    ${PARSER_SOURCES})

target_link_libraries(asm-parser ${CONAN_LIBS})
