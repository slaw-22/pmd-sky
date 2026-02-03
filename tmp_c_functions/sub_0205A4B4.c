#include "../lib/include/nitro/types.h"
void PreprocessStringFromId(u16 *out, u32 max_len, u32 str_id, u32 arg3, u32 *args);
void DrawTextInWindow(int window_id, int x, int y, u16 *str);
void GetLvlUpEntry(s16 monster_id, int level, u32 *out);
u8 *AllocateTemp1024ByteBufferFromPool(void);
void sub_0200D670(u32 *args, u16 *out, char *fmt);
void sub_02058C30(u8 *out, u8 item_id);
void sub_02026268(int window_id, int x, int y, u32 str_id);
u32 GetTypeStringId(u8 type);
u32 GetAbilityDescStringId(u8 ability);
u8 *StringFromId(u32 str_id);
void sub_02026358(int window_id, int x, int y, u8 *str, int arg4, int arg5);
void CopyNStringFromId(u8 *out, u32 str_id, u32 max_len);
void PreprocessString(u16 *out, u32 max_len, char *fmt, u32 arg3, u32 *args);
void GetLearnableIqSkills(s16 monster_id, s16 iq, u8 *out);
u32 GetIqSkillStringId(u8 skill_id);
BOOL IqSkillFlagTest(u32 *flags, u8 skill_id);
char *sub_0205B39C(char *fmt, int value);
u8 *GetNameRaw(s16 monster_id);
int GetMonsterGenderVeneer(s16 monster_id);
u8 *GetCategoryString(s16 monster_id);
int GetBodySize(s16 monster_id);
char *strcpy(char *dest, const char *src);

extern char _020A34B8[];
extern char _020A34D2[];
extern char _020A34FC[];
extern char _020A3514[];
extern char _020A351C[];
extern char _020A3524[];
extern char _020A34C4[];
extern u16 STATUS_NAME_STRING_IDS[];

#ifdef JAPAN
#define OFFSET 0x19D0
#else
#define OFFSET 0
#endif

typedef struct {
    s16 monster_id;
    u8 pad02[20];
    u8 type1;
    u8 type2;
    u8 ability1;
    u8 ability2;
    u8 size;
    u8 pad1b;
    u8 status_flags;
    u8 pad1d[7];
    u32 current_hp;
    u32 max_hp;
    u32 level;
    u32 exp;
    u8 atk;
    u8 sp_atk;
    u8 def;
    u8 sp_def;
    u8 is_npc;
    u8 atk_boost;
    u8 sp_atk_boost;
    u8 def_boost;
    u8 sp_def_boost;
    u8 pad3d;
    s16 iq;
    s16 iq_count;
    u8 pad42[2];
    u8 tactic;
    u8 pad45[3];
    u32 iq_flags[3];
    u8 item_id;
    u8 pad55;
    s16 status_count;
    u8 statuses[30];
} MonsterData;

void sub_0205A4B4(int mode, MonsterData *ptr, void *extra, int window_id);

void sub_0205A4B4(int mode, MonsterData *ptr, void *extra, int window_id)
{
    u32 lvl_up_data[2];
    u8 iq_skills[72];
    u32 args[20];
    u16 text_buffer[100];
    int i, count, y;

    switch (mode) {
    case 2:
        args[9] = ptr->level;
        args[10] = ptr->exp;
        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x951, 0, args);
        DrawTextInWindow(window_id, 4, 16, text_buffer);
        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x952, 0, args);
        DrawTextInWindow(window_id, 4, 28, text_buffer);

        if (ptr->level < 100) {
            GetLvlUpEntry(ptr->monster_id, ptr->level + 1, lvl_up_data);
            args[9] = lvl_up_data[0] - ptr->exp;
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x953, 0, args);
            DrawTextInWindow(window_id, 4, 40, text_buffer);
        }

        args[9] = ptr->current_hp;
        args[10] = ptr->max_hp;
        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x954, 0, args);
        DrawTextInWindow(window_id, 4, 54, text_buffer);
        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x955, 0, args);
        DrawTextInWindow(window_id, 4, 66, text_buffer);

        {
            u8 atk = ptr->atk;
            u32 str_id = OFFSET + 0x957;
            args[9] = atk;
            if (ptr->atk_boost != 0) {
                args[9] = (u32)(atk + ptr->atk_boost);
                str_id++;
            }
            PreprocessStringFromId(text_buffer, 200, str_id, 0, args);
            DrawTextInWindow(window_id, 4, 66, text_buffer);
        }

        {
            u8 def = ptr->def;
            u32 str_id;
            if (ptr->def_boost != 0) {
                args[9] = (u32)(def + ptr->def_boost);
                str_id = OFFSET + 0x95C;
            } else {
                args[9] = def;
                str_id = OFFSET + 0x95B;
            }
            PreprocessStringFromId(text_buffer, 200, str_id, 0, args);
            DrawTextInWindow(window_id, 4, 66, text_buffer);
        }

        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x956, 0, args);
        DrawTextInWindow(window_id, 4, 78, text_buffer);

        {
            u8 sp_atk = ptr->sp_atk;
            u32 str_id = OFFSET + 0x959;
            args[9] = sp_atk;
            if (ptr->sp_atk_boost != 0) {
                args[9] = (u32)(sp_atk + ptr->sp_atk_boost);
                str_id++;
            }
            PreprocessStringFromId(text_buffer, 200, str_id, 0, args);
            DrawTextInWindow(window_id, 4, 78, text_buffer);
        }

        {
            u8 sp_def = ptr->sp_def;
            u32 str_id;
            if (ptr->sp_def_boost != 0) {
                args[9] = (u32)(sp_def + ptr->sp_def_boost);
                str_id = OFFSET + 0x95E;
            } else {
                args[9] = sp_def;
                str_id = OFFSET + 0x95D;
            }
            PreprocessStringFromId(text_buffer, 200, str_id, 0, args);
            DrawTextInWindow(window_id, 4, 78, text_buffer);
        }

        if (ptr->status_flags & 1) {
            u8 *temp = AllocateTemp1024ByteBufferFromPool();
            sub_0200D670(args, (u16 *)&ptr->status_flags, _020A34B8);
            args[14] = (u32)temp;
#ifdef JAPAN
            PreprocessStringFromId(text_buffer, 200, 0x2330, 0, args);
#else
            PreprocessStringFromId(text_buffer, 200, 0x960, 0, args);
#endif
        } else {
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x95F, 0, args);
        }
        DrawTextInWindow(window_id, 4, 90, text_buffer);

        args[9] = (u32)ptr->iq;
        i = (int)ptr->iq / 10;
        if (i < 0) i = 0;
        if (i > 99) i = 99;
        args[14] = (u32)sub_0205B39C(_020A34D2, i);
        PreprocessStringFromId(text_buffer, 200, OFFSET + 0x961, 0, args);
        DrawTextInWindow(window_id, 4, 104, text_buffer);

        if (ptr->is_npc == 0) {
            u8 *temp = AllocateTemp1024ByteBufferFromPool();
            sub_02058C30(temp, ptr->item_id);
            args[14] = (u32)temp;
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x962, 0, args);
            DrawTextInWindow(window_id, 4, 116, text_buffer);
        }
        break;

    case 3:
        sub_02026268(window_id, 4, 16, OFFSET + 0x972);
        sub_02026268(window_id, 56, 16, GetTypeStringId(ptr->type1));
        if (ptr->type2 != 0) {
            sub_02026268(window_id, 104, 16, GetTypeStringId(ptr->type2));
        }
        sub_02026268(window_id, 4, 28, OFFSET + 0x973);
        sub_02026358(window_id, 4, 40, StringFromId(GetAbilityDescStringId(ptr->ability1)), 0, 11);
        if (ptr->ability2 != 0) {
            sub_02026358(window_id, 4, 73, StringFromId(GetAbilityDescStringId(ptr->ability2)), 0, 11);
        }
        break;

    case 1:
        i = (int)ptr->status_count - 1;
        y = 16 - 12;
        for (count = 0; count < 10; count++) {
            ((int *)extra)[count + 3] = 0;
        }
        for (count = 0; count < 10; i++, y += 12, count++) {
            if (i >= 0 && y >= 16) {
                if (i < 30) {
                    if (ptr->statuses[i] != 0) {
                        u8 *temp = AllocateTemp1024ByteBufferFromPool();
                        CopyNStringFromId(temp, STATUS_NAME_STRING_IDS[ptr->statuses[i]], 0x50);
                        args[15] = (u32)temp;
                        PreprocessString(text_buffer, 200, _020A34FC, 0, args);
                        DrawTextInWindow(window_id, 12, y, text_buffer);
                        if (count >= 1) {
                            ((int *)extra)[count + 2] = ptr->statuses[i];
                        }
                    }
                }
            }
        }
        if (count == 0) {
            sub_02026268(window_id, 12, 16, OFFSET + 0x968);
        }
        break;

    case 4:
        GetLearnableIqSkills(ptr->monster_id, ptr->iq, iq_skills);
        for (count = 0; count < 9; count++) {
            ((u8 *)extra)[count] = 0;
        }
        i = (int)ptr->iq_count - 1;
        y = 16 - 12;
        for (count = 0; count < 10; i++, y += 12, count++) {
            if (i >= 0 && i < 0x45) {
                if (iq_skills[i] != 0) {
                    u8 *temp = AllocateTemp1024ByteBufferFromPool();
                    CopyNStringFromId(temp, GetIqSkillStringId(iq_skills[i]), 0x50);
                    args[15] = (u32)temp;
                    if (IqSkillFlagTest(ptr->iq_flags, iq_skills[i])) {
                        u8 *en = AllocateTemp1024ByteBufferFromPool();
                        strcpy((char *)en, _020A3514);
                        args[14] = (u32)en;
                    } else {
                        u8 *dis = AllocateTemp1024ByteBufferFromPool();
                        strcpy((char *)dis, _020A351C);
                        args[14] = (u32)dis;
                    }
                    if (count >= 1) {
                        ((u8 *)extra)[count - 1] = iq_skills[i];
                    }
                    PreprocessString(text_buffer, 200, _020A3524, 0, args);
                    DrawTextInWindow(window_id, 12, y, text_buffer);
                }
            }
        }
        if (count == 0) {
            sub_02026268(window_id, 12, 32, OFFSET + 0x969);
        }
        break;

    case 5:
        {
            u8 *temp = AllocateTemp1024ByteBufferFromPool();
            u32 gender_str_id;
            int gender = GetMonsterGenderVeneer(ptr->monster_id);
            strcpy((char *)temp, (char *)GetNameRaw(ptr->monster_id));
            args[14] = (u32)temp;
            args[9] = (u32)ptr->monster_id;
            if (gender == 1) gender_str_id = OFFSET + 0x963;
            else if (gender == 2) gender_str_id = OFFSET + 0x964;
            else gender_str_id = OFFSET + 0x965;
            PreprocessStringFromId(text_buffer, 200, gender_str_id, 0, args);
            DrawTextInWindow(window_id, 4, 16, text_buffer);
            sub_02026268(window_id, 4, 31, OFFSET + 0x967);

            args[4] = (u32)ptr->size;
            args[0] = (u32)temp;
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x96B, 0, args);
            DrawTextInWindow(window_id, 4, 43, text_buffer);

            temp = AllocateTemp1024ByteBufferFromPool();
            strcpy((char *)temp, (char *)GetCategoryString(ptr->monster_id));
            temp[4] = 0x44;
            args[14] = (u32)temp;
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x966, 0, args);
            DrawTextInWindow(window_id, 4, 58, text_buffer);

            args[14] = (u32)sub_0205B39C(_020A34C4, GetBodySize(ptr->monster_id));
            PreprocessStringFromId(text_buffer, 200, OFFSET + 0x96A, 0, args);
#ifdef JAPAN
            DrawTextInWindow(window_id, 4, 73, text_buffer);
            sub_02026268(window_id, 4, 88, (u16)(ptr->tactic + 0x33c + 0x2000));
#else
            DrawTextInWindow(window_id, 4, 88, text_buffer);
            sub_02026268(window_id, 4, 103, (u16)(ptr->tactic + 0x16c + 0x800));
#endif
        }
        break;
    }
}