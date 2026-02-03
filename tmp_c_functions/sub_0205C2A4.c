#include "../lib/include/nitro/types.h"
void CopyBitsFrom(void *stream, void *dest, u32 bits);
void sub_02051648(void *stream, void *dest);
u8 GetMaxRescueAttempts(u8 arg);
BOOL sub_0205BD40(u8 arg);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u8 unk14[8];
    u8 unk1C;
    u8 unk1D[131];
    u16 unkA0;
    s16 unkA2;
    u8 unkA4[8];
    u8 unkAC;
    u8 unkAD;
    u8 unkAE;
} Struct0205C2A4;

void sub_0205C2A4(void *stream, Struct0205C2A4 *ptr);

void sub_0205C2A4(void *stream, Struct0205C2A4 *ptr) {
    u8 temp[8];

    CopyBitsFrom(stream, ptr, 4);
    sub_02051648(stream, &ptr->unk4);

    if (ptr->unk0 != 1) {
        ptr->unk8 = 0;
    } else {
        CopyBitsFrom(stream, &ptr->unk8, 24);
    }

    ptr->unkC = 0;
    ptr->unk10 = 0;
    CopyBitsFrom(stream, &ptr->unk14, 64);
    CopyBitsFrom(stream, &ptr->unk1C, 4);
    CopyBitsFrom(stream, &ptr->unk1D, 80);

    if (ptr->unk0 == 1) {
        ptr->unkA0 = 0;
        ptr->unkA2 = 0;
    } else {
        CopyBitsFrom(stream, &ptr->unkA0, 10);
        CopyBitsFrom(stream, &ptr->unkA2, 10);
    }

    CopyBitsFrom(stream, &ptr->unkA4, 64);

    ptr->unkAC = GetMaxRescueAttempts(ptr->unk4);
    ptr->unkAD = 1;

    CopyBitsFrom(stream, &temp[0], 1);
    ptr->unkAE = (u8)(temp[0] != 0);

    CopyBitsFrom(stream, &temp[0], 1);
    if (temp[0] == 1) {
        ptr->unkAE |= 2;
    }

    if (ptr->unk0 != 1) {
        if (sub_0205BD40(ptr->unkAE) == FALSE) {
            CopyBitsFrom(stream, &temp[4], 1);
            CopyBitsFrom(stream, &temp[2], 1);

            ptr->unkA0 |= (u16)(temp[4] << 10);
            ptr->unkA2 |= (s16)(temp[2] << 10);
        }
    }
}