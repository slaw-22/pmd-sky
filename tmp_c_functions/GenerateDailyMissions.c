#include "../lib/include/nitro/types.h"
s32 RandRangeSafe(s32 min, s32 max);
s32 GetResolvedPerformanceProgressFlag(s32 flag);
u32 sub_02063504(void);
u16 Rand16Bit(void);
void sub_020510E8(u32 seed);
void GenerateAllPossibleMonstersList(void);
void GenerateAllPossibleDungeonsList(void);
void GenerateAllPossibleDeliverList(void);
s32 sub_02062290(s32 type);
s32 sub_02062578(void);
s32 GenerateMission(u8 *mission);
void sub_0206315C(u8 *mission, s32 param);
void sub_02062548(void);
void DeleteAllPossibleMonstersList(void);
void DeleteAllPossibleDungeonsList(void);
void DeleteAllPossibleDeliverList(void);
void sub_0205E48C(s32 count, u8 *missions);
s32 sub_0205E9A8(void *arg);
s32 sub_0205EB28(void *arg);
void sub_0205E50C(s32 count, u8 *missions, s32 (*callback)(void *));
void sub_02051134(void);
void sub_020634F4(void);
void sub_0205EB5C(u8 *mission);

typedef struct {
    u8 fill[0x18];
    u8 *missions;
} MissionDeliverList;

extern MissionDeliverList *MISSION_DELIVER_LIST_PTR;

void GenerateDailyMissions(void);

void GenerateDailyMissions(void) {
    s32 r7 = RandRangeSafe(4, 8);
    s32 r8 = RandRangeSafe(4, 8);
    if (GetResolvedPerformanceProgressFlag(3) == 0) {
        return;
    }

    u8 *missions = MISSION_DELIVER_LIST_PTR->missions;
    for (s32 i = 0; i < 8; i++) {
        missions[i * 32] = 0;
    }
    for (s32 i = 0; i < 8; i++) {
        missions[i * 32 + 0x200] = 0;
    }
    missions[0x300] = 0;
    missions[0x320] = 0;

    u32 s = sub_02063504();
    sub_020510E8((s << 16) | Rand16Bit());

    GenerateAllPossibleMonstersList();
    GenerateAllPossibleDungeonsList();
    GenerateAllPossibleDeliverList();

    if (sub_02062290(3)) {
        s32 i = 0;
        s32 retries = 30;
        while (i <= 0) {
            u8 *m = &missions[0x320 + i * 32];
            s32 status = sub_02062578();
            if (status == 0) {
                status = 1;
            } else if (GenerateMission(m) == 0) {
                sub_0206315C(m, 0);
                status = 0;
            }

            if (status == 2) break;
            if (status == 1) {
                if (--retries <= 0) break;
            } else {
                retries = 30;
                i++;
            }
        }
    }
    sub_02062548();

    if (sub_02062290(2)) {
        s32 i = 0;
        s32 retries = 30;
        while (i <= 0) {
            u8 *m = &missions[0x300 + i * 32];
            s32 status = sub_02062578();
            if (status == 0) {
                status = 1;
            } else if (GenerateMission(m) == 0) {
                sub_0206315C(m, 1);
                sub_0205EB5C(m);
                status = 0;
            }

            if (status == 2) break;
            if (status == 1) {
                if (--retries <= 0) break;
            } else {
                retries = 30;
                i++;
            }
        }
    }
    sub_02062548();

    if (sub_02062290(0)) {
        s32 i = 0;
        s32 retries = 30;
        while (i <= r7) {
            u8 *m = &missions[i * 32];
            s32 status = sub_02062578();
            if (status == 0) {
                status = 1;
            } else if (GenerateMission(m) == 0) {
                sub_0206315C(m, 0);
                status = 0;
            }

            if (status == 2) break;
            if (status == 1) {
                if (--retries <= 0) break;
            } else {
                retries = 30;
                i++;
            }
        }
    }
    sub_02062548();

    if (sub_02062290(1)) {
        s32 i = 0;
        s32 retries = 30;
        while (i <= r8) {
            u8 *m = &missions[0x200 + i * 32];
            s32 status = sub_02062578();
            if (status == 0) {
                status = 1;
            } else if (GenerateMission(m) == 0) {
                sub_0206315C(m, 0);
                status = 0;
            }

            if (status == 2) break;
            if (status == 1) {
                if (--retries <= 0) break;
            } else {
                retries = 30;
                i++;
            }
        }
    }
    sub_02062548();

    DeleteAllPossibleMonstersList();
    DeleteAllPossibleDungeonsList();
    DeleteAllPossibleDeliverList();

    sub_0205E48C(8, missions);
    sub_0205E50C(8, missions, sub_0205E9A8);
    sub_0205E48C(8, missions + 0x200);
    sub_0205E50C(8, missions + 0x200, sub_0205EB28);

    sub_02051134();
    sub_020634F4();
}