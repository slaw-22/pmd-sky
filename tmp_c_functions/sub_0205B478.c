#include "../lib/include/nitro/types.h"
void sub_0204A198(u8 *ptr);
void MemsetSimple(void *dest, u32 val, u32 len);

extern u32 *_020B0A54[];
extern u32 _022B57BC;

void sub_0205B478(void);

void sub_0205B478(void) {
    u8 stack[8];
    u32 val;
    int i;

    sub_0204A198(stack);

    val = (u32)((stack[2] << 24) | (stack[3] << 16) | (stack[4] << 8) | stack[5]);
    _022B57BC = val;

    MemsetSimple(_020B0A54[0], 0, 0x1600);
    MemsetSimple(_020B0A54[2], 0, 0x4C);

    for (i = 0; i < 0x20; i++) {
        ((u8 *)_020B0A54[0])[i * 0xB0] = 0;
        *(u16 *)((u8 *)_020B0A54[0] + i * 0xB0 + 0xA2) = 0;
    }

    i = 0;
    ((u32 *)_020B0A54[1])[i] = 0;
    for (i = 0; i < 0x20; i++) {
        ((u32 *)_020B0A54[1])[2 * i + 1] = 0;
        ((u32 *)_020B0A54[1])[2 * i + 2] = 0xFFFFFFFF;
    }
}