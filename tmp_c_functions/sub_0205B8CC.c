#include "../lib/include/nitro/types.h"
BOOL sub_0205B560(u32 *ptr, u32 val);

typedef struct {
    u32 field0;
    u32 field4;
} InnerStruct_0205B8CC;

typedef struct {
    u32 field0;
    InnerStruct_0205B8CC *array;
} OuterStruct_0205B8CC;

extern OuterStruct_0205B8CC _020B0A54;

BOOL sub_0205B8CC(u32 val);

BOOL sub_0205B8CC(u32 val)
{
    s32 i;

    for (i = 0; i < 32; i++) {
        if (sub_0205B560(&_020B0A54.array[i].field4, val)) {
            return TRUE;
        }
    }

    return FALSE;
}