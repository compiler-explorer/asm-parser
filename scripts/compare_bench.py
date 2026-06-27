#!/usr/bin/env python3
"""Compare a benchmark summary against a committed baseline.

Reads two summary JSON files produced by aggregate_bench.py and reports the
per-benchmark delta. Exits non-zero if any benchmark regressed (got slower) by
more than the threshold, so it can gate a CI job.

Usage:
    compare_bench.py --baseline bench-results/baseline.json \
                     --current  bench-results/bench-summary.json \
                     --threshold 10

A Markdown table is written to $GITHUB_STEP_SUMMARY when that env var is set.
"""
import argparse
import json
import os
import sys


def load(path):
    with open(path) as f:
        data = json.load(f)
    return {b["name"]: b for b in data.get("benchmarks", [])}, data


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--baseline", required=True)
    ap.add_argument("--current", required=True)
    ap.add_argument("--threshold", type=float, default=10.0,
                    help="max allowed regression in percent (default: 10)")
    args = ap.parse_args()

    base, base_meta = load(args.baseline)
    cur, cur_meta = load(args.current)

    rows = []
    regressions = []
    for name, c in cur.items():
        b = base.get(name)
        cur_ms = c["mean_ms"]
        if b is None:
            rows.append((name, None, cur_ms, None, "NEW"))
            continue
        base_ms = b["mean_ms"]
        delta = (cur_ms - base_ms) / base_ms * 100.0 if base_ms else 0.0
        status = "ok"
        if delta > args.threshold:
            status = "REGRESSION"
            regressions.append((name, delta))
        elif delta < -args.threshold:
            status = "improved"
        rows.append((name, base_ms, cur_ms, delta, status))

    for name in base:
        if name not in cur:
            rows.append((name, base[name]["mean_ms"], None, None, "MISSING"))

    # Console report
    print(f"Baseline commit: {base_meta.get('commit', '?')}")
    print(f"Current  commit: {cur_meta.get('commit', '?')}")
    print(f"Threshold: ±{args.threshold:.1f}%\n")
    header = f"{'benchmark':<36} {'baseline':>12} {'current':>12} {'delta':>9}  status"
    print(header)
    print("-" * len(header))
    for name, base_ms, cur_ms, delta, status in rows:
        b = f"{base_ms:.4f} ms" if base_ms is not None else "—"
        c = f"{cur_ms:.4f} ms" if cur_ms is not None else "—"
        d = f"{delta:+.2f}%" if delta is not None else "—"
        print(f"{name:<36} {b:>12} {c:>12} {d:>9}  {status}")

    # GitHub step summary (Markdown)
    step_summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if step_summary:
        with open(step_summary, "a") as f:
            f.write("## Benchmark vs baseline\n\n")
            f.write(f"Threshold: ±{args.threshold:.1f}% &middot; "
                    f"baseline `{base_meta.get('commit', '?')[:12]}`\n\n")
            f.write("| benchmark | baseline | current | delta | status |\n")
            f.write("|---|--:|--:|--:|:--|\n")
            for name, base_ms, cur_ms, delta, status in rows:
                b = f"{base_ms:.4f} ms" if base_ms is not None else "—"
                c = f"{cur_ms:.4f} ms" if cur_ms is not None else "—"
                d = f"{delta:+.2f}%" if delta is not None else "—"
                emoji = {"REGRESSION": "🔴", "improved": "🟢", "ok": "⚪",
                         "NEW": "🆕", "MISSING": "⚠️"}.get(status, "")
                f.write(f"| {name} | {b} | {c} | {d} | {emoji} {status} |\n")

    if regressions:
        print(f"\n{len(regressions)} benchmark(s) regressed beyond ±{args.threshold:.1f}%:")
        for name, delta in regressions:
            print(f"  - {name}: {delta:+.2f}%")
        return 1
    print("\nNo regressions beyond threshold.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
