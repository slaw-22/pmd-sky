import os
import sys
import subprocess
import builtins
import pytest
from types import SimpleNamespace

from c import compile_c

def test_compile_success(tmp_path, monkeypatch, capsys):
    # Arrange
    c_file = str(tmp_path / "test.c")
    output_dir = tmp_path / "outdir"
    output_dir.mkdir()
    output_file = str(output_dir / "test.o")

    # create dummy c file (not actually compiled because subprocess.run is mocked)
    (tmp_path / "test.c").write_text("int main(void){return 0;}")

    captured_args = {}
    def fake_run(cmd, check, capture_output=True):
        # record cmd for later assertions
        captured_args['cmd'] = cmd
        captured_args['check'] = capture_output
        # simulate successful run: return an object similar to subprocess.CompletedProcess
        return SimpleNamespace(returncode=0, stdout=b"", stderr=b"", args=cmd)
    monkeypatch.setattr(subprocess, "run", fake_run)

    # Act
    compile_c(c_file, output_file)

    # Assert subprocess.run called with expected beginning of command and final args
    assert 'cmd' in captured_args
    cmd = captured_args['cmd']
    # command should start with wine call and mwccarm path
    assert cmd[0] == "/usr/bin/wine"
    assert any("mwccarm.exe" in str(x) for x in cmd)
    # final two args should be output file flag and input c file (order: "-o", output_file, c_file)
    assert "-o" in cmd
    o_index = cmd.index("-o")
    assert cmd[o_index + 1] == output_file
    assert cmd[-1] == c_file

    # stdout should contain compiled message
    captured = capsys.readouterr()
    assert f"Compiled {c_file} to {output_file}" in captured.out

def test_compile_missing_output_dir(tmp_path, monkeypatch, capsys):
    # Arrange: create a c file but do NOT create the nested output directory
    c_file = str(tmp_path / "test.c")
    (tmp_path / "test.c").write_text("int main(void){return 0;}")
    # create a path with a non-existent subdir
    output_file = str(tmp_path / "no/such/dir/test.o")

    # capture sys.exit by making it raise SystemExit with code
    def fake_exit(code=0):
        raise SystemExit(code)
    monkeypatch.setattr(sys, "exit", fake_exit)

    # Act & Assert
    with pytest.raises(SystemExit) as exc:
        compile_c(c_file, output_file)

    # Check exit code is 1
    assert exc.value.code == 1

    # stderr should contain the error message about unable to write
    captured = capsys.readouterr()
    assert "Error: Can't write to output path " + output_file in captured.err
