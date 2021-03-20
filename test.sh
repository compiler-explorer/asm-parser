#!/bin/sh

PATH=$PATH:/opt/compiler-explorer/cmake/bin

export CXX=/opt/compiler-explorer/gcc-10.2.0/bin/g++
export CC=/opt/compiler-explorer/gcc-10.2.0/bin/gcc

/opt/compiler-explorer/clang-trunk/bin/clang-format -i src/*/*.cpp
/opt/compiler-explorer/clang-trunk/bin/clang-format -i src/*/*.hpp

mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE ..
if [ $? -ne 0 ]; then
  exit $?
fi

make test
if [ $? -ne 0 ]; then
  exit $?
fi

bin/test
if [ $? -ne 0 ]; then
  exit $?
fi

make asm-parser
if [ $? -ne 0 ]; then
  exit $?
fi

cd ..

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
