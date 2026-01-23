#include "../../lib/include/nitro/types.h"

u32 sub_0206A84C(u32 arg0);

u32 sub_0206A84C(u32 arg0) {
    if (arg0 < 180U) { // 0xB4
        return (s16)(arg0 + 1);
    } else if (arg0 <= 211U) { // 0xD3
        return 184U; // 0xB8
    } else {
        return (u32)-1; // Equivalent to MVN R0, #0
    }
}