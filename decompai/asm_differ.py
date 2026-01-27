import subprocess
import json
from pathlib import Path

def score_asm(symbol: str):
    """
    Change into tools/asm-differ, activate the virtualenv, run the diff.py command
    for the given symbol, parse stdout as JSON, return JSON.

    Args:
      symbol: symbol name to pass to diff.py (e.g., "sub_0204CE00")
    """
    target_dir = Path.cwd() / "tools" / "asm-differ"
    if not target_dir.is_dir():
        raise FileNotFoundError(f"{target_dir} not found")

    cmd = (
        f"cd tools/asm-differ && "
        f"source bin/activate && "
        f"python diff.py --file=object.o {symbol} -o -I --no-pager --format json"
    )

    proc = subprocess.run(
        ["bash", "-lc", cmd],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=False
    )

    if proc.returncode != 0:
        raise RuntimeError(f"Command failed (exit {proc.returncode}):\n{proc.stderr.strip()}")

    try:
        data = json.loads(proc.stdout)
    except json.JSONDecodeError as e:
        raise ValueError(f"Failed to parse JSON from stdout: {e}\nStdout was:\n{proc.stdout!r}")

    current_score = data["current_score"]
    max_score = data["max_score"]
    percent = (1 - (current_score / max_score)) * 100
    return current_score, max_score, percent
