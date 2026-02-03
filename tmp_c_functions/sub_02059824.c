#include "../lib/include/nitro/types.h"
void CopyBitsFrom(void *src, void *dest, u32 count);
void memset(void *dest, s32 value, u32 count);
void Copy16BitsFrom(void *src, void *dest);
void sub_02014C20(void *src, void *dest);
void sub_0200DF2C(void *src, void *dest);
void sub_02051098(void *src, void *dest);

extern u8 *TEAM_MEMBER_TABLE_PTR;

void sub_02059824(void *pBitSource, s32 index);

void sub_02059824(void *pBitSource, s32 index) {
    CopyBitsFrom(pBitSource, (*TEAM_MEMBER_TABLE_PTR) + 0x9874 + index, 1);
    CopyBitsFrom(pBitSource, (*TEAM_MEMBER_TABLE_PTR) + 0x9850 + (index * 2), 16);

    for (int i = 0; i < 4; i++) {
        CopyBitsFrom(pBitSource, (*TEAM_MEMBER_TABLE_PTR) + 0x9856 + (index * 8) + (i * 2), 16);
    }

    s32 indexOffset = index * 0x1A0;
    for (int j = 0; j < 4; j++) {
        u8 *dest = (*TEAM_MEMBER_TABLE_PTR) + 0x936C + indexOffset + (j * 0x68);
        u8 temp;

        memset(dest, 0, 0x68);
        CopyBitsFrom(pBitSource, dest + 0x00, 4);

        CopyBitsFrom(pBitSource, &temp, 1);
        if (temp & 1) {
            dest[1] = 1;
        } else {
            dest[1] = 0;
        }

        CopyBitsFrom(pBitSource, dest + 0x02, 7);
        Copy16BitsFrom(pBitSource, dest + 0x03);
        CopyBitsFrom(pBitSource, dest + 0x06, 10);
        CopyBitsFrom(pBitSource, dest + 0x08, 16);
        CopyBitsFrom(pBitSource, dest + 0x0A, 16);
        CopyBitsFrom(pBitSource, dest + 0x0C, 11);
        CopyBitsFrom(pBitSource, dest + 0x0E, 10);
        CopyBitsFrom(pBitSource, dest + 0x10, 10);
        CopyBitsFrom(pBitSource, dest + 0x12, 8);
        CopyBitsFrom(pBitSource, dest + 0x13, 8);
        CopyBitsFrom(pBitSource, dest + 0x14, 8);
        CopyBitsFrom(pBitSource, dest + 0x15, 8);
        CopyBitsFrom(pBitSource, dest + 0x18, 24);
        sub_02014C20(pBitSource, dest + 0x1C);
        sub_0200DF2C(pBitSource, dest + 0x3E);
        sub_02051098(pBitSource, dest + 0x44);
        sub_02051098(pBitSource, dest + 0x48);
        CopyBitsFrom(pBitSource, dest + 0x4C, 69);
        CopyBitsFrom(pBitSource, dest + 0x58, 4);
        CopyBitsFrom(pBitSource, dest + 0x5A, 10);
        CopyBitsFrom(pBitSource, dest + 0x5C, 5);
        CopyBitsFrom(pBitSource, dest + 0x5E, 80);
    }
}