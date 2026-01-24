import os
import tempfile
import shutil
from split_funcs import split_arm_functions, sanitize_filename

def write_file(path, contents):
    with open(path, "w", encoding="utf-8") as f:
        f.write(contents)

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

def test_basic_extracts(tmp_path):
    src = tmp_path / "input.s"
    content = """some header
arm_func_start foo
    .text
    bx lr
arm_func_end foo
tail
"""
    write_file(src, content)
    out_dir = tmp_path / "out"
    files = split_arm_functions(str(src), output_dir=str(out_dir))
    assert len(files) == 1
    out_path = files[0]
    assert os.path.basename(out_path) == sanitize_filename("foo") + ".s"
    got = read_file(out_path)
    assert "arm_func_start foo" in got
    assert "arm_func_end foo" in got
    assert ".text" in got

def test_multiple_functions(tmp_path):
    src = tmp_path / "input.s"
    content = """arm_func_start a
a1
arm_func_end a
arm_func_start b
b1
arm_func_end b
"""
    write_file(src, content)
    out_dir = tmp_path / "out"
    files = split_arm_functions(str(src), output_dir=str(out_dir))
    assert len(files) == 2
    basenames = {os.path.basename(p) for p in files}
    assert {sanitize_filename("a") + ".s", sanitize_filename("b") + ".s"} == basenames

def test_mismatched_end_warns_and_still_writes(tmp_path, capsys):
    src = tmp_path / "input.s"
    content = """arm_func_start x
x1
arm_func_end y
"""
    write_file(src, content)
    out_dir = tmp_path / "out"
    files = split_arm_functions(str(src), output_dir=str(out_dir))
    # file still written
    assert len(files) == 1
    captured = capsys.readouterr()
    # warning printed to stderr
    assert "mismatched end tag" in captured.err

def test_unterminated_block_written_and_warns(tmp_path, capsys):
    src = tmp_path / "input.s"
    content = """arm_func_start z
z1
"""
    write_file(src, content)
    out_dir = tmp_path / "out"
    files = split_arm_functions(str(src), output_dir=str(out_dir))
    assert len(files) == 1
    captured = capsys.readouterr()
    assert "file ended while inside block" in captured.err

def test_filename_sanitization(tmp_path):
    src = tmp_path / "input.s"
    name = "weird/name:with*chars"
    content = f"arm_func_start {name}\ninsn\narm_func_end {name}\n"
    write_file(src, content)
    out_dir = tmp_path / "out"
    files = split_arm_functions(str(src), output_dir=str(out_dir))
    assert len(files) == 1
    bn = os.path.basename(files[0])
    assert bn.endswith(".s")
    # ensure sanitized name used (no slash or colon)
    assert "/" not in bn and ":" not in bn and "*" not in bn

def test_nonexistent_input_raises(tmp_path):
    missing = tmp_path / "nope.s"
    out_dir = tmp_path / "out"
    try:
        split_arm_functions(str(missing), output_dir=str(out_dir))
    except FileNotFoundError:
        pass
    else:
        raise AssertionError("Expected FileNotFoundError")

