#include "../lib/include/nitro/types.h"
typedef struct Struct0205BBA4_Sub {
    u32 field_0;
    u32 field_4;
} Struct0205BBA4_Sub;

typedef struct Struct0205BBA4 {
    u8 field_0;
    u8 padding[11];
    Struct0205BBA4_Sub field_C;
} Struct0205BBA4;

extern Struct0205BBA4 *_020B0A54;

BOOL sub_0205BBA4(Struct0205BBA4_Sub *dest);

BOOL sub_0205BBA4(Struct0205BBA4_Sub *dest) {
    Struct0205BBA4 *ptr = _020B0A54;

    if (ptr->field_0 == 1) {
        if (ptr->field_C.field_4 != 0 || ptr->field_C.field_0 >= 2) {
            if (dest != NULL) {
                *dest = ptr->field_C;
            }
            return TRUE;
        }
    }

    return FALSE;
}