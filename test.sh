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

build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json

build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json

build/bin/asm-parser -binary /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json

build/bin/asm-parser -binary resources/aarch64demo.asm > resources/aarch64demo.json
/opt/compiler-explorer/node/bin/node prettyjson.js resources/aarch64demo.json

build/bin/asm-parser -directives -unused_labels -comment_only /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm > /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/clang-maxArray.asm.directives.labels.comments.json

build/bin/asm-parser -directives -unused_labels -comment_only resources/bigboostexample.asm > resources/bigboostexample.asm.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js resources/bigboostexample.asm.directives.labels.comments.json
