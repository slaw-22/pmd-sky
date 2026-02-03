#include "../lib/include/nitro/types.h"
void sub_020600CC(void);

extern u32 MISSION_DELIVER_LIST_PTR[];
extern u8 _022B6F10[];

void sub_0205C73C(void);

void sub_0205C73C(void) {
    MISSION_DELIVER_LIST_PTR[6] = (u32)_022B6F10;
    sub_020600CC();
}