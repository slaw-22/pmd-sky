#include "../lib/include/nitro/types.h"
struct Inner {
    u8 pad[0x44];
    u16 v1;
    u16 v2;
    u16 v3;
};

struct Outer {
    u32 pad[2];
    struct Inner *inner;
};

extern struct Outer _020B0A54;

void sub_0205BC94(u16 *p);

void sub_0205BC94(u16 *p)
{
    struct Inner *inner = _020B0A54.inner;

    p[0] = inner->v1;
    p[1] = inner->v2;
    p[2] = inner->v3;
    *(u8 *)p = 1;
}