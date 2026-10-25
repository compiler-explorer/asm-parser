add_library(asm-parser-lib STATIC
    utils/utils.cpp
    utils/jsonwriter.cpp
    utils/regexwrappers.cpp
    utils/library_detection.cpp
    utils/subprocess.cpp
    objdump/parser.cpp
    assembly/parser.cpp
)
if(WIN32)
    target_sources(asm-parser-lib PRIVATE utils/win32_mblen.cpp)
endif()
find_package(ctre CONFIG REQUIRED)
find_package(Catch2 REQUIRED CONFIG)
find_package(fmt REQUIRED CONFIG)
find_package(ApprovalTests REQUIRED CONFIG)

target_link_libraries(asm-parser-lib PUBLIC ctre::ctre Catch2::Catch2 fmt::fmt ApprovalTests::ApprovalTests)

add_executable(asm-parser main.cpp)

target_link_libraries(asm-parser asm-parser-lib)
if(WIN32)
    # CommandLineToArgvW
    target_link_libraries(asm-parser shell32)
endif()

add_subdirectory(test)