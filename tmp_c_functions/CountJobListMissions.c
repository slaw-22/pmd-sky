#include "../lib/include/nitro/types.h"
s32 sub_0205E448(s32 a0, u8 *a1);

extern u8 *MISSION_DELIVER_LIST_PTR[];

s32 CountJobListMissions(void);

s32 CountJobListMissions(void) {
    return sub_0205E448(8, MISSION_DELIVER_LIST_PTR[6] + 0x100);
}