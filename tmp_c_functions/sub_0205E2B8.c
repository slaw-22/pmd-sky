#include "../lib/include/nitro/types.h"
BOOL sub_0205E288(u8 *ptr, u32 arg0, u32 arg1);

typedef struct {
    u8 filler[0x18];
    u8 *data;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

BOOL sub_0205E2B8(u32 arg0, u32 arg1);

BOOL sub_0205E2B8(u32 arg0, u32 arg1) {
    int i;

    for (i = 0; i < 8; i++) {
        if (sub_0205E288(MISSION_DELIVER_LIST_PTR.data + (i * 32), arg0, arg1)) {
            return TRUE;
        }
    }

    for (i = 0; i < 8; i++) {
        if (sub_0205E288(MISSION_DELIVER_LIST_PTR.data + 0x100 + (i * 32), arg0, arg1)) {
            return TRUE;
        }
    }

    for (i = 0; i < 8; i++) {
        if (sub_0205E288(MISSION_DELIVER_LIST_PTR.data + 0x200 + (i * 32), arg0, arg1)) {
            return TRUE;
        }
    }

    for (i = 0; i < 1; i++) {
        if (sub_0205E288(MISSION_DELIVER_LIST_PTR.data + 0x300 + (i * 32), arg0, arg1)) {
            return TRUE;
        }
    }

    for (i = 0; i < 1; i++) {
        if (sub_0205E288(MISSION_DELIVER_LIST_PTR.data + 0x320 + (i * 32), arg0, arg1)) {
            return TRUE;
        }
    }

    return FALSE;
}