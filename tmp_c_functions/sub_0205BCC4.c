#include "../lib/include/nitro/types.h"
void MemsetSimple(void *dest, u32 val, u32 len);

typedef struct InnerStruct {
    u8 pad[0x44];
    u16 data[3];
} InnerStruct;

typedef struct OuterStruct {
    u8 pad[8];
    InnerStruct *inner;
} OuterStruct;

extern OuterStruct _020B0A54;

void sub_0205BCC4(u16 *src);

void sub_0205BCC4(u16 *src) {
    if (src == NULL) {
        MemsetSimple(_020B0A54.inner->data, 0, 6);
    } else {
        _020B0A54.inner->data[0] = src[0];
        _020B0A54.inner->data[1] = src[1];
        _020B0A54.inner->data[2] = src[2];
    }
}