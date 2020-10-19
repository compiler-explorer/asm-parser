#!/bin/sh

cd build
cmake -DCMAKE_BUILD_TYPE=DEBUG ..
if [ $? -ne 0 ]; then
  exit $?
fi

make
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
