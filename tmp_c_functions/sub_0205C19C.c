#include "../lib/include/nitro/types.h"
void CopyBitsFrom(void *arg0, void *arg1, u32 arg2);
void Copy16BitsFrom(void *arg0, void *arg1);

void sub_0205C19C(void *arg0, u8 *arg1);

void sub_0205C19C(void *arg0, u8 *arg1)
{
    u8 temp;

    CopyBitsFrom(arg0, arg1, 4);
    Copy16BitsFrom(arg0, arg1 + 0x4);
    CopyBitsFrom(arg0, arg1 + 0x8, 0x18);
    CopyBitsFrom(arg0, arg1 + 0xc, 0x40);
    CopyBitsFrom(arg0, arg1 + 0x14, 0x40);
    CopyBitsFrom(arg0, arg1 + 0x1c, 4);
    CopyBitsFrom(arg0, arg1 + 0x1d, 0x50);
    CopyBitsFrom(arg0, arg1 + 0x32, 0x120);
    CopyBitsFrom(arg0, arg1 + 0x56, 0x240);
    CopyBitsFrom(arg0, arg1 + 0xa0, 0xb);
    CopyBitsFrom(arg0, arg1 + 0xa2, 0xb);
    CopyBitsFrom(arg0, arg1 + 0xa4, 0x40);
    CopyBitsFrom(arg0, arg1 + 0xac, 8);
    CopyBitsFrom(arg0, &temp, 1);
    arg1[0xad] = (u8)(temp != 0);
    CopyBitsFrom(arg0, arg1 + 0xae, 2);
}