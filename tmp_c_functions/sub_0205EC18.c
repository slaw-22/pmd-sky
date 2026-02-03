#include "../lib/include/nitro/types.h"
void ClearMissionData(u8 *ptr);

struct MissionDeliverList {
    u8 padding[0x18];
    u8 *data;
};

extern struct MissionDeliverList MISSION_DELIVER_LIST_PTR;

void sub_0205EC18(u32 index);

void sub_0205EC18(u32 index)
{
    ClearMissionData(MISSION_DELIVER_LIST_PTR.data + 0x300 + index * 32);
}