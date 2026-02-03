#include "../lib/include/nitro/types.h"
void ClearMissionData(void *data);

typedef struct {
    u8 filler[0x18];
    u8 *work;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

void sub_0205C75C(void);

void sub_0205C75C(void) {
    s32 i;

    for (i = 0; i < 8; i++) {
        ClearMissionData(MISSION_DELIVER_LIST_PTR.work + (s32)(s8)i * 32);
    }

    for (i = 0; i < 8; i++) {
        ClearMissionData(MISSION_DELIVER_LIST_PTR.work + 0x100 + (s32)(s8)i * 32);
    }

    for (i = 0; i < 8; i++) {
        ClearMissionData(MISSION_DELIVER_LIST_PTR.work + 0x200 + (s32)(s8)i * 32);
    }

    ClearMissionData(MISSION_DELIVER_LIST_PTR.work + 0x300);
    ClearMissionData(MISSION_DELIVER_LIST_PTR.work + 0x320);

    for (i = 0; i < 16; i++) {
        MISSION_DELIVER_LIST_PTR.work[i * 12 + 0x340] = 0xFF;
        MISSION_DELIVER_LIST_PTR.work[i * 12 + 0x341] = 1;
        *(u32 *)&MISSION_DELIVER_LIST_PTR.work[i * 12 + 0x344] = 0;
        *(u32 *)&MISSION_DELIVER_LIST_PTR.work[i * 12 + 0x348] = 0;
    }
}