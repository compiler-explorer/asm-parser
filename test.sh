#!/bin/sh

cd build
cmake ..
if [ $? -ne 0 ]; then
  exit $?
fi

make
if [ $? -ne 0 ]; then
  exit $?
fi
cd ..

build/bin/asm-parser /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-1.asm.binary.directives.labels.comments.json

build/bin/asm-parser /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-2.asm.binary.directives.labels.comments.json

build/bin/asm-parser /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm > /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json
/opt/compiler-explorer/node/bin/node prettyjson.js /opt/compiler-explorer/ce/test/filters-cases/bintest-unicode-1.asm.binary.directives.labels.comments.json
