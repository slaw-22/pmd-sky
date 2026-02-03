#include "../lib/include/nitro/types.h"
typedef struct {
    u8 filler_0[0x200];
    u8 missions[][0x20];
} MISSION_DELIVER_LIST;

typedef struct {
    u8 filler_0[0x18];
    MISSION_DELIVER_LIST *list;
} MISSION_DELIVER_LIST_CONTAINER;

extern MISSION_DELIVER_LIST_CONTAINER MISSION_DELIVER_LIST_PTR;

BOOL sub_0205EB00(u32 index);

BOOL sub_0205EB00(u32 index)
{
    return MISSION_DELIVER_LIST_PTR.list->missions[index][0] == 0;
}