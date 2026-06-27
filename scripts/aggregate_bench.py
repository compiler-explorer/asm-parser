#!/usr/bin/env python3
"""Aggregate one or more Catch2 (v2) XML benchmark runs into a summary JSON.

Each input XML is one process run of the benchmark (which itself takes many
samples). This script combines the per-run means for each benchmark into
run-to-run statistics suitable for storing as a CI artifact / baseline.

Usage:
    aggregate_bench.py run-*.xml -o bench-summary.json
    aggregate_bench.py run-1.xml run-2.xml --commit "$(git rev-parse HEAD)"

All timing values in the Catch2 XML are nanoseconds; the summary keeps raw
nanoseconds and adds millisecond convenience values.
"""
import argparse
import datetime
import json
import statistics
import sys
import xml.etree.ElementTree as ET


def parse_run(path):
    """Return {benchmark_name: {mean_ns, stddev_ns, samples}} for one XML run."""
    root = ET.parse(path).getroot()
    out = {}
    for bench in root.iter("BenchmarkResults"):
        mean = bench.find("mean")
        stddev = bench.find("standardDeviation")
        out[bench.attrib["name"]] = {
            "mean_ns": float(mean.attrib["value"]) if mean is not None else None,
            "stddev_ns": float(stddev.attrib["value"]) if stddev is not None else None,
            "samples": int(bench.attrib["samples"]),
        }
    return out


def aggregate(paths):
    runs = [parse_run(p) for p in paths]
    # Preserve first-seen order of benchmark names.
    names = []
    for run in runs:
        for name in run:
            if name not in names:
                names.append(name)

    benchmarks = []
    for name in names:
        means = [run[name]["mean_ns"] for run in runs if name in run]
        within = [run[name]["stddev_ns"] for run in runs if name in run]
        samples = next(run[name]["samples"] for run in runs if name in run)

        mean_ns = statistics.fmean(means)
        across_ns = statistics.stdev(means) if len(means) > 1 else 0.0
        benchmarks.append({
            "name": name,
            "runs": len(means),
            "samples_per_run": samples,
            "mean_ns": mean_ns,
            "mean_ms": mean_ns / 1e6,
            "stddev_across_runs_ns": across_ns,
            "stddev_across_runs_ms": across_ns / 1e6,
            "cv_percent": (across_ns / mean_ns * 100.0) if mean_ns else 0.0,
            "min_ms": min(means) / 1e6,
            "max_ms": max(means) / 1e6,
            "mean_within_run_stddev_ms": (statistics.fmean(within) / 1e6) if within else None,
            "per_run_mean_ms": [m / 1e6 for m in means],
        })
    return benchmarks


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("xml", nargs="+", help="Catch2 XML run file(s)")
    ap.add_argument("-o", "--output", help="JSON output file (default: stdout)")
    ap.add_argument("--commit", default="", help="git commit SHA to record")
    ap.add_argument("--ref", default="", help="git ref/branch to record")
    ap.add_argument("--label", default="", help="free-form label (e.g. runner/build)")
    args = ap.parse_args()

    summary = {
        "schema": "asm-parser-bench/1",
        "generated_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "commit": args.commit,
        "ref": args.ref,
        "label": args.label,
        "run_count": len(args.xml),
        "benchmarks": aggregate(args.xml),
    }
    text = json.dumps(summary, indent=2)

    if args.output:
        with open(args.output, "w") as f:
            f.write(text + "\n")
        print(f"Wrote {args.output}", file=sys.stderr)
    else:
        print(text)


if __name__ == "__main__":
    main()
