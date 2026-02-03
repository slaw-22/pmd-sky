#include "../lib/include/nitro/types.h"
s32 GetAllPossibleMonsters(s16 **monsters, s32 unused);
s32 RandInt(s32 max);
void sub_02065B94(s32 id);

typedef struct {
    u8 padding0;
    u8 field_1;
    u8 padding1[12];
    s16 field_E;
} Struct_0205EB5C;

void sub_0205EB5C(Struct_0205EB5C *ptr);

void sub_0205EB5C(Struct_0205EB5C *ptr) {
    if (ptr->field_1 == 11 || ptr->field_1 == 14) {
        s16 *monsters = NULL;
        s32 count = GetAllPossibleMonsters(&monsters, 0);

        if (count > 0) {
            while (1) {
                s32 idx = RandInt(count);
                if (ptr->field_1 == 11) {
                    if (ptr->field_E == monsters[idx]) {
                        if (count <= 1) {
                            return;
                        }
                        continue;
                    }
                }
                sub_02065B94(monsters[idx]);
                return;
            }
        }
    } else {
        sub_02065B94(ptr->field_E);
    }
}