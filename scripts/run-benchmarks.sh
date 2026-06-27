#!/usr/bin/env bash
#
# Run the objdump benchmark N times and aggregate the per-run Catch2 XML into a
# single summary JSON (bench-results/bench-summary.json by default).
#
# Env overrides:
#   BENCH_RUNS      number of process runs                 (default: 5)
#   BENCH_FILTER    Catch2 test filter                     (default: [objdump])
#   BENCH_TEST_BIN  path to asm-parser-test                (default: build-release/src/test/asm-parser-test)
#   BENCH_OUTDIR    where to write XML + summary           (default: bench-results)
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

RUNS="${BENCH_RUNS:-5}"
FILTER="${BENCH_FILTER:-[objdump]}"
TEST_BIN="${BENCH_TEST_BIN:-build-release/src/test/asm-parser-test}"
OUTDIR="${BENCH_OUTDIR:-bench-results}"

if [ ! -x "$TEST_BIN" ]; then
  echo "error: test binary not found/executable at '$TEST_BIN'" >&2
  echo "build a Release first, e.g.:" >&2
  echo "  cmake -B build-release -G Ninja -S . -DCMAKE_BUILD_TYPE=Release && cmake --build build-release" >&2
  exit 1
fi

TEST_DIR="$(cd "$(dirname "$TEST_BIN")" && pwd)"
TEST_EXE="$TEST_DIR/$(basename "$TEST_BIN")"

mkdir -p "$OUTDIR"
ABS_OUTDIR="$(cd "$OUTDIR" && pwd)"

xmls=()
for i in $(seq 1 "$RUNS"); do
  xml="$ABS_OUTDIR/run-$i.xml"
  echo "Benchmark run $i/$RUNS -> $OUTDIR/run-$i.xml"
  # The test resolves resource paths relative to its own working dir.
  ( cd "$TEST_DIR" && "$TEST_EXE" "$FILTER" -r xml -o "$xml" )
  xmls+=("$xml")
done

COMMIT="$(git -C "$REPO_ROOT" rev-parse HEAD 2>/dev/null || echo "")"
REF="$(git -C "$REPO_ROOT" rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")"

python3 "$SCRIPT_DIR/aggregate_bench.py" "${xmls[@]}" \
  --commit "$COMMIT" --ref "$REF" --label "${BENCH_LABEL:-}" \
  -o "$ABS_OUTDIR/bench-summary.json"

echo "Summary written to $OUTDIR/bench-summary.json"
