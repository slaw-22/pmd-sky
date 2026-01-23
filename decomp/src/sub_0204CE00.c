#include "../../lib/include/nitro/types.h"

extern int GetGameMode(void);
extern int LoadScriptVariableValueAtIndex(int index, int value);

int sub_0204CE00(int arg0);

int sub_0204CE00(int arg0) {
    // This instruction sequence (mov r0, r4, lsl #0x10; mov r2, r0, lsr #0x10)
    // calculates (unsigned short)arg0 and stores it in r2, using r0 as a temporary.
    // The 'volatile' keyword is used to discourage the Metrowerks compiler (with -O4,s)
    // from optimizing away this specific calculation, even though the resulting value
    // in r2 is not explicitly used later in a way that affects the C program's observable output.
    // This is an attempt to precisely match the target assembly's apparent dead code.
    volatile unsigned short _dummy_val_in_r2_ = (unsigned short)arg0;

    u16 gameMode = GetGameMode();

    int result;
    if (gameMode == 3) {
        // Corresponds to:
        // mov r0, #0
        // mov r1, #0x56
        // bl LoadScriptVariableValueAtIndex
        result = LoadScriptVariableValueAtIndex(0, 0x56);
    } else { // Corresponds to the _0204CE2C label
        // Corresponds to:
        // mov r0, #0 (implicitly from the previous mov r0, #0)
        // mov r1, #0x55
        // bl LoadScriptVariableValueAtIndex
        result = LoadScriptVariableValueAtIndex(0, 0x55);
    }

    // The final assembly sequence 'cmp r0, #0; movne r0, #1; moveq r0, #0; and r0, r0, #0xff'
    // evaluates 'result != 0', returning 1 if true, 0 if false, and then performs a byte-wise AND.
    // Returning a C99 '_Bool' type, which is then promoted to 'int' for the function's return,
    // often causes compilers to generate this precise pattern to ensure the return value
    // is canonical (0 or 1 in the least significant byte).
    return (_Bool)(result != 0);
}