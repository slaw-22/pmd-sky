#include "../lib/include/nitro/types.h"
void ClearMissionData(void *p);
extern void *MISSION_DELIVER_LIST_PTR[];

void sub_0205EC78(u32 index);

void sub_0205EC78(u32 index)
{
    ClearMissionData((u8 *)MISSION_DELIVER_LIST_PTR[6] + 0x320 + index * 32);
}