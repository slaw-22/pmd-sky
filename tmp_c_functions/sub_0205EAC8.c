#include "../lib/include/nitro/types.h"
void sub_0205E448(u32 a, u8 *b);

extern struct {
    u8 filler[0x18];
    u8 *ptr;
} MISSION_DELIVER_LIST_PTR;

void sub_0205EAC8(void);

void sub_0205EAC8(void) {
    sub_0205E448(8, MISSION_DELIVER_LIST_PTR.ptr + 0x200);
}