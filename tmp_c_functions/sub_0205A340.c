#include "../lib/include/nitro/types.h"
typedef struct {
    u8 filler_0;
    u8 field_1;
    u16 filler_2;
    s16 field_4;
    u8 field_6;
    u8 field_7;
    u8 filler_8[8];
    u32 field_10;
    u8 filler_14[38];
    u16 name[5];
} Struct_0205A340;

void GetLvlUpEntry(u32 *lvlUpValue, s16 arg1, u8 arg2);
u16 *GetNameString(s16 id);
void StrcpyName(u16 *dest, const u16 *src);
int StrncmpSimple(const u16 *s1, const u16 *s2, u32 n);
void StrncpyName(u16 *dest, const u16 *src, u32 n);
void sub_02055D7C(s16 id, Struct_0205A340 *data);
s16 sub_02055CCC(Struct_0205A340 *data);

s16 sub_0205A340(s16 *arg0, const Struct_0205A340 *arg1, s16 arg2);

s16 sub_0205A340(s16 *arg0, const Struct_0205A340 *arg1, s16 arg2) {
    u16 name_buffer[32];
    u32 temp_40;
    u8 filler_44[8];
    Struct_0205A340 data = *arg1;
    s16 old_field_4 = data.field_4;

    GetLvlUpEntry(&temp_40, arg2, data.field_1);

    data.field_4 = arg2;
    data.field_10 = temp_40;

    if (data.field_6 == 0) {
        data.field_6 = data.field_1;
    } else if (data.field_7 == 0) {
        data.field_7 = data.field_1;
    }

    StrcpyName(name_buffer, GetNameString(old_field_4));

    if (StrncmpSimple(name_buffer, data.name, 10) == 0) {
        StrncpyName(data.name, GetNameString(arg2), 10);
    }

    if (*arg0 != -1) {
        sub_02055D7C(*arg0, &data);
    } else {
        *arg0 = sub_02055CCC(&data);
    }

    return *arg0;
}