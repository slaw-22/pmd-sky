TYPES=("""Please use these types, and defines:
        typedef unsigned char u8;
        typedef unsigned short int u16;
        typedef unsigned long u32;

        typedef signed char s8;
        typedef signed short int s16;
        typedef signed long s32;

        typedef unsigned long long int u64;
        typedef signed long long int s64;

        typedef volatile u8 vu8;
        typedef volatile u16 vu16;
        typedef volatile u32 vu32;
        typedef volatile u64 vu64;

        typedef volatile s8 vs8;
        typedef volatile s16 vs16;
        typedef volatile s32 vs32;
        typedef volatile s64 vs64;

        typedef float f32;
        typedef volatile f32 vf32;

        typedef u8 REGType8;
        typedef u16 REGType16;
        typedef u32 REGType32;
        typedef u64 REGType64;

        typedef vu8 REGType8v;
        typedef vu16 REGType16v;
        typedef vu32 REGType32v;
        typedef vu64 REGType64v;

        typedef int BOOL;
        #define TRUE 1
        #define FALSE 0
        #define NULL 0
       
       Do not include the provided typedefs and defines in your output.
       """)

CONTEXT=("Please respond only with the C code, no inline assembly, and no surrounding "
    "text or markdown formatting. Do not include the three backticks "
    "that define a markdown codeblock. Format the C code appropriately e.g. with indents\n"
    "Include protoypes for all functions that are being called.\n"
    "Context is armv5te, Metrowerks 3.0 build 137 MW2.0sp2p2 "
    "-O4,s -enum min -proc arm946e -gccext,on -fp soft -lang c99 -char signed "
    "-inline on,noauto -Cpp_exceptions off -gccinc -interworking -gccdep -MD -g\n" + TYPES)

FIRST_SHOT=("Generate C code that, when compiled, produces the precise assembly code specified.\n"
     + CONTEXT + "\n" + "Target assembly:\n")

TRY_AGAIN_PROMPT=("I'm trying to generate C code that matches "
    "the target assembly code precisely. However the C code "
    "didn't match.\n"
    "Please can you try to make this a closer match? I will share the target "
    "assembly, then the C code that did not match, then the generated "
    "assembly from the C code that did not match\n"
    + CONTEXT + "\n");