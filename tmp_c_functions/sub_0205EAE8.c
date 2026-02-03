#include "../lib/include/nitro/types.h"
extern u8 *MISSION_DELIVER_LIST_PTR[];

u8 *sub_0205EAE8(u32 index);

u8 *sub_0205EAE8(u32 index)
{
    return MISSION_DELIVER_LIST_PTR[6] + 0x200 + index * 32;
}