#include "../lib/include/nitro/types.h"
struct Data {
    u8 pad_00[0x56];
    s16 field_56;
    u8 field_58[30];
};

s32 sub_0205B0B8(struct Data *ptr);

s32 sub_0205B0B8(struct Data *ptr) {
    s16 val = ptr->field_56;
    s32 r2 = 16;
    s32 result = 0;
    s32 i = result;
    s32 ip = (s32)val - 1;
    r2 -= 12;

    for (i = 0; i < 10; i++) {
        if (ip >= 0 && r2 >= 16) {
            if (ip >= 30) {
                break;
            }
            if (ptr->field_58[ip] != 0) {
                if (i >= 1) {
                    result++;
                }
            }
        }
        ip++;
        r2 += 12;
    }

    return result;
}