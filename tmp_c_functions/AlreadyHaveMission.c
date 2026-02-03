#include "../lib/include/nitro/types.h"
BOOL AreMissionsEquivalent(void *mission1, void *mission2);

typedef struct Mission {
    u8 type;
    u8 padding[0x1f];
} Mission;

typedef struct MissionList {
    u8 padding[0x100];
    Mission missions[8];
} MissionList;

typedef struct MissionDeliverList {
    u8 padding[0x18];
    MissionList *list;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

BOOL AlreadyHaveMission(void *mission);

BOOL AlreadyHaveMission(void *mission) {
    s32 i;

    for (i = 0; i < 8; i++) {
        MissionList *list = MISSION_DELIVER_LIST_PTR.list;

        if (list->missions[i].type != 0) {
            if (AreMissionsEquivalent(mission, &list->missions[i])) {
                return TRUE;
            }
        }
    }

    return FALSE;
}