#include "../lib/include/nitro/types.h"
typedef struct InnerStruct {
    u8 padding[2];
    u8 val;
} InnerStruct;

typedef struct OuterStruct {
    u8 padding[8];
    InnerStruct *inner;
} OuterStruct;

void MemsetSimple(void *dest, u32 val, u32 len);
void sub_02055F04(InnerStruct *p, u32 a);
u32 sub_02051788(u32 val);

extern OuterStruct _020B0A54;

void sub_0205BC30(u32 a, u32 b);

void sub_0205BC30(u32 a, u32 b) {
    if (a == 0) {
        MemsetSimple(_020B0A54.inner, 0, 0x44);
        return;
    }

    sub_02055F04(_020B0A54.inner, a);

    if (b != 0) {
        return;
    }

    _020B0A54.inner->val = (u8)sub_02051788(_020B0A54.inner->val);
}