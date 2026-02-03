	arm_func_start sub_02060FD8
sub_02060FD8: ; 0x02060FD8
#ifdef JAPAN
#define SUB_02060FD8_ARG #0x3e
#else
#define SUB_02060FD8_ARG #0x42
#endif
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14c
	mov sb, r0
	mov r8, r1
	mov r0, #0x12c
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	ldr r1, [sb, #0x64]
	mov r5, r0
	cmp r1, #0
	mov r7, #0
	beq _02061110
	ldr r1, [sb, #0x54]
	cmp r1, #0
	ldrneh r2, [r1]
	cmpne r2, #0
	bne _020610E8
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #0x32
	bne _02061050
	ldr r1, _02061BD0 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02061068
_02061050:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [sb, #0xc]
	add r0, sp, #0x32
#ifdef JAPAN
	mov r2, #5
#else
	mov r2, #0xa
#endif
	bl StrncpySimpleNoPadSafe
_02061068:
	add r0, sp, #0x32
	str r0, [sp, #0x134]
	ldr r0, [sb, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020610B4
_02061084: ; jump table
	b _020610B4 ; case 0
	b _020610B4 ; case 1
	b _020610B4 ; case 2
	b _020610B4 ; case 3
	b _020610B4 ; case 4
	b _020610A4 ; case 5
	b _020610AC ; case 6
	b _020610A4 ; case 7
_020610A4:
	ldr r2, _02061BD4 ; =0x000038CB
	b _020610B8
_020610AC:
	ldr r2, _02061BD8 ; =0x000038CC
	b _020610B8
_020610B4:
	ldr r2, _02061BDC ; =0x000038CA
_020610B8:
	add r6, sp, #0xfc
	mov r0, r5
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	mov r0, r8
	mov r3, r5
	mov r1, #4
	mov r2, #0
	bl DrawTextInWindow
	b _02061124
_020610E8:
#ifndef JAPAN
	mov r3, r7
#endif
	mov r2, #0x12
	bl sub_0202568C
	mov r2, r7
	strb r2, [r0]
	mov r0, r8
	mov r3, r5
	mov r1, #4
	bl DrawTextInWindow
	b _02061124
_02061110:
	ldr r3, _02061BE0 ; =0x00003C1E
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
_02061124:
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x45]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020613D4
_0206113C: ; jump table
	b _02061164 ; case 0
	b _020611C0 ; case 1
	b _020611E4 ; case 2
	b _02061210 ; case 3
	b _0206123C ; case 4
	b _02061268 ; case 5
	b _0206129C ; case 6
	b _020612EC ; case 7
	b _0206131C ; case 8
	b _02061370 ; case 9
_02061164:
	ldr r0, [sb, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020611A8
_02061178: ; jump table
	b _020611A8 ; case 0
	b _020611A8 ; case 1
	b _020611A8 ; case 2
	b _020611A8 ; case 3
	b _020611A8 ; case 4
	b _02061198 ; case 5
	b _020611A0 ; case 6
	b _02061198 ; case 7
_02061198:
	ldr r3, _02061BE4 ; =0x000038CE
	b _020611AC
_020611A0:
	ldr r3, _02061BE8 ; =0x000038CF
	b _020611AC
_020611A8:
	ldr r3, _02061BEC ; =0x000038CD
_020611AC:
	mov r0, r8
	mov r1, #4
	mov r2, #0x11
	bl sub_02026268
	b _020613D4
_020611C0:
	add r1, sp, #0xfc
	str r1, [sp]
	mov r0, r5
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_020611E4:
	ldrsh r2, [sb, #0x16]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0x10c]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_02061210:
	ldrsh r2, [sb, #0x10]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0xfc]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_0206123C:
	ldrsh r2, [sb, #0x12]
	add r1, sp, #0xfc
	mov r0, r5
	str r2, [sp, #0xfc]
	str r1, [sp]
	mov r1, r4
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_02061268:
	ldrsh r1, [sb, #0x12]
	add r2, sp, #0xfc
	mov r0, r5
	str r1, [sp, #0xfc]
	ldrsh r6, [sb, #0x16]
	mov r1, r4
	mov r3, r8
	str r6, [sp, #0x10c]
	str r2, [sp]
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_0206129C:
	ldrsh r0, [sb, #0x16]
	str r0, [sp, #0x10c]
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [sb, #8]
	mov r3, r8
	ldrneb r1, [r0, #1]
	ldreqb r0, [r0, #1]
	mov r2, #0x11
	rsbeq r1, r0, #0
	str r1, [sp, #0x120]
	add r0, sp, #0xfc
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_020612EC:
	ldr r0, [sb, #8]
	add r2, sp, #0xfc
	ldrb r3, [r0]
	mov r0, r5
	mov r1, r4
	str r3, [sp, #0x10c]
	str r2, [sp]
	mov r3, r8
	mov r2, #0x11
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_0206131C:
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	str r0, [sp, #0x10c]
	ldr r0, [sb, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [sb, #8]
	mov r3, r8
	ldrneb r1, [r0, #1]
	ldreqb r0, [r0, #1]
	mov r2, #0x11
	rsbeq r1, r0, #0
	str r1, [sp, #0x120]
	add r0, sp, #0xfc
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	str sb, [sp, #4]
	bl AppendMissionSummary
	b _020613D4
_02061370:
	ldr r1, [sb, #0x58]
	mov r0, r5
	mov r2, #0x12
#ifndef JAPAN
	mov r3, #0
#endif
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	mov r0, r8
	mov r3, r5
	mov r1, #4
	mov r2, #0x11
	bl DrawTextInWindow
	ldr r1, [sb, #0x58]
	mov r0, r5
	add r1, r1, #0x24
	mov r2, #0x12
#ifndef JAPAN
	mov r3, #0
#endif
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	mov r0, r8
	mov r1, #4
	mov r2, #0x1e
	mov r3, r5
	bl DrawTextInWindow
_020613D4:
	ldrb r1, [sb, #0x46]
	cmp r1, #0xf
	beq _02061518
	ldr r0, [sb, #0x64]
#ifdef JAPAN
	mov r6, #0x3e
#endif
	cmp r0, #0
	beq _02061418
	ldrb r0, [r0]
	cmp r0, #7
	cmpne r0, #5
	bne _02061418
#ifdef JAPAN
	mov sl, #0x2d
	ldr r3, _02061BF0 ; =0x00003C21
	mov r0, r8
	mov r2, sl
#else
	mov r6, #0x2d
	ldr r3, _02061BF0 ; =0x00003C21
	mov r0, r8
	mov r2, r6
#endif
	mov r1, #4
	bl sub_02026268
	b _0206144C
_02061418:
	cmp r1, #0xe
#ifdef JAPAN
	mov sl, #0x2d
#else
	mov r6, #0x2d
#endif
	mov r1, #4
	bne _0206143C
	ldr r3, _02061BF4 ; =0x00003C20
	mov r0, r8
#ifdef JAPAN
	mov r2, sl
	bl sub_02026268
	add r6, r6, #0x10
#else
	mov r2, r6
	bl sub_02026268
#endif
	b _0206144C
_0206143C:
	ldr r3, _02061BF8 ; =0x00003C1F
	mov r0, r8
#ifdef JAPAN
	mov r2, sl
#else
	mov r2, r6
#endif
	bl sub_02026268
_0206144C:
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	bne _020614BC
	ldr r0, [sb, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #8
	bne _0206147C
	ldr r1, _02061BD0 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02061494
_0206147C:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [sb, #0xc]
	add r0, sp, #8
#ifdef JAPAN
	mov r2, #5
#else
	mov r2, #0xa
#endif
	bl StrncpySimpleNoPadSafe
_02061494:
	ldr r1, _02061BFC ; =_020A4688
	add r2, sp, #8
	mov r0, r4
	bl SprintfStatic__020609E8
	mov r0, r8
#ifdef JAPAN
	mov r1, r6
	mov r2, sl
	mov r3, r4
#else
	mov r2, r6
	mov r3, r4
	mov r1, #0x42
#endif
	bl DrawTextInWindow
	b _02061518
_020614BC:
	ldr r0, [sb, #0x5c]
	cmp r0, #0
	beq _020614EC
	ldrb r0, [r0, #1]
	cmp r0, #0xe
	bne _020614EC
	ldr r3, _02061C00 ; =0x00003C37
	mov r0, r8
#ifdef JAPAN
	mov r1, r6
	mov r2, sl
#else
	mov r2, r6
	mov r1, #0x42
#endif
	bl sub_02026268
	b _02061518
_020614EC:
	ldrsh r0, [sb, #0x10]
	bl GetNameString
	mov r2, r0
	ldr r1, _02061C04 ; =_020A4698
	mov r0, r4
	bl SprintfStatic__020609E8
#ifdef JAPAN
	mov r1, r6
	mov r2, sl
	mov r0, r8
#else
	mov r2, r6
	mov r0, r8
	mov r1, #0x42
#endif
	mov r3, r4
	bl DrawTextInWindow
_02061518:
	ldrb r2, [sb, #0x48]
	ldr r1, _02061C08 ; =MISSION_MENU_STRING_IDS_1
	mov r0, r5
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	bl GetStringFromFileVeneer
	ldrb r0, [sb, #0x48]
	mov r3, r5
	mov r2, #0x2d
	add r0, r0, #0xfc
	and r0, r0, #0xff
	cmp r0, #2
#ifdef JAPAN
	movls r1, #0x56
#else
	movls r1, #0x43
#endif
	movhi r1, #0x40
	mov r0, r8
	add r1, r1, #0x6c
	bl DrawTextInWindow
	ldr r3, _02061C0C ; =_020A46A8
	mov r0, r8
	mov r1, #0x6c
	mov r2, #1
	bl DrawTextInWindow
	ldr r3, _02061C10 ; =0x00003C22
	mov r0, r8
	mov r1, #4
	mov r2, #0x3a
	bl sub_02026268
	ldrb r2, [sb, #0x46]
	ldrsh r6, [sb, #0x16]
	mov r0, r4
	cmp r2, #0xe
	ldreqsh r3, [sb, #0x10]
	mov r1, #0x12c
	ldrnesh r3, [sb, #0x12]
	str r6, [sp]
	bl sub_02061DC8
	mov r0, r8
	mov r3, r4
	mov r1, SUB_02060FD8_ARG
	mov r2, #0x3a
	bl DrawTextInWindow
	add r7, r7, #0x47
	ldr r3, _02061C14 ; =0x00003C23
	mov r0, r8
	mov r1, #4
	mov r2, r7
	bl sub_02026268
	mov r0, sb
	mov r1, r4
	mov r2, #0x100
	bl sub_02061FDC
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r2, r7
	mov r3, r4
	bl DrawTextInWindow
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	beq _020616C8
	add r7, r7, #0xd
	ldr r3, _02061C18 ; =0x00003C24
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x49]
	cmp r0, #0
	bne _02061670
	ldrb r0, [sb, #0x4c]
	cmp r0, #0
	beq _02061660
	ldr r2, _02061C1C ; =0x00003C26
	str r0, [sp, #0x10c]
	add r6, sp, #0xfc
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	b _020616B4
_02061660:
	ldr r1, _02061C20 ; =0x00003C25
	mov r0, r4
	bl GetStringFromFileVeneer
	b _020616B4
_02061670:
	cmp r0, #1
	bne _020616B4
	ldrsh r0, [sb, #0x4a]
	cmp r0, #0
	beq _020616A8
	ldr r2, _02061C24 ; =0x00003C27
	str r0, [sp, #0xfc]
	add r6, sp, #0xfc
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r6, [sp]
	bl PreprocessStringFromId
	b _020616B4
_020616A8:
	ldr r1, _02061C20 ; =0x00003C25
	mov r0, r4
	bl GetStringFromFileVeneer
_020616B4:
	mov r0, r8
	mov r2, r7
	mov r3, r4
	mov r1, SUB_02060FD8_ARG
	bl DrawTextInWindow
_020616C8:
	ldr r1, [sb, #0x5c]
	cmp r1, #0
	beq _02061710
	ldrb r0, [r1, #1]
	cmp r0, #0xe
	bne _02061710
	add r7, r7, #0xd
	ldr r3, _02061C28 ; =0x00003C28
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	ldr r3, _02061C2C ; =0x00003C2A
	mov r0, r8
	mov r2, r7
	mov r1, SUB_02060FD8_ARG
	bl sub_02026268
	b _020617D4
_02061710:
	ldrb r0, [sb, #0x46]
	cmp r0, #0
	bne _02061740
	ldr r0, [sb, #8]
	mov r1, #0
	bl sub_02062D9C
	mov sl, r0
	ldr r0, [sb, #8]
	mov r1, #0
	bl sub_02062D5C
	ldr r1, _02061C30 ; =MISSION_RANK_POINTS
	b _02061764
_02061740:
	ldrb r1, [r1, #1]
	ldr r0, [sb, #8]
	bl sub_02062D9C
	ldr r1, [sb, #0x5c]
	mov sl, r0
	ldrb r1, [r1, #1]
	ldr r0, [sb, #8]
	bl sub_02062D5C
	ldr r1, _02061C30 ; =MISSION_RANK_POINTS
_02061764:
	add r7, r7, #0xd
	ldr r6, [r1, r0, lsl #2]
	ldr r3, _02061C28 ; =0x00003C28
	mov r0, r8
	mov r2, r7
	mov r1, #4
	bl sub_02026268
	ldr r1, _02061C34 ; =RANK_STRING_PTR_TABLE
	mov r0, r8
	ldr r3, [r1, sl, lsl #2]
	mov r2, r7
	mov r1, SUB_02060FD8_ARG
	bl DrawTextInWindow
	add r0, sp, #0xfc
	bl InitPreprocessorArgs
	str r6, [sp, #0x120]
	add r1, sp, #0xfc
	str r1, [sp]
	ldr r2, _02061C38 ; =0x00003C29
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r8
#ifdef JAPAN
	mov r1, #0x52
#else
	mov r1, #0x56
#endif
	mov r2, r7
	mov r3, r4
	bl DrawTextInWindow
_020617D4:
	ldr r1, [sb, #0x64]
	cmp r1, #0
	bne _02061AAC
	ldrb r0, [sb, #0x46]
	cmp r0, #0xf
	beq _02061AAC
	cmp r0, #0xe
	add r6, r7, #0xd
	mov r1, #4
	bne _02061810
	ldr r3, _02061C3C ; =0x00003C2C
	mov r0, r8
	mov r2, r6
	bl sub_02026268
	b _02061820
_02061810:
	ldr r3, _02061C40 ; =0x00003C2B
	mov r0, r8
	mov r2, r6
	bl sub_02026268
_02061820:
	ldrb r1, [sb, #0x1a]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _02061A88
_02061830: ; jump table
	b _02061850 ; case 0
	b _020618A0 ; case 1
	b _020618F0 ; case 2
	b _02061940 ; case 3
	b _02061990 ; case 4
	b _020619E0 ; case 5
	b _02061A0C ; case 6
	b _02061A5C ; case 7
_02061850:
	ldr r1, [sb, #0x20]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xd0]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020618A0:
	ldr r1, [sb, #0x20]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xd0]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020618F0:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061940:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061990:
	ldrsh r1, [sb, #0x2c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xbc]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_020619E0:
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, SUB_02060FD8_ARG
	bl DrawTextInWindow
	b _02061BA4
_02061A0C:
	ldrsh r1, [sb, #0x3c]
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	str r1, [sp, #0xac]
	ldrb r1, [sb, #0x1a]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bl StringFromId
	add r3, sp, #0xac
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r2, r6
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061A5C:
	ldr r0, _02061C44 ; =MISSION_MENU_STRING_IDS_2
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, SUB_02060FD8_ARG
	bl DrawTextInWindow
	b _02061BA4
_02061A88:
	ldr r1, _02061C48 ; =0x000038DF
	mov r0, r5
	bl GetStringFromFileVeneer
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, SUB_02060FD8_ARG
	bl DrawTextInWindow
	b _02061BA4
_02061AAC:
	cmp r1, #0
	beq _02061BA4
	ldrb r0, [r1]
	cmp r0, #7
	cmpne r0, #5
	bne _02061BA4
	add r0, sp, #0x5c
	bl InitPreprocessorArgs
	ldrb r0, [sb, #0x1a]
	cmp r0, #2
	bne _02061B48
	ldr r3, _02061C4C ; =0x00003C2D
	mov r0, r8
	add r2, r7, #0xd
	mov r1, #4
	bl sub_02026268
	mov r6, #0
	ldr r2, _02061C50 ; =_020A3CBC
	mov r0, r5
	add r1, sb, #0x28
	mov r3, #1
	str r6, [sp]
	bl sub_0200D310
	ldr r0, _02061C54 ; =0x00003C2E
	str r5, [sp, #0x94]
	bl StringFromId
	add r1, sp, #0x5c
	mov r2, r0
	str r1, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	add r2, r7, #0xd
	mov r3, r4
	bl DrawTextInWindow
	b _02061BA4
_02061B48:
	cmp r0, #6
	bne _02061BA4
	ldr r3, _02061C58 ; =0x00003C2F
	mov r0, r8
	add r2, r7, #0xd
	mov r1, #4
	bl sub_02026268
	ldrsh r1, [sb, #0x3c]
	ldr r0, _02061C5C ; =0x00003C30
	str r1, [sp, #0x5c]
	bl StringFromId
	add r1, sp, #0x5c
	mov r2, r0
	str r1, [sp]
	mov r0, r4
	mov r1, #0x12c
	mov r3, #4
	bl PreprocessString
	mov r0, r8
	mov r1, SUB_02060FD8_ARG
	add r2, r7, #0xd
	mov r3, r4
	bl DrawTextInWindow
_02061BA4:
	ldrb r1, [sb, #0x45]
	ldr r2, [sb, #0x5c]
	mov r0, r8
	add r3, r7, #0x1a
	bl sub_02061CC8
	mov r0, r4
	bl MemFree
	mov r0, r5
	bl MemFree
	add sp, sp, #0x14c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
#if defined(EUROPE)
#define SUB_02060FD8_OFFSET 2
#elif defined(JAPAN)
#define SUB_02060FD8_OFFSET -0x3C2
#else
#define SUB_02060FD8_OFFSET 0
#endif
_02061BD0: .word 0x000038C9 + SUB_02060FD8_OFFSET
_02061BD4: .word 0x000038CB + SUB_02060FD8_OFFSET
_02061BD8: .word 0x000038CC + SUB_02060FD8_OFFSET
_02061BDC: .word 0x000038CA + SUB_02060FD8_OFFSET
_02061BE0: .word 0x00003C1E + SUB_02060FD8_OFFSET
_02061BE4: .word 0x000038CE + SUB_02060FD8_OFFSET
_02061BE8: .word 0x000038CF + SUB_02060FD8_OFFSET
_02061BEC: .word 0x000038CD + SUB_02060FD8_OFFSET
_02061BF0: .word 0x00003C21 + SUB_02060FD8_OFFSET
_02061BF4: .word 0x00003C20 + SUB_02060FD8_OFFSET
_02061BF8: .word 0x00003C1F + SUB_02060FD8_OFFSET
_02061BFC: .word _020A4688
_02061C00: .word 0x00003C37 + SUB_02060FD8_OFFSET
_02061C04: .word _020A4698
_02061C08: .word MISSION_MENU_STRING_IDS_1
_02061C0C: .word _020A46A8
_02061C10: .word 0x00003C22 + SUB_02060FD8_OFFSET
_02061C14: .word 0x00003C23 + SUB_02060FD8_OFFSET
_02061C18: .word 0x00003C24 + SUB_02060FD8_OFFSET
_02061C1C: .word 0x00003C26 + SUB_02060FD8_OFFSET
_02061C20: .word 0x00003C25 + SUB_02060FD8_OFFSET
_02061C24: .word 0x00003C27 + SUB_02060FD8_OFFSET
_02061C28: .word 0x00003C28 + SUB_02060FD8_OFFSET
_02061C2C: .word 0x00003C2A + SUB_02060FD8_OFFSET
_02061C30: .word MISSION_RANK_POINTS
_02061C34: .word RANK_STRING_PTR_TABLE
_02061C38: .word 0x00003C29 + SUB_02060FD8_OFFSET
_02061C3C: .word 0x00003C2C + SUB_02060FD8_OFFSET
_02061C40: .word 0x00003C2B + SUB_02060FD8_OFFSET
_02061C44: .word MISSION_MENU_STRING_IDS_2
_02061C48: .word 0x000038DF + SUB_02060FD8_OFFSET
_02061C4C: .word 0x00003C2D + SUB_02060FD8_OFFSET
_02061C50: .word _020A3CBC
_02061C54: .word 0x00003C2E + SUB_02060FD8_OFFSET
_02061C58: .word 0x00003C2F + SUB_02060FD8_OFFSET
_02061C5C: .word 0x00003C30 + SUB_02060FD8_OFFSET
	arm_func_end sub_02060FD8
