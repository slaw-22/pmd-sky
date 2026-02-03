#include "../lib/include/nitro/types.h"
typedef struct {
    u8 data[32];
} Element;

void sub_0205E50C(s32 count, Element *data, int (*compare)(const void *, const void *));

void sub_0205E50C(s32 count, Element *data, int (*compare)(const void *, const void *)) {
    s32 i, j;

    for (i = 0; i < count - 1; i++) {
        for (j = i + 1; j < count; j++) {
            if (data[j].data[0] != 0) {
                if (data[i].data[0] == 0 || compare(&data[i], &data[j]) != 0) {
                    Element temp = data[i];
                    data[i] = data[j];
                    data[j] = temp;
                }
            }
        }
    }
}