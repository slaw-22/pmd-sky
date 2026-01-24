import sys, os
from split_funcs import split_arm_functions
from genai.gemini import gemini
from genai.prompt import FIRST_SHOT

def main():
    # Check GEMINI_API_KEY is set
    if not os.getenv("GEMINI_API_KEY"):
        print("Error: GEMINI_API_KEY environment variable is not set.")
        sys.exit(1)

    if len(sys.argv) < 2:
        print("Usage: python decompai.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]
    funcs_array = split_arm_functions(filename)
    for func_file in funcs_array:
        with open(func_file, "r", encoding="utf-8") as f:
            # print(func_file + "\n==============\n"gemini(prompt))
            # prompt = FIRST_SHOT + "```\n" + f.read() + "\n```"
            # asm_code = gemini(prompt);
            
            # TEMP FOR DEBUGGING
            
            asm_code = # LOAD ASM CODE
            
            print(func_file, asm_code)


if __name__ == "__main__":
    main()