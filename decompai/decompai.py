import sys, os, logging, csv
from temp_consts import HARD_CODED_C
from split_funcs import split_functions
from genai.gemini import gemini, MODEL
from genai.prompt import FIRST_SHOT
from c import write_c_file, compile_c
from asm import prepare_asm, add_publics_and_assemble, extract_arm_func_name
from asm_differ import score_asm
from pathlib import Path
from subprocess import CalledProcessError

logger = logging.getLogger(__name__)
# TODO make this a cmd line param
logging.basicConfig(level=logging.INFO)

ASM_DIR = "tmp_asm_functions"
C_DIR = "tmp_c_functions"

# The AI attempt to match the object
ASM_DIFFER_CURRENT_FILE = "tools/asm-differ/object.o"
# The object we're trying to match
ASM_DIFFER_EXPECTED_FILE = "tools/asm-differ/expected/object.o"

RESULT_FILE = "results.csv"

def main():
    if not os.getenv("GEMINI_API_KEY"):
        print("Error: GEMINI_API_KEY environment variable is not set.")
        sys.exit(1)

    if len(sys.argv) < 2:
        print("Usage: python decompai.py <filename>")
        sys.exit(1)

    for p in [ASM_DIR, C_DIR]:
        os.makedirs(p, exist_ok=True)

    input_asm_file = sys.argv[1]
    asm_files = split_functions(input_asm_file, ASM_DIR)
    for asm_file in asm_files:
        with open(asm_file, "r", encoding="utf-8") as f:
            # Check if already processed (C file already exists)
            file_no_ext = os.path.splitext(os.path.basename(asm_file))[0]
            c_file = C_DIR + "/" + file_no_ext + ".c"
            if os.path.exists(c_file):
                logger.info(f"Skipping {asm_file}, {c_file} already exists")
                continue

            # Prepare and assmeble asm
            logger.info(f"Processing {asm_file}")
            if os.path.exists(ASM_DIFFER_CURRENT_FILE):
                os.remove(ASM_DIFFER_CURRENT_FILE)
            logger.info(f"Preparing and assembling {asm_file}")
            prepare_asm(asm_file)
            add_publics_and_assemble(asm_file, ASM_DIFFER_EXPECTED_FILE)

            # Query Gemini for C code
            prompt = FIRST_SHOT + "```\n" + f.read() + "\n```"
            logger.info(f"Querying Gemini {MODEL}")
            logger.debug(prompt)
            c_code = gemini(prompt);
            
            # FOR DEBUGGING - replace above line with this one
            # c_code = HARD_CODED_C

            # Compile C provided by Gemini
            logger.info("Compiling C code from Gemini")
            if os.path.exists(ASM_DIFFER_CURRENT_FILE):
                os.remove(ASM_DIFFER_CURRENT_FILE)
            file_no_ext = os.path.splitext(os.path.basename(asm_file))[0]
            c_file = C_DIR + "/" + file_no_ext + ".c"
            write_c_file(c_code, c_file)
            success = True
            try:
                compile_c(c_file, ASM_DIFFER_CURRENT_FILE)
            except CalledProcessError:
                success = False


            with open(asm_file, "r", encoding="utf-8") as f:
                num_lines = sum(1 for _ in f)
            func_name = extract_arm_func_name(asm_file)

            if not success:
                # Record failure result
                record_failure(func_name, num_lines)
                continue

            # Diff target asm vs AI generated C code
            logger.info("Diffing assembly vs C")
            current_score, max_score, percent = score_asm(func_name)

            # Write results
            rows = [{
                "function": func_name,
                "percent": percent,
                "current_score": current_score,
                "max_score": max_score,
                "model": MODEL,
                "asm_lines": num_lines
            }]
            write_scores_csv(RESULT_FILE, rows, mode="a")
            print(f"Percent: {percent}, Current score: {current_score}, max_score {max_score}")

def record_failure(func_name: str, asm_lines: int):
    rows = [{
        "function": func_name,
        "percent": 0,
        "current_score": 1,
        "max_score": 1,
        "model": MODEL,
        "asm_lines": asm_lines
    }]
    write_scores_csv(RESULT_FILE, rows, mode="a")

def write_scores_csv(
    path: str | Path,
    rows: list[dict],
    *,
    fieldnames=("function", "percent", "current_score", "max_score", "model", "asm_lines"),
    mode="w",
    newline=""
):
    """
    Write rows to a CSV file with the specified columns.
    - path: target CSV file path
    - rows: iterable of dicts; keys should match fieldnames
    - fieldnames: CSV columns (default matches your requested order)
    - mode: file mode, 'w' to overwrite or 'a' to append
    """
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)

    write_header = mode == "w" or not path.exists()
    with path.open(mode, newline=newline, encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        if write_header:
            writer.writeheader()
        for r in rows:
            # Ensure row contains all required fields (fill missing with empty string)
            row = {k: r.get(k, "") for k in fieldnames}
            writer.writerow(row)

if __name__ == "__main__":
    main()