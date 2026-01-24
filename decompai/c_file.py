import os
import re

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
