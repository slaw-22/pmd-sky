#include "../lib/include/nitro/types.h"
void CopyBitsTo(void *p0, const void *p1, u32 p2);
void sub_020515C4(void *p0, void *p1);

extern u8 _020A3673;
extern u8 _020A3670;

void sub_0205C440(void *p0, u8 *p1);

void sub_0205C440(void *p0, u8 *p1)
{
    CopyBitsTo(p0, p1, 4);
    sub_020515C4(p0, p1 + 4);
    CopyBitsTo(p0, p1 + 8, 0x18);
    CopyBitsTo(p0, p1 + 0xc, 0x40);
    CopyBitsTo(p0, p1 + 0x14, 0x40);
    CopyBitsTo(p0, p1 + 0x1c, 4);
    CopyBitsTo(p0, p1 + 0x1d, 0x50);
    CopyBitsTo(p0, p1 + 0x32, 0x120);
    CopyBitsTo(p0, p1 + 0x56, 0x240);
    CopyBitsTo(p0, p1 + 0xa0, 0xb);
    CopyBitsTo(p0, p1 + 0xa2, 0xb);
    CopyBitsTo(p0, p1 + 0xa4, 0x40);
    CopyBitsTo(p0, p1 + 0xac, 8);
    CopyBitsTo(p0, (p1[0xad] == 1) ? &_020A3673 : &_020A3670, 1);
    CopyBitsTo(p0, p1 + 0xae, 2);
}