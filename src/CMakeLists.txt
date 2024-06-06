add_library(asm-parser-lib STATIC
    utils/utils.cpp
    utils/jsonwriter.cpp
    utils/regexwrappers.cpp
    utils/library_detection.cpp
    objdump/parser.cpp
    assembly/parser.cpp
)
find_package(ctre CONFIG REQUIRED)
find_package(Catch2 REQUIRED CONFIG)
find_package(fmt REQUIRED CONFIG)
find_package(ApprovalTests REQUIRED CONFIG)

target_link_libraries(asm-parser-lib PUBLIC ctre::ctre Catch2::Catch2 fmt::fmt ApprovalTests::ApprovalTests)

add_executable(asm-parser main.cpp)

target_link_libraries(asm-parser asm-parser-lib)

add_subdirectory(test)