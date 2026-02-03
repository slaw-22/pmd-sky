#include "../lib/include/nitro/types.h"
void MemsetSimple(void *dest, int val, u32 len);

typedef struct {
    u8 f0;
    u8 pad[161];
    u16 fA2;
    u8 pad2[12];
} UnknownStruct;

extern UnknownStruct *_020B0A54;

void sub_0205B7C8(s32 index);

void sub_0205B7C8(s32 index) {
    MemsetSimple(&_020B0A54[index], 0, 0xB0);
    _020B0A54[index].f0 = 0;
    _020B0A54[index].fA2 = 0;
}