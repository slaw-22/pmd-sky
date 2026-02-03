#include "../lib/include/nitro/types.h"
void *memset(void *ptr, int value, u32 num);
void CopyBitsFrom(void *src, void *dst, u32 count);
void Copy16BitsFrom(void *src, void *dst);
void CopyMovesetFrom(void *src, void *dst);

void ReadMonsterFromSave(void *src, void *dst);

void ReadMonsterFromSave(void *src, void *dst)
{
    memset(dst, 0, 0x44);
    CopyBitsFrom(src, (u8 *)dst + 0x0, 1);
    CopyBitsFrom(src, (u8 *)dst + 0x1, 7);
    CopyBitsFrom(src, (u8 *)dst + 0x4, 0xb);
    Copy16BitsFrom(src, (u8 *)dst + 0x2);
    CopyBitsFrom(src, (u8 *)dst + 0x6, 7);
    CopyBitsFrom(src, (u8 *)dst + 0x7, 7);
    CopyBitsFrom(src, (u8 *)dst + 0x8, 0xa);
    CopyBitsFrom(src, (u8 *)dst + 0xa, 0xa);
    CopyBitsFrom(src, (u8 *)dst + 0xc, 8);
    CopyBitsFrom(src, (u8 *)dst + 0xd, 8);
    CopyBitsFrom(src, (u8 *)dst + 0xe, 8);
    CopyBitsFrom(src, (u8 *)dst + 0xf, 8);
    CopyBitsFrom(src, (u8 *)dst + 0x10, 0x18);
    CopyBitsFrom(src, (u8 *)dst + 0x14, 0x45);
    CopyBitsFrom(src, (u8 *)dst + 0x20, 4);
    CopyMovesetFrom(src, (u8 *)dst + 0x22);
    CopyBitsFrom(src, (u8 *)dst + 0x3a, 0x50);
}