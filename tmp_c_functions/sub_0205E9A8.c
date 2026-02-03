#include "../lib/include/nitro/types.h"
typedef struct DungeonData {
    u8 unk0;
    u8 type;
    u8 subType;
    u8 unk3;
    u8 id;
    u8 extra;
} DungeonData;

s32 DungeonSwapIdToIdx(u32 id);
s32 GetDungeonMode(s32 idx);

BOOL sub_0205E9A8(DungeonData *a, DungeonData *b);

BOOL sub_0205E9A8(DungeonData *a, DungeonData *b) {
    if (a->type == 3 && a->subType == 3) {
        if (GetDungeonMode(DungeonSwapIdToIdx(a->id)) == 0) {
            return TRUE;
        }
        return a->id >= b->id;
    }

    if (b->type == 3 && b->subType == 3) {
        if (GetDungeonMode(DungeonSwapIdToIdx(b->id)) == 0) {
            return FALSE;
        }
        return a->id > b->id;
    }

    if (a->type == 8 || a->type == 5) {
        return a->id >= b->id;
    }

    if (b->type == 8 || b->type == 5) {
        return a->id > b->id;
    }

    if (a->id > b->id) {
        return TRUE;
    }

    if (a->id == b->id && a->extra > b->extra) {
        return TRUE;
    }

    return FALSE;
}