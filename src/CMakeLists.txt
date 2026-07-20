
include(CheckIPOSupported)
check_ipo_supported(RESULT ipo_supported)

add_library(asm-parser-objs OBJECT
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

target_link_libraries(asm-parser-objs
  PUBLIC
    ctre::ctre
    Catch2::Catch2
    fmt::fmt
    ApprovalTests::ApprovalTests
)

add_executable(asm-parser main.cpp)

target_link_libraries(asm-parser PRIVATE asm-parser-objs)

set_property(
  TARGET asm-parser
  PROPERTY INTERPROCEDURAL_OPTIMIZATION_RELEASE ${ipo_supported}
)

add_subdirectory(test)
