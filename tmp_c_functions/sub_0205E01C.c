#include "../lib/include/nitro/types.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
} UnknownStruct;

s32 sub_0205E258(UnknownStruct *ptr);

BOOL sub_0205E01C(UnknownStruct *ptr, s32 arg1, s32 arg2, s32 arg3);

BOOL sub_0205E01C(UnknownStruct *ptr, s32 arg1, s32 arg2, s32 arg3) {
    if (ptr->unk0 == 0) {
        return FALSE;
    }

    if (arg2 < 0 || (sub_0205E258(ptr) != 0 && arg3 == 1)) {
        if (ptr->unk4 == arg1) {
            return TRUE;
        }
    } else {
        if (ptr->unk4 == arg1 && ptr->unk5 == arg2) {
            return TRUE;
        }
    }

    return FALSE;
}