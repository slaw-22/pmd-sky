#include "../lib/include/nitro/types.h"
BOOL sub_0205C870(u32 a, const u8 *b, const u8 *c);
BOOL sub_0205C8E0(const u8 *a, const u8 *b);

typedef struct Mission {
    u8 unk0;
    u8 field1;
    u8 field2;
    u8 unk3;
    u8 field4;
    u8 field5;
    u16 unk6;
    u32 field8;
    u16 unkC;
    s16 fieldE;
    s16 field10;
    s16 field12;
    s16 field14;
    u8 field16;
    u8 unk17;
    u8 field18[2];
    u8 field1A[2];
} Mission;

BOOL AreMissionsEquivalent(const Mission *m1, const Mission *m2);

BOOL AreMissionsEquivalent(const Mission *m1, const Mission *m2) {
    if (m1->field1 != m2->field1) return FALSE;
    if (m1->field2 != m2->field2) return FALSE;
    if (m1->field4 != m2->field4) return FALSE;
    if (m1->field5 != m2->field5) return FALSE;
    if (m1->field8 != m2->field8) return FALSE;
    if (m1->fieldE != m2->fieldE) return FALSE;
    if (m1->field10 != m2->field10) return FALSE;
    if (m1->field12 != m2->field12) return FALSE;
    if (m1->field14 != m2->field14) return FALSE;
    if (m1->field16 != m2->field16) return FALSE;

    if (sub_0205C870(m1->field16, m1->field18, m2->field18) == FALSE) {
        return FALSE;
    }

    return (sub_0205C8E0(m1->field1A, m2->field1A) != FALSE);
}