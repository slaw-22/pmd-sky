#include "../lib/include/nitro/types.h"
typedef struct {
    u32 filler[14];
    u16 filler2;
    u16 name[5];
} PokemonData;

void *GetTeamMember(s16 id, s32 a, s32 b);
void sub_0205A340(s16 *ptr, PokemonData *data, s32 arg);
u16 *GetNameString(s32 id);
void StrncpyName(u16 *dest, u16 *src, s32 n);
void SetPokemonJoined(s32 id);

BOOL sub_0205A288(s16 *arg0, s32 arg1);

BOOL sub_0205A288(s16 *arg0, s32 arg1)
{
    s16 tempS16 = -1;
    PokemonData tempStruct;

    tempStruct = *(PokemonData *)GetTeamMember(*arg0, arg1, -1);
    sub_0205A340(arg0, &tempStruct, arg1);

    if (arg1 == 0x13F || arg1 == 0x397) {
        StrncpyName(tempStruct.name, GetNameString(0x140), 10);
        sub_0205A340(&tempS16, &tempStruct, 0x140);

        if (tempS16 != -1) {
            SetPokemonJoined(0x140);
        }
    }

    return TRUE;
}