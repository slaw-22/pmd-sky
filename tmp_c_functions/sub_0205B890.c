#include "../lib/include/nitro/types.h"
typedef struct {
    u32 field_0;
    u32 field_4;
} UnkEntry;

typedef struct {
    u32 count;
    UnkEntry entries[32];
} UnkState;

typedef struct {
    u32 field_0;
    UnkState *state;
} UnkGlobal;

extern UnkGlobal _020B0A54;

void sub_0205B890(u32 *arg);

void sub_0205B890(u32 *arg) {
    UnkState *state = _020B0A54.state;
    u32 count = state->count;

    state->entries[count].field_0 = arg[0];
    state->entries[count].field_4 = arg[1];

    if (state->count < 31) {
        state->count++;
    } else {
        state->count = 0;
    }
}