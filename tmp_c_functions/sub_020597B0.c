#include "../lib/include/nitro/types.h"
typedef struct Struct020597B0_1 {
    u32 f0;
    u32 f4;
    u32 f8;
    u32 f12;
} Struct020597B0_1;

typedef struct Struct020597B0_2 {
    u32 f0;
    u32 f4;
} Struct020597B0_2;

typedef struct GlobalStruct_020A3498 {
    u8 pad[12];
    u32 fC;
    u32 f10;
} GlobalStruct_020A3498;

extern GlobalStruct_020A3498 _020A3498;

void sub_02050990(Struct020597B0_1 *p0, u32 p1, u32 p2);
void sub_0205956C(Struct020597B0_1 *p0, s32 p1);
void sub_020509BC(Struct020597B0_1 *p0);
void sub_020584F8(Struct020597B0_2 *p0, u32 p1, u32 p2);

u32 sub_020597B0(u32 p0, u32 p1);

u32 sub_020597B0(u32 p0, u32 p1) {
    Struct020597B0_1 var1;
    Struct020597B0_2 var2;

    sub_02050990(&var1, p0, p1);
    sub_0205956C(&var1, 0);
    sub_0205956C(&var1, 1);
    sub_0205956C(&var1, 2);
    sub_020509BC(&var1);

    var2.f0 = _020A3498.fC;
    var2.f4 = _020A3498.f10;

    sub_020584F8(&var2, var2.f0, var2.f4);

    return var1.f8;
}