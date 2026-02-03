#include "../lib/include/nitro/types.h"
void CopyBitsTo(void *dest, const void *src, u32 count);
void sub_02051620(void *dest, const void *src);
BOOL sub_0205BD40(u8 val);

extern u8 _020A3671;
extern u8 _020A3672;

void sub_0205C548(void *dest, u8 *src);

void sub_0205C548(void *dest, u8 *src)
{
    CopyBitsTo(dest, src, 4);
    sub_02051620(dest, src + 4);

    if (src[0] == 1) {
        CopyBitsTo(dest, src + 8, 24);
    }

    CopyBitsTo(dest, src + 0x14, 64);
    CopyBitsTo(dest, src + 0x1C, 4);
    CopyBitsTo(dest, src + 0x1D, 80);

    if (src[0] != 1) {
        CopyBitsTo(dest, src + 0xA0, 10);
        CopyBitsTo(dest, src + 0xA2, 10);
    }

    CopyBitsTo(dest, src + 0xA4, 64);

    CopyBitsTo(dest, (src[0xAE] & 1) ? &_020A3672 : &_020A3671, 1);

    CopyBitsTo(dest, &_020A3672, 1);

    if (src[0] == 1) {
        return;
    }

    if (sub_0205BD40(src[0xAE])) {
        return;
    }

    {
        s16 v1;
        s16 v0;

        v0 = (s16)((s32)*(u16 *)(src + 0xA0) >> 10);
        v1 = (s16)((s32)*(s16 *)(src + 0xA2) >> 10);

        CopyBitsTo(dest, &v0, 1);
        CopyBitsTo(dest, &v1, 1);
    }
}