#include "../lib/include/nitro/types.h"
typedef struct {
    u8 filler[0x18];
    u8 *data;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

u8 *sub_0205EBD8(u32 index);

u8 *sub_0205EBD8(u32 index)
{
    return MISSION_DELIVER_LIST_PTR.data + 0x300 + (index * 32);
}