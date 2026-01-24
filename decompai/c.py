import os
import re
import sys

FUNC_DEF_RE = re.compile(
    r'^([a-zA-Z_][\w\s\*\(\)]*?\b([a-zA-Z_]\w*)\s*\([^;{]*\))\s*\{',
    re.MULTILINE
)

INCLUDE_LINE = '#include "../lib/include/nitro/types.h"\n'

def write_c_file(c_code, filename):
    """
    Write C source code to a file, add an include for nitro types
    and a prototype for the single function definition found.
    """
    output_dir = os.path.dirname(filename)

    # Ensure include at top: put include as the first non-empty line if not present
    lines = c_code.splitlines(keepends=True)
    # Check if include already present anywhere
    if not any(line.strip() == INCLUDE_LINE.strip() for line in lines):
        # find index of first non-empty line
        first_nonempty = 0
        for i, line in enumerate(lines):
            if line.strip() != '':
                first_nonempty = i
                break
        # insert include before that line
        lines.insert(first_nonempty, INCLUDE_LINE)
        c_code = ''.join(lines)

    # Find the single function definition
    m = FUNC_DEF_RE.search(c_code)
    if m:
        full_header = m.group(1).strip()
        func_name = m.group(2)
        prototype = full_header.rstrip() + ';'

        # Avoid duplicating if prototype already exists immediately above
        start_index = m.start()
        before = c_code[:start_index].rstrip()
        # get last line before function def
        last_line_before = before.splitlines()[-1] if before.splitlines() else ''
        if last_line_before.strip() != prototype:
            # insert prototype plus a newline before function definition
            c_code = c_code[:start_index] + prototype + '\n\n' + c_code[start_index:]

    # write file
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(c_code)

def compile_c(c_file, output_file):
    """
    Compile the given C file into an object file in the specified output directory.
    Assumes wine/mwccarm is set up
    """
    import subprocess

    if not os.path.exists(os.path.dirname(output_file)):
        print("Error: Can't write to output path " + output_file, file=sys.stderr)
        sys.exit(1)

    compile_cmd = [
        "/usr/bin/wine",
        "./tools/mwccarm/2.0/sp2p2/mwccarm.exe",
        "-O4,s",
        "-DGAME_REMASTER=0",
        "-DNORTH_AMERICA",
        "-DPM_KEEP_ASSERTS",
        "-DSDK_ARM9",
        "-DSDK_CODE_ARM",
        "-DSDK_FINALROM",
        "-enum", "min",
        "-lang", "c99",
        "-Cpp_exceptions", "off",
        "-gccext,on",
        "-proc", "arm946e",
        "-msgstyle", "gcc",
        "-gccinc",
        "-i", "./include",
        "-i", "./include/library",
        "-i", "./files",
        "-I./lib/include",
        "-interworking",
        "-inline", "on,noauto",
        "-char", "signed",
        "-W", "all",
        "-W", "pedantic",
        "-W", "noimpl_signedunsigned",
        "-W", "noimplicitconv",
        "-W", "nounusedarg",
        "-W", "nomissingreturn",
        "-W", "error",
        "-I./lib/msl/include/MSL_C",
        "-I./lib/DSE/include",
        "-i", "build/pmdsky.us/precompile/",
        "-gccdep",
        "-MD",
        "-c",
        "-o", output_file,
        c_file,
    ]
    try:
        completed = subprocess.run(compile_cmd, capture_output=True, check=True)
        stdout = completed.stdout
        stderr = completed.stderr
        if completed.returncode != 0:
            raise RuntimeError(f"Compiler failed: returncode={completed.returncode}\n{stderr}\n{stdout}")
        print(f"Compiled {c_file} to {output_file}")
    except subprocess.CalledProcessError as e:
        print(f"Error compiling {c_file}: {e}")
        exit(1)