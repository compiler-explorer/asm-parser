#!/bin/sh

CURDIR=$PWD

cd build/src
# cat $CURDIR/resources/ce-bug-3963.asm | asm-parser -plt -stdin -binary -dont_mask_filenames -outputtext


LSAN_OPTIONS=suppressions=$CURDIR/known-leaks.txt ./asm-parser -plt -binary -dont_mask_filenames $CURDIR/resources/ce-bug-7000.asm > $CURDIR/cetest.json

cd $CURDIR
