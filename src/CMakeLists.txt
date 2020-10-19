
add_executable(asm-parser
    main.cpp
    utils/utils.cpp
    utils/jsonwriter.cpp
    objdump/parser.cpp
    assembly/parser.cpp)

target_link_libraries(asm-parser ${CONAN_LIBS})
