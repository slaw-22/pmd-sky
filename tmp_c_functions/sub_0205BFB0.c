#include "../lib/include/nitro/types.h"
void sub_02050990(u32 *p0, u32 p1, u32 p2);
void CopyBitsTo(u32 *p0, const void *p1, u32 p2);
void sub_0205C440(u32 *p0, const void *p1);
void sub_020515C4(u32 *p0, const void *p1);
void sub_02059AF8(u32 *p0, const void *p1);
void CopyMovesetTo(u32 *p0, const void *p1);
void sub_020509BC(u32 *p0);

extern u8 _022B57BC[];
extern u8 *_020B0A54[];

u32 sub_0205BFB0(u32 p0, u32 p1);

u32 sub_0205BFB0(u32 p0, u32 p1) {
    u32 stack_var[4];
    int i;
    u8 *ptr;

    sub_02050990(stack_var, p0, p1);
    CopyBitsTo(stack_var, _022B57BC, 32);

    for (i = 0; i < 32; i++) {
        sub_0205C440(stack_var, _020B0A54[0] + i * 176);
    }

    ptr = _020B0A54[2];
    CopyBitsTo(stack_var, ptr, 4);
    CopyBitsTo(stack_var, ptr + 1, 7);
    sub_020515C4(stack_var, ptr + 2);
    CopyBitsTo(stack_var, ptr + 4, 11);
    sub_02059AF8(stack_var, ptr + 6);
    sub_02059AF8(stack_var, ptr + 7);
    CopyBitsTo(stack_var, ptr + 8, 10);
    CopyBitsTo(stack_var, ptr + 10, 10);
    CopyBitsTo(stack_var, ptr + 12, 8);
    CopyBitsTo(stack_var, ptr + 13, 8);
    CopyBitsTo(stack_var, ptr + 14, 8);
    CopyBitsTo(stack_var, ptr + 15, 8);
    CopyBitsTo(stack_var, ptr + 16, 24);
    CopyBitsTo(stack_var, ptr + 20, 69);
    CopyBitsTo(stack_var, ptr + 32, 4);
    CopyMovesetTo(stack_var, ptr + 34);
    CopyBitsTo(stack_var, ptr + 58, 80);

    ptr = _020B0A54[2];
    CopyBitsTo(stack_var, ptr + 70, 11);
    CopyBitsTo(stack_var, ptr + 72, 11);

    CopyBitsTo(stack_var, _020B0A54[1], 32);

    for (i = 0; i < 32; i++) {
        CopyBitsTo(stack_var, _020B0A54[1] + 4 + i * 8, 64);
    }

    sub_020509BC(stack_var);

    return stack_var[2];
}