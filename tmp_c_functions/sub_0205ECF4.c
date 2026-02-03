#include "../lib/include/nitro/types.h"
typedef struct {
    u8 fill0[4];
    u8 field_4;
    u8 field_5;
} InputStruct;

typedef struct {
    u8 fill0[24];
    u8 *data;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

BOOL IsMissionSuspendedAndValid(void);
BOOL sub_0205E258(InputStruct *arg0);
BOOL sub_0205E01C(u8 *arg0, u8 arg1, u8 arg2, BOOL arg3);

BOOL sub_0205ECF4(InputStruct *arg0);

BOOL sub_0205ECF4(InputStruct *arg0) {
    u8 r5 = arg0->field_4;
    u8 r6 = arg0->field_5;
    BOOL r7 = FALSE;

    if (!IsMissionSuspendedAndValid()) {
        return r7;
    }

    if (sub_0205E258(arg0)) {
        r7 = TRUE;
    }

    for (int i = 0; i < 8; i++) {
        u8 *data = MISSION_DELIVER_LIST_PTR.data;
        if (data[i * 32 + 0x100] == 5) {
            if (sub_0205E01C(&data[i * 32 + 0x100], r5, r6, r7)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}