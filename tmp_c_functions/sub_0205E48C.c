#include "../lib/include/nitro/types.h"
typedef struct {
    u8 bytes[32];
} struct_0205E48C;

void sub_0205E48C(s32 count, struct_0205E48C *array);

void sub_0205E48C(s32 count, struct_0205E48C *array) {
    s32 i, j;

    for (i = 0, j = 0; i < count; i++) {
        if (array[i].bytes[0] != 0) {
            if (i > j) {
                array[j] = array[i];
            }
            j++;
        }
    }

    for (; j < count; j++) {
        array[j].bytes[0] = 0;
    }
}