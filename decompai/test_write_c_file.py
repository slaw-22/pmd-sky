import os
import tempfile
import re
import io
from pathlib import Path

import pytest

# Import the function under test.
from c_file import write_c_file, INCLUDE_LINE, FUNC_DEF_RE


# Helper to read file content
def read_file(path):
    with open(path, 'r', encoding='utf-8') as f:
        return f.read()

def test_inserts_include_when_missing(tmp_path):
    src = """
int add(int a, int b) {
    return a + b;
}
"""
    out_file = tmp_path / "test1.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    # include should be present once and before first code
    assert INCLUDE_LINE.strip() in content
    # include appears before 'int add'
    assert content.index(INCLUDE_LINE.strip()) < content.index('int add')

def test_does_not_duplicate_include_if_present(tmp_path):
    src = INCLUDE_LINE + "\nint sub(int a, int b) {\n    return a - b;\n}\n"
    out_file = tmp_path / "test2.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    # include should appear exactly once (strip to avoid newline differences)
    assert content.count(INCLUDE_LINE.strip()) == 1

def test_inserts_prototype_before_function(tmp_path):
    src = """
/* comment */
int mul(int a, int b) {
    return a * b;
}
"""
    out_file = tmp_path / "test3.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    # prototype must be inserted before the function definition
    m = FUNC_DEF_RE.search(content)
    assert m is not None
    full_header = m.group(1).strip()
    prototype = full_header.rstrip() + ';'
    # ensure prototype exists before the function definition
    func_start = m.start()
    before = content[:func_start]
    assert prototype in before
    # and prototype is immediately above (allowing one blank line)
    # Check last non-empty lines before the function start
    lines_before = before.rstrip('\n').splitlines()
    assert lines_before[-1].strip() == prototype

def test_does_not_duplicate_prototype_if_already_present(tmp_path):
    src = """
int div(int a, int b);
int div(int a, int b) {
    return a / b;
}
"""
    out_file = tmp_path / "test4.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    # prototype should not be duplicated
    # There should still be only one prototype line immediately before function
    # Count occurrences of the prototype string
    m = FUNC_DEF_RE.search(content)
    assert m is not None
    full_header = m.group(1).strip()
    prototype = full_header.rstrip() + ';'
    # Count occurrences in file
    assert content.count(prototype) == 1

def test_handles_pointer_and_whitespace_in_signature(tmp_path):
    src = """
    char * concat(const char *a, const char *b) {
        return NULL;
    }
    """
    out_file = tmp_path / "test5.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    m = FUNC_DEF_RE.search(content)
    assert m is not None
    full_header = m.group(1).strip()
    prototype = full_header.rstrip() + ';'
    assert prototype in content

def test_no_function_definition_leaves_only_include_added(tmp_path):
    src = """
// just some macros
#define FOO 1
"""
    out_file = tmp_path / "test6.c"
    write_c_file(src, str(out_file))
    content = read_file(out_file)

    # include should be added but no prototype
    assert INCLUDE_LINE.strip() in content
    # no semicolon prototypes (simple heuristic: no '(' followed by ')' and ';' before a '{')
    assert ');' not in content or '{' not in content

def test_uses_proper_encoding_and_writes_file(tmp_path):
    src = "int f(void) {\n    return 0;\n}\n"
    out_file = tmp_path / "test7.c"
    write_c_file(src, str(out_file))
    # Ensure file exists and is non-empty
    assert out_file.exists()
    assert out_file.stat().st_size > 0

# Run pytest when executed directly
if __name__ == "__main__":
    pytest.main([__file__])
