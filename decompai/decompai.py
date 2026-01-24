import sys, os
from temp_consts import SET_MONEY_CARRIED_CODE
from split_funcs import split_functions
from genai.gemini import gemini
from genai.prompt import FIRST_SHOT
from c_file import write_c_file

ASM_DIR = "tmp_arm_functions"
C_DIR = "tmp_c_functions"

def main():
    # Check GEMINI_API_KEY is set
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
            # print(asm_file + "\n==============\n"gemini(prompt))
            prompt = FIRST_SHOT + "```\n" + f.read() + "\n```"
            # asm_code = gemini(prompt);
            
            # TEMP FOR DEBUGGING
            c_code = SET_MONEY_CARRIED_CODE
            # print(asm_file, "\n", c_code)

            file_no_ext = os.path.splitext(os.path.basename(asm_file))[0]
            c_file = C_DIR + "/" + file_no_ext + ".c"
            write_c_file(c_code, c_file)

if __name__ == "__main__":
    main()