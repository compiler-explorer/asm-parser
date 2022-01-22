cmake_minimum_required(VERSION 3.10)
project(asm-parser)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Werror -Wall -Wextra)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=leak -fsanitize=address -fsanitize=undefined -static-libasan")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

include(CheckIPOSupported)
check_ipo_supported()
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_DEBUG FALSE)

if (NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/v0.16.1/conan.cmake"
            "${CMAKE_BINARY_DIR}/conan.cmake"
            TLS_VERIFY ON)
endif ()

include(${CMAKE_BINARY_DIR}/conan.cmake)

conan_check(VERSION 1.43.1 REQUIRED)

conan_cmake_run(
        REQUIRES
        catch2/2.13.7
        approvaltests.cpp/10.12.0
        fmt/8.0.1
        ctre/3.4.1
        BASIC_SETUP
        BUILD missing)

include(${CMAKE_BINARY_DIR}/conan.cmake)

add_subdirectory(src)
