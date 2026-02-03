#include "../lib/include/nitro/types.h"
extern void *MISSION_DELIVER_LIST_PTR[];

void *sub_0205E970(u32 index);

void *sub_0205E970(u32 index)
{
    return (u8 *)MISSION_DELIVER_LIST_PTR[6] + (index * 32);
}