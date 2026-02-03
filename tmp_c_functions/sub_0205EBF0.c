#include "../lib/include/nitro/types.h"
typedef struct {
    u8 filler[0x18];
    u8 *data;
} MissionDeliverList;

extern MissionDeliverList MISSION_DELIVER_LIST_PTR;

BOOL sub_0205EBF0(u32 index);

BOOL sub_0205EBF0(u32 index)
{
    if (MISSION_DELIVER_LIST_PTR.data[index * 32 + 0x300] == 0) {
        return TRUE;
    }
    return FALSE;
}