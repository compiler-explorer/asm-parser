cmake_minimum_required(VERSION 3.10)
project(asm-parser)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Werror -Wall -Wextra -Wconversion)
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
            TLS_VERIFY ON
            EXPECTED_HASH SHA256=396e16d0f5eabdc6a14afddbcfff62a54a7ee75c6da23f32f7a31bc85db23484
            STATUS conan_download_status_list)
    list(GET conan_download_status_list 0 conan_download_status)
    if (conan_download_status)
        # CMake retains an empty/bad file even if download failed (stackoverflow.com/q/61255773);
        # if we don't trash it here then we'll be reading a bad conan.cmake when reconfiguring
        file(REMOVE "${CMAKE_BINARY_DIR}/conan.cmake")
        list(GET conan_download_status_list 1 conan_download_error_message)
        message(FATAL_ERROR
            "Could not download conan.cmake: "
            "${conan_download_error_message} "
            "(Error code: ${conan_download_status})")
    endif ()
endif ()

include(${CMAKE_BINARY_DIR}/conan.cmake)

conan_check(VERSION 1.43.1 REQUIRED)

conan_cmake_run(
        REQUIRES
        catch2/2.13.7
        approvaltests.cpp/10.12.0
        fmt/9.1.0
        ctre/3.7.1
        BASIC_SETUP
        BUILD missing)

include(${CMAKE_BINARY_DIR}/conan.cmake)

enable_testing()

add_subdirectory(src)
