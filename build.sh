#!/bin/sh

PATH=/opt/compiler-explorer/cmake/bin:/opt/compiler-explorer/ninja:$PWD/.venv/bin:$PATH

rm -Rf build
mkdir build
cmake -B build -G Ninja -S . -DCMAKE_BUILD_TYPE=Debug
cmake --build build --config Debug

CURDIR=$PWD

cd build/src
test/asm-parser-test

cd $PWD
