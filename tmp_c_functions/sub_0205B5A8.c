#include "../lib/include/nitro/types.h"
u32 GetLanguageType(void);
u32 RandInt(u32 n);
u32 sub_02063504(void);
u16 Rand16Bit(void);
void sub_020510E8(u32 val);
u32 sub_02051134(void);
void sub_020634F4(u32 val);
void GetStringFromFileVeneer(u16 *buffer, u32 id);
void StrcpyName(u16 *dest, const u16 *src);
void sub_0205BAB0(u8 *ptr);
void sub_0205B738(void *ptr);
void sub_0205B6EC(void *ptr);

typedef struct {
    u8 f0;
    u8 pad_01[3];
    u8 f4;
    u8 f5;
    u8 pad_06[2];
    u32 f8;
    u32 pad_0C[3];
    u32 f18;
    u8 f1c;
    u8 f1d[119];
    u32 fA8;
    u8 fAc;
    u8 pad_AD;
    u8 fAe;
    u8 pad_AF;
} Struct0205B5A8;

extern const Struct0205B5A8 _020A3678;

void sub_0205B5A8(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

void sub_0205B5A8(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    u16 buffer[10];
    Struct0205B5A8 local_struct = _020A3678;

    local_struct.f4 = (u8)arg1;
    local_struct.f5 = (u8)arg2;
    local_struct.f1c = (u8)GetLanguageType();
    local_struct.fAc = (u8)arg3;
    local_struct.fAe = (u8)(RandInt(2) | 2);

    u32 r5_val = sub_02063504();
    u32 r0_val = Rand16Bit();
    sub_020510E8(r0_val | (r5_val << 16));

    local_struct.f0 = (u8)arg0;
    local_struct.f18 = sub_02051134();
    local_struct.fA8 = sub_02051134();
    local_struct.f8 = sub_02051134() & 0x00FFFFFF;

    sub_020634F4(local_struct.fA8);

    GetStringFromFileVeneer(buffer, 0x38C9);
    StrcpyName((u16 *)&local_struct.f1d[0], buffer);

    if (arg0 == 1) {
        sub_0205BAB0(&local_struct.f4);
    } else if (arg0 == 5) {
        sub_0205B738(&local_struct);
    } else {
        sub_0205B6EC(&local_struct);
    }
}