#include "../lib/include/nitro/types.h"
u32 sub_0205BD40(u32 param);

typedef struct {
    u8 pad[0xae];
    u8 val;
    u8 pad2;
} UnknownStruct;

extern UnknownStruct *_020B0A54;

void sub_0205BD14(u32 *dest, s32 index);

void sub_0205BD14(u32 *dest, s32 index) {
    *dest = sub_0205BD40(_020B0A54[index].val);
}