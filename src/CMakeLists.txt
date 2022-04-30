add_library(asm-parser-lib STATIC
    utils/utils.cpp
    utils/jsonwriter.cpp
    utils/regexwrappers.cpp
    utils/library_detection.cpp
    objdump/parser.cpp
    assembly/parser.cpp
)
target_link_libraries(asm-parser-lib PUBLIC ${CONAN_LIBS})

add_executable(asm-parser main.cpp)

target_link_libraries(asm-parser asm-parser-lib)

add_subdirectory(test)