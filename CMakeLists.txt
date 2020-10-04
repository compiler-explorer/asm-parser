cmake_minimum_required(VERSION 3.10)
project(asm-parser)

set(CMAKE_CXX_STANDARD 17)
add_compile_options(-Werror -Wall -Wextra)

add_subdirectory(src)
