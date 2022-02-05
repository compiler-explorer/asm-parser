#!/bin/sh

PATH=$PATH:/opt/compiler-explorer/cmake/bin

export CXX=/opt/compiler-explorer/gcc-11.2.0/bin/g++
export CC=/opt/compiler-explorer/gcc-11.2.0/bin/gcc
# export CXXFLAGS="-I$PWD/ctre/include"
# export LD_LIBRARY_PATH=/opt/compiler-explorer/gcc-11.2.0/lib64

# export CXX=/opt/compiler-explorer/clang-12.0.0/bin/clang++
# export CC=/opt/compiler-explorer/clang-12.0.0/bin/clang
# export CXXFLAGS="--gcc-toolchain=/opt/compiler-explorer/gcc-10.3.0 -I$PWD/ctre/include -O3 -flto"

/opt/compiler-explorer/clang-trunk/bin/clang-format -i src/*/*.cpp
/opt/compiler-explorer/clang-trunk/bin/clang-format -i src/*/*.hpp

BUILDTYPE=Release

mkdir -p build
cd build
echo cmake -GNinja -DCMAKE_BUILD_TYPE=$BUILDTYPE ..
cmake -GNinja -DCMAKE_BUILD_TYPE=$BUILDTYPE ..
if [ $? -ne 0 ]; then
  exit $?
fi

# /opt/compiler-explorer/clang-trunk/bin/clang-tidy --extra-arg=-std=c++20 ../src/assembly/*.cpp
# if [ $? -ne 0 ]; then
#   exit $?
# fi

echo cmake --build . --target asm-parser-test
cmake --build . --target asm-parser-test
if [ $? -ne 0 ]; then
  exit $?
fi

patchelf --set-rpath /opt/compiler-explorer/gcc-11.2.0/lib64 bin/asm-parser-test

bin/asm-parser-test
if [ $? -ne 0 ]; then
  exit $?
fi

echo cmake --build . --target asm-parser
cmake --build . --target asm-parser
if [ $? -ne 0 ]; then
  exit $?
fi

patchelf --set-rpath /opt/compiler-explorer/gcc-11.2.0/lib64 bin/asm-parser

cd ..

# /usr/bin/time --verbose build/bin/asm-parser -comment_only -directives -unused_labels /opt/compiler-explorer/ce/test/filters-cases/bug-995.asm > bla.json

# echo bintest-1
# build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json

# echo bintest-2
# build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json

# echo bintest-unicode-1
# build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json

# echo aarch64demo
# build/bin/asm-parser -binary resources/aarch64demo.asm > resources/aarch64demo.json
# /opt/compiler-explorer/node/bin/node prettyjson.js resources/aarch64demo.json

# echo clang-maxArray
# build/bin/asm-parser -directives -unused_labels -comment_only /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm > /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm.directives.labels.comments.json

# echo bigboostexample
# build/bin/asm-parser -directives -unused_labels -comment_only resources/bigboostexample.asm > resources/bigboostexample.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js resources/bigboostexample.asm.directives.labels.comments.json

# echo arm-hellow
# build/bin/asm-parser -directives -debugdump /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm > /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.json

# echo bug-577_clang
# build/bin/asm-parser -directives -debugdump -unused_labels /opt/compiler-explorer/ce/test/filters-cases/bug-577_clang.asm > /opt/compiler-explorer/ce/test/filters-cases/bug-577_clang.asm.directives.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bug-577_clang.asm.directives.json

# echo bug-577_clang
# build/bin/asm-parser -directives -debugdump /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm > /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm.directives.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm.directives.json

# echo arm-hellow labels
# build/bin/asm-parser -directives -unused_labels -debugdump /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm > /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.labels.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.labels.json

# echo bug-1989_alpha labels
# build/bin/asm-parser -directives -unused_labels -debugdump /opt/compiler-explorer/ce/test/filters-cases/bug-1989_alpha.asm > /opt/compiler-explorer/ce/test/filters-cases/bug-1989_alpha.asm.directives.labels.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bug-1989_alpha.asm.directives.labels.json

# echo bug-1989_sparc labels
# build/bin/asm-parser -directives -unused_labels -debugdump /opt/compiler-explorer/ce/test/filters-cases/bug-1989_sparc.asm > /opt/compiler-explorer/ce/test/filters-cases/bug-1989_sparc.asm.directives.labels.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bug-1989_sparc.asm.directives.labels.json

# echo 6502-square
# build/bin/asm-parser -directives -unused_labels -comment_only -debugdump /opt/compiler-explorer/ce/test/filters-cases/6502-square.asm > /opt/compiler-explorer/ce/test/filters-cases/6502-square.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/6502-square.asm.directives.labels.comments.json

# echo arm-jump-table
# build/bin/asm-parser -directives -unused_labels -comment_only -debugdump /opt/compiler-explorer/ce/test/filters-cases/arm-jump-table.asm > /opt/compiler-explorer/ce/test/filters-cases/arm-jump-table.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/arm-jump-table.asm.directives.labels.comments.json

# echo arm-hellow
# build/bin/asm-parser -directives -debugdump /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm > /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/arm-hellow.asm.directives.labels.json

# echo bug-1179
# build/bin/asm-parser -directives -unused_labels -comment_only -debugdump /opt/compiler-explorer/ce/test/filters-cases/bug-1179.asm > /opt/compiler-explorer/ce/test/filters-cases/bug-1179.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bug-1179.asm.directives.labels.comments.json

# echo avr-loop
# build/bin/asm-parser -directives -unused_labels -comment_only -debugdump /opt/compiler-explorer/ce/test/filters-cases/avr-loop.asm > /opt/compiler-explorer/ce/test/filters-cases/avr-loop.asm.directives.labels.comments.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/avr-loop.asm.directives.labels.comments.json

# echo clang-hellow
# build/bin/asm-parser -directives -unused_labels -debugdump /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm > /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm.directives.labels.json
# /opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/clang-hellow.asm.directives.labels.json
