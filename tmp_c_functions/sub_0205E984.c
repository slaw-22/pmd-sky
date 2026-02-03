#include "../lib/include/nitro/types.h"
typedef struct {
    u8 data[32];
} MISSION_DELIVER_LIST_ENTRY;

typedef struct {
    u32 filler[6];
    MISSION_DELIVER_LIST_ENTRY *entries;
} MISSION_DELIVER_LIST;

extern MISSION_DELIVER_LIST MISSION_DELIVER_LIST_PTR;

BOOL sub_0205E984(u32 index);

BOOL sub_0205E984(u32 index)
{
    return MISSION_DELIVER_LIST_PTR.entries[index].data[0] == 0;
}