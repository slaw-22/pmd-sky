#include "../lib/include/nitro/types.h"
u8 sub_0205C870(u32 type, s16 *ptr1, s16 *ptr2);

u8 sub_0205C870(u32 type, s16 *ptr1, s16 *ptr2)
{
    switch (type) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
        return (u8)(*ptr1 == *ptr2);
    case 5:
        return TRUE;
    case 6:
        return (u8)(*ptr1 == *ptr2);
    default:
        return FALSE;
    }
}