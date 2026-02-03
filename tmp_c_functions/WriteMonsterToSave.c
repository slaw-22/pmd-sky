#include "../lib/include/nitro/types.h"
void CopyBitsTo(void *p0, void *p1, u32 p2);
void sub_020515C4(void *p0, void *p1);
void CopyMovesetTo(void *p0, void *p1);

void WriteMonsterToSave(void *p0, u8 *p1);

void WriteMonsterToSave(void *p0, u8 *p1)
{
    CopyBitsTo(p0, p1, 1);
    CopyBitsTo(p0, p1 + 1, 7);
    CopyBitsTo(p0, p1 + 4, 0xb);
    sub_020515C4(p0, p1 + 2);
    CopyBitsTo(p0, p1 + 6, 7);
    CopyBitsTo(p0, p1 + 7, 7);
    CopyBitsTo(p0, p1 + 8, 0xa);
    CopyBitsTo(p0, p1 + 0xa, 0xa);
    CopyBitsTo(p0, p1 + 0xc, 8);
    CopyBitsTo(p0, p1 + 0xd, 8);
    CopyBitsTo(p0, p1 + 0xe, 8);
    CopyBitsTo(p0, p1 + 0xf, 8);
    CopyBitsTo(p0, p1 + 0x10, 0x18);
    CopyBitsTo(p0, p1 + 0x14, 0x45);
    CopyBitsTo(p0, p1 + 0x20, 4);
    CopyMovesetTo(p0, p1 + 0x22);
    CopyBitsTo(p0, p1 + 0x3a, 0x50);
}