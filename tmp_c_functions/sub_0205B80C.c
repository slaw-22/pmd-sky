#include "../lib/include/nitro/types.h"
void sub_0205B7C8(s32 i);

typedef struct {
    u8 field_0;
    u8 fill_1[11];
    u32 field_C;
    u32 field_10;
    u8 fill_14[153];
    u8 field_AD;
    u8 fill_AE[2];
} Struct_020B0A54;

extern Struct_020B0A54 *_020B0A54;

void sub_0205B80C(void);

void sub_0205B80C(void) {
    s8 i;
    for (i = 0; i < 32; i++) {
        Struct_020B0A54 *ptr = &_020B0A54[i];
        BOOL cond = (*(u64 *)&ptr->field_C >= 2);

        if (cond && ptr->field_AD != 0 && ptr->field_0 != 1 && ptr->field_0 != 7) {
            sub_0205B7C8(i);
        }
    }
}