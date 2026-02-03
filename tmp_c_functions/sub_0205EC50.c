#include "../lib/include/nitro/types.h"
typedef struct {
    u8 filler[0x320];
    u8 items[1][32];
} MissionDeliverData;

typedef struct {
    u8 filler[0x18];
    MissionDeliverData *data;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

BOOL sub_0205EC50(u32 index);

BOOL sub_0205EC50(u32 index)
{
    if (MISSION_DELIVER_LIST_PTR.data->items[index][0] == 0) {
        return TRUE;
    }

    return FALSE;
}