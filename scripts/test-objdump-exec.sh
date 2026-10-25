#!/bin/bash
# Checks that `asm-parser -objdump <objdump> -- <args>` gives the same output as `objdump <args> | asm-parser -stdin`,
#  and that failing to run objdump makes asm-parser fail.
#
# usage: test-objdump-exec.sh <asm-parser> <objdump> <binary to disassemble>
#
# On Windows (Git Bash) paths are handed to the executables as Windows paths with backslashes.
# Set RUN=wine to test a Windows build under Wine from Linux.
# Set OBJDUMP_FLAGS to change the disassembly flags, e.g. for llvm-objdump which has no --insn-width.

set -euo pipefail

ASM_PARSER=$1
OBJDUMP=$2
BINARY=$3
RUN=${RUN:-}
PYTHON=${PYTHON:-python3}
read -r -a DISASSEMBLY_FLAGS <<< "${OBJDUMP_FLAGS:--d -l --insn-width=16}"

to_native() {
    if [[ "$RUN" == wine* ]]; then
        winepath -w "$1" 2>/dev/null
    elif command -v cygpath > /dev/null; then
        cygpath -w "$1"
    else
        echo "$1"
    fi
}

# paths for $PYTHON, which is a native Windows program under Git Bash but a Linux one when testing under Wine
python_path() {
    if [[ "$RUN" != wine* ]] && command -v cygpath > /dev/null; then
        cygpath -w "$1"
    else
        echo "$1"
    fi
}

native_sep() {
    if [[ "$RUN" == wine* ]] || command -v cygpath > /dev/null; then
        echo '\'
    else
        echo '/'
    fi
}

run() {
    $RUN "$@"
}

WORKDIR=$(mktemp -d)
trap 'rm -rf "$WORKDIR"' EXIT

# a directory with spaces so the quoting of the objdump arguments is tested
FIXTURE_DIR="$WORKDIR/fixture dir with spaces"
mkdir -p "$FIXTURE_DIR"
cp "$BINARY" "$FIXTURE_DIR/"
FIXTURE=$(to_native "$FIXTURE_DIR/$(basename "$BINARY")")
NATIVE_OBJDUMP=$(to_native "$OBJDUMP")

# only used with -S, but objdump still has to receive it as a single argument; has a space, a quote and a trailing separator
PREFIX_ARG="--prefix=$(to_native "$WORKDIR")$(native_sep)a \"quoted\" dir$(native_sep)"

FLAGS=(-binary -plt -unused_labels -directives -comment_only)
OBJDUMP_ARGS=("${DISASSEMBLY_FLAGS[@]}" "$PREFIX_ARG" "$FIXTURE")

failures=0

compare_json() {
    "$PYTHON" - "$(python_path "$1")" "$(python_path "$2")" << 'EOF'
import json, sys

def load(path):
    with open(path, 'rb') as f:
        # strict=False: the JSON writer doesn't escape control characters, which llvm-objdump puts in some PE symbol names
        data = json.loads(f.read().replace(b'\r', b''), strict=False)
    data.pop('parsingTime', None)
    return data

expected, actual = load(sys.argv[1]), load(sys.argv[2])
if not expected['asm']:
    sys.exit('no asm lines in the expected output')
if expected != actual:
    sys.exit('outputs differ')
print(f"identical ({len(expected['asm'])} lines)")
EOF
}

echo "== -objdump matches objdump | asm-parser -stdin"
# asm-parser stops reading after too many lines, objdump then dies of SIGPIPE, like it does in CE's starter script
set +o pipefail
run "$OBJDUMP" "${OBJDUMP_ARGS[@]}" | run "$ASM_PARSER" -stdin "${FLAGS[@]}" > "$WORKDIR/expected.json"
set -o pipefail
run "$ASM_PARSER" "${FLAGS[@]}" -objdump "$NATIVE_OBJDUMP" -- "${OBJDUMP_ARGS[@]}" > "$WORKDIR/actual.json"
if ! compare_json "$WORKDIR/expected.json" "$WORKDIR/actual.json"; then
    failures=$((failures + 1))
fi

expect_failure() {
    local name=$1
    shift
    echo "== $name"
    set +e
    run "$ASM_PARSER" "$@" > "$WORKDIR/out.json" 2> "$WORKDIR/err.txt"
    local exitcode=$?
    set -e
    if [[ $exitcode -eq 0 ]]; then
        echo "expected a non-zero exit code"
        failures=$((failures + 1))
    elif [[ ! -s "$WORKDIR/err.txt" ]]; then
        echo "expected an error message on stderr"
        failures=$((failures + 1))
    else
        echo "exit code $exitcode: $(tr -d '\r' < "$WORKDIR/err.txt" | tail -1)"
    fi
}

expect_failure "missing objdump" -binary -objdump "$(to_native "$WORKDIR/no such dir/objdump")" -- -d "$FIXTURE"
expect_failure "objdump exits non-zero" -binary -objdump "$NATIVE_OBJDUMP" -- -d "$(to_native "$WORKDIR/does not exist.exe")"

if [[ $failures -ne 0 ]]; then
    echo "$failures check(s) failed"
    exit 1
fi
echo "all checks passed"
