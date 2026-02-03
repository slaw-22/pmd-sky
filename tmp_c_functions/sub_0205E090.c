#include "../lib/include/nitro/types.h"
typedef struct Mission Mission;

struct Mission {
    u8 data[32];
};

struct MissionList {
    u8 filler[0x18];
    Mission *missions;
};

extern struct MissionList MISSION_DELIVER_LIST_PTR;

BOOL sub_0205E01C(Mission *mission, u32 a1, u32 a2, u32 a3);

BOOL sub_0205E090(u32 a1, u32 a2, u32 a3);

BOOL sub_0205E090(u32 a1, u32 a2, u32 a3) {
    s32 i;

    for (i = 0; i < 8; i++) {
        if (sub_0205E01C(&MISSION_DELIVER_LIST_PTR.missions[i], a1, a2, a3)) {
            return TRUE;
        }
    }

    for (i = 0; i < 8; i++) {
        if (sub_0205E01C(&MISSION_DELIVER_LIST_PTR.missions[i + 8], a1, a2, a3)) {
            return TRUE;
        }
    }

    for (i = 0; i < 8; i++) {
        if (sub_0205E01C(&MISSION_DELIVER_LIST_PTR.missions[i + 16], a1, a2, a3)) {
            return TRUE;
        }
    }

    for (i = 0; i < 1; i++) {
        if (sub_0205E01C(&MISSION_DELIVER_LIST_PTR.missions[i + 24], a1, a2, a3)) {
            return TRUE;
        }
    }

    for (i = 0; i < 1; i++) {
        if (sub_0205E01C(&MISSION_DELIVER_LIST_PTR.missions[i + 25], a1, a2, a3)) {
            return TRUE;
        }
    }

    return FALSE;
}