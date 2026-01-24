import sys, os

def prepare_asm(asm_file):
    '''
    Add macros to the asm file to allow it to compile
    Make all functions/references .public to prevent errors
    during assembly
    '''
    header = '\t.include "../asm/macros/function.inc"\n\t.text\n'
    # Read existing content (if any) and write header + old content
    try:
        with open(asm_file, 'r', encoding='utf-8') as f:
            old = f.read()
    except FileNotFoundError:
        old = ''
    with open(asm_file, 'w', encoding='utf-8') as f:
        f.write(header + old)

# TODO Remove this. No longer used.
def assemble(asm_file, output_file):
    '''
    Assemble the given asm file into an object file at output_file
    '''
    import subprocess
    cmd = ["wine",
        "./tools/mwccarm/2.0/sp2p2/mwasmarm.exe",
        "-DGAME_REMASTER=0",
        "-DNORTH_AMERICA",
        "-DPM_KEEP_ASSERTS",
        "-DSDK_ARM9",
        "-DSDK_CODE_ARM",
        "-DSDK_FINALROM",
        "-proc",
        "arm5te",
        "-gccinc",
        "-DSDK_ASM",
        "-gccdep",
        "-MD",
        "-o",
        output_file,
        asm_file]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error assembling {asm_file}:\n{result.stderr}\n\n{result.stdout}")
        exit(1)
    else:
        print(f"Assembled {asm_file} to {output_file}")

import subprocess
import re
from pathlib import Path
from typing import List, Tuple

IDENT_RE = re.compile(r"Unknown identifier,\s*([A-Za-z_][A-Za-z0-9_]*)")

def _parse_unknown_identifiers(stdout: str) -> List[str]:
    """Return unique identifiers found in stdout in appearance order."""
    ids = []
    for m in IDENT_RE.finditer(stdout):
        ident = m.group(1)
        if ident not in ids:
            ids.append(ident)
    return ids

def _insert_publics_into_asm(asm_path: Path, idents: List[str]) -> None:
    """Insert .public lines before the first 'arm_func_start' occurrence."""
    if not idents:
        return
    text = asm_path.read_text(encoding="utf-8")
    insert_lines = "\n".join(f".public {i}" for i in idents) + "\n\n"
    # Find the first line that contains 'arm_func_start' (exact substring)
    idx = text.find("arm_func_start")
    if idx == -1:
        # If not found, append at top after any initial shebang/whitespace
        # but per examples we place after initial includes/text block: put at top.
        text = insert_lines + text
    else:
        # find start of the line where arm_func_start occurs
        line_start = text.rfind("\n", 0, idx) + 1
        # insert before that line
        text = text[:line_start] + insert_lines + text[line_start:]
    asm_path.write_text(text, encoding="utf-8")

def add_publics_and_assemble(asm_file: str, output_file: str) -> Tuple[int, str, str]:
    """
    Run the provided command (list) once; if stdout contains
    'Unknown identifier, IDENT' lines, add '.public IDENT' lines to asm_file
    (before the first 'arm_func_start' line) and re-run until no new identifiers
    are reported. Returns (returncode, stdout, stderr) of the final run.
    """

    cmd = ["wine",
        "./tools/mwccarm/2.0/sp2p2/mwasmarm.exe",
        "-DGAME_REMASTER=0",
        "-DNORTH_AMERICA",
        "-DPM_KEEP_ASSERTS",
        "-DSDK_ARM9",
        "-DSDK_CODE_ARM",
        "-DSDK_FINALROM",
        "-proc",
        "arm5te",
        "-gccinc",
        "-DSDK_ASM",
        "-gccdep",
        "-MD",
        "-o",
        output_file,
        asm_file]

    asm_path = Path(asm_file)
    # Keep a set of identifiers already added to avoid duplicates
    added = []
    # We'll loop up to a safe maximum to avoid infinite loops
    for attempt in range(100):
        # Ensure command references updated filenames (if cmd built externally)
        # Replace placeholders if present (optional)
        completed = subprocess.run(cmd, capture_output=True, text=True)
        stdout = completed.stdout
        stderr = completed.stderr
        # Find unknown identifiers in stdout
        new_idents = [i for i in _parse_unknown_identifiers(stdout) if i not in added]
        if not new_idents:
            if completed.returncode != 0:
                raise RuntimeError(f"Compiler failed: returncode={completed.returncode}\n{stderr}\n{stdout}")
            print(f"Compiled {asm_file} to {output_file}")
            return completed.returncode, stdout, stderr
        # Add them to file and record
        _insert_publics_into_asm(asm_path, new_idents)
        added.extend(new_idents)
    # If loop exits without resolving, return last result
    return completed.returncode, stdout, stderr