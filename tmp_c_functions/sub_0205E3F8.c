#include "../lib/include/nitro/types.h"
typedef struct {
    u32 data[8];
} Block32;

s32 sub_0205E3F8(const Block32 *src, s32 limit, Block32 *destArray);

s32 sub_0205E3F8(const Block32 *src, s32 limit, Block32 *destArray) {
    s32 i;

    for (i = 0; i < limit; i++) {
        if (*(u8 *)&destArray[i] == 0) {
            destArray[i] = *src;
            return 0;
        }
    }

    return 1;
}