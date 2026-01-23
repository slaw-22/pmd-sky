#!/usr/bin/env python3
"""
Usage:
  python split_funcs.py <input_file>

Reads the file given as the first command-line argument, finds blocks between
lines of the form:
  arm_func_start <FunctionName>
and
  arm_func_end <FunctionName>

For each block, writes the inner lines (between start and end) to a file named
<FunctionName>.s inside the OUTPUT_DIR directory and builds a list `filenames`
containing those paths for use in the next phase.
"""
import os
import sys
import re

# Change this to the desired output directory (will be created if missing).
OUTPUT_DIR = "tmp_arm_functions"

START_RE = re.compile(r'^\s*arm_func_start\s+(\S+)\s*$')
END_RE = re.compile(r'^\s*arm_func_end\s+(\S+)\s*$')

def main():
    if len(sys.argv) < 2:
        print("Usage: python split_arm_functions.py <input_file>", file=sys.stderr)
        sys.exit(2)

    input_path = sys.argv[1]
    if not os.path.isfile(input_path):
        print(f"Input file not found: {input_path}", file=sys.stderr)
        sys.exit(1)

    os.makedirs(OUTPUT_DIR, exist_ok=True)

    filenames = []
    current_name = None
    current_lines = []
    start_line_no = None

    with open(input_path, 'r', encoding='utf-8') as f:
        for lineno, raw in enumerate(f, start=1):
            line = raw.rstrip('\n')

            if current_name is None:
                m = START_RE.match(line)
                if m:
                    current_name = m.group(1)
                    current_lines = []
                    start_line_no = lineno
                    # include start line in the output
                    current_lines.append(line)
                # otherwise ignore lines outside blocks
            else:
                m_end = END_RE.match(line)
                if m_end:
                    end_name = m_end.group(1)
                    # include the end line in the output
                    current_lines.append(line)
                    if end_name != current_name:
                        print(f"Warning: mismatched end tag at line {lineno}: "
                              f"expected end for {current_name} but found end for {end_name}",
                              file=sys.stderr)
                    # write file (use .s extension for ARM assembly; change if needed)
                    safe_name = sanitize_filename(current_name)
                    out_path = os.path.join(OUTPUT_DIR, safe_name + ".s")
                    with open(out_path, 'w', encoding='utf-8') as out_f:
                        out_f.write("\n".join(current_lines))
                        out_f.write("\n")
                    filenames.append(out_path)
                    current_name = None
                    current_lines = []
                    start_line_no = None
                else:
                    current_lines.append(line)

    if current_name is not None:
        print(f"Warning: file ended while inside block starting at line {start_line_no} "
              f"for function {current_name}. The block was written anyway.",
              file=sys.stderr)
        safe_name = sanitize_filename(current_name)
        out_path = os.path.join(OUTPUT_DIR, safe_name + ".s")
        with open(out_path, 'w', encoding='utf-8') as out_f:
            out_f.write("\n".join(current_lines))
            out_f.write("\n")
        filenames.append(out_path)

    # Print or expose the filenames array for the next phase.
    # Here we print a Python literal to stdout so another script can capture it.
    print("# Generated file list:")
    print("filenames = [")
    for p in filenames:
        print(f"    {repr(p)},")
    print("]")

def sanitize_filename(name: str) -> str:
    """
    Make a filename-safe string from the function name.
    Allows alphanumerics, dash, underscore, dot; replaces others with underscore.
    """
    return re.sub(r'[^A-Za-z0-9._-]', '_', name)

if __name__ == "__main__":
    main()