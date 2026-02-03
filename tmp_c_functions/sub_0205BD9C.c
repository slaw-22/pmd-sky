#include "../lib/include/nitro/types.h"
typedef struct {
    u32 field_0;
    u32 field_4;
    u32 field_8;
    u32 field_C;
} TempStruct;

void sub_02050974(TempStruct *temp, u32 arg0, u32 arg1);
void CopyBitsFrom(TempStruct *temp, void *src, u32 count);
void sub_0205C19C(TempStruct *temp, void *src);
void *memset(void *dest, int ch, u32 count);
void Copy16BitsFrom(TempStruct *temp, void *src);
void sub_02059AE8(TempStruct *temp, void *src);
void CopyMovesetFrom(TempStruct *temp, void *src);
void sub_020509BC(TempStruct *temp);
u16 Rand16Bit(void);
void sub_020634F4(void);

extern void *_020B0A54[];
extern u8 _022B57BC[];

u32 sub_0205BD9C(u32 arg0, u32 arg1);

u32 sub_0205BD9C(u32 arg0, u32 arg1) {
    TempStruct temp;
    u8 *ptr;
    int i;

    sub_02050974(&temp, arg0, arg1);
    CopyBitsFrom(&temp, _022B57BC, 0x20);

    for (i = 0; i < 0x20; i++) {
        sub_0205C19C(&temp, (u8 *)_020B0A54[0] + (i * 0xb0));
    }

    ptr = (u8 *)_020B0A54[2];
    memset(ptr, 0, 0x44);

    CopyBitsFrom(&temp, ptr + 0, 4);
    CopyBitsFrom(&temp, ptr + 1, 7);
    Copy16BitsFrom(&temp, ptr + 2);
    CopyBitsFrom(&temp, ptr + 4, 0xb);
    sub_02059AE8(&temp, ptr + 6);
    sub_02059AE8(&temp, ptr + 7);
    CopyBitsFrom(&temp, ptr + 8, 0xa);
    CopyBitsFrom(&temp, ptr + 0xa, 0xa);
    CopyBitsFrom(&temp, ptr + 0xc, 8);
    CopyBitsFrom(&temp, ptr + 0xd, 8);
    CopyBitsFrom(&temp, ptr + 0xe, 8);
    CopyBitsFrom(&temp, ptr + 0xf, 8);
    CopyBitsFrom(&temp, ptr + 0x10, 0x18);
    CopyBitsFrom(&temp, ptr + 0x14, 0x45);
    CopyBitsFrom(&temp, ptr + 0x20, 4);
    CopyMovesetFrom(&temp, ptr + 0x22);
    CopyBitsFrom(&temp, ptr + 0x3a, 0x50);

    ptr = (u8 *)_020B0A54[2];
    memset(ptr + 0x44, 0, 6);
    CopyBitsFrom(&temp, ptr + 0x46, 0xb);
    CopyBitsFrom(&temp, ptr + 0x48, 0xb);

    CopyBitsFrom(&temp, _020B0A54[1], 0x20);

    for (i = 0; i < 0x20; i++) {
        CopyBitsFrom(&temp, (u8 *)_020B0A54[1] + 4 + (i * 8), 0x40);
    }

    sub_020509BC(&temp);
    Rand16Bit();
    sub_020634F4();

    return temp.field_8;
}