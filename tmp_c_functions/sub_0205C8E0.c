#include "../lib/include/nitro/types.h"
BOOL sub_0205C8E0(const u8 *p1, const u8 *p2);

BOOL sub_0205C8E0(const u8 *p1, const u8 *p2)
{
    u8 type = *p1;

    if (type != *p2) {
        return FALSE;
    }

    if (type == 0) {
        if (*(u16 *)(p1 + 2) != *(u16 *)(p2 + 2)) {
            return FALSE;
        }
    }

    if (type == 1) {
        if (*(s16 *)(p1 + 2) != *(s16 *)(p2 + 2)) {
            return FALSE;
        }
    }

    return TRUE;
}