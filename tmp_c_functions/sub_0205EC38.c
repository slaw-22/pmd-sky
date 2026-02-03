#include "../lib/include/nitro/types.h"
typedef struct {
    u8 pad[0x18];
    u8 *data;
} MISSION_DELIVER_LIST;

extern MISSION_DELIVER_LIST MISSION_DELIVER_LIST_PTR;

u8 *sub_0205EC38(u32 index);

u8 *sub_0205EC38(u32 index)
{
    return &MISSION_DELIVER_LIST_PTR.data[0x320 + index * 32];
}