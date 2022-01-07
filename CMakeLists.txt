cmake_minimum_required(VERSION 3.10)
project(asm-parser)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Werror -Wall -Wextra -O3 -flto)

if (NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/v0.16.1/conan.cmake"
            "${CMAKE_BINARY_DIR}/conan.cmake"
            TLS_VERIFY ON)
endif ()

include(${CMAKE_BINARY_DIR}/conan.cmake)

conan_cmake_run(
        REQUIRES
        catch2/2.13.7
        approvaltests.cpp/10.12.0
        fmt/8.0.1
        BASIC_SETUP
        BUILD missing)

include(${CMAKE_BINARY_DIR}/conan.cmake)

add_subdirectory(src)
