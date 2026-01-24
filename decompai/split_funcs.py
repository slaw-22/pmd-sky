#!/usr/bin/env python3
"""
Usage:
  python split_funcs.py <input_file>

Also provides a callable function:
  from split_funcs import split_arm_functions
  filenames = split_arm_functions("input.s", output_dir="tmp_arm_functions")
"""
import os
import sys
import re
from typing import List



START_RE = re.compile(r'^\s*arm_func_start\s+(\S+)\s*$')
END_RE = re.compile(r'^\s*arm_func_end\s+(\S+)\s*$')

def sanitize_filename(name: str) -> str:
    """
    Make a filename-safe string from the function name.
    Allows alphanumerics, dash, underscore, dot; replaces others with underscore.
    """
    return re.sub(r'[^A-Za-z0-9._-]', '_', name)

def split_functions(input_path: str, output_dir: str) -> List[str]:
    """
    Read input_path, extract blocks between:
      arm_func_start <FunctionName>
    and
      arm_func_end <FunctionName>

    For each block, write contents (including start/end lines) to output_dir/<FunctionName>.s
    Returns the list of written file paths.

    Raises FileNotFoundError if input_path doesn't exist.
    """
    if not os.path.isfile(input_path):
        raise FileNotFoundError(f"Input file not found: {input_path}")

    filenames: List[str] = []
    current_name = None
    current_lines: List[str] = []
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
                    out_path = os.path.join(output_dir, safe_name + ".s")
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
        out_path = os.path.join(output_dir, safe_name + ".s")
        with open(out_path, 'w', encoding='utf-8') as out_f:
            out_f.write("\n".join(current_lines))
            out_f.write("\n")
        filenames.append(out_path)

    return filenames

def _cli_main():
    if len(sys.argv) < 2:
        print("Usage: python split_arm_functions.py <input_file>", file=sys.stderr)
        sys.exit(2)

    input_path = sys.argv[1]
    try:
        filenames = split_functions(input_path)
    except FileNotFoundError as exc:
        print(str(exc), file=sys.stderr)
        sys.exit(1)

    # Print a Python literal list for compatibility with original behavior
    print("# Generated file list:")
    print("filenames = [")
    for p in filenames:
        print(f"    {repr(p)},")
    print("]")

if __name__ == "__main__":
    _cli_main()
