cmake_minimum_required(VERSION 3.10)

# Include the Conan provider to automatically handle dependencies
set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/conan_provider.cmake")

project(asm-parser)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Werror -Wall -Wextra -Wconversion)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=leak -fsanitize=address -fsanitize=undefined -static-libasan")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

if(MINGW)
    # Link everything statically so the executable doesn't depend on the MinGW runtime DLLs
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")
endif()

include(CheckIPOSupported)
check_ipo_supported()
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_DEBUG FALSE)

enable_testing()

add_subdirectory(src)
