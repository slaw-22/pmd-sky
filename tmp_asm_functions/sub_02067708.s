	arm_func_start sub_02067708
sub_02067708: ; 0x02067708
#if defined(EUROPE)
#define SUB_02067708_WORD_OFFSET 2
#elif defined(JAPAN)
#define SUB_02067708_WORD_OFFSET -0x3C2
#else
#define SUB_02067708_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x5c
	ldr r1, _02067C00 ; =_020B0B2C
	mov r6, #0
	add r0, sp, #0xc
	mov sb, r6
	ldr r4, [r1, #0x14]
	ldr r7, _02067C04 ; =_020A9298
	ldr r8, _02067C08 ; =0x00000233
	bl InitPreprocessorArgs
	bl sub_02068338
	ldr r1, _02067C00 ; =_020B0B2C
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #4]
	sub r2, r2, #4
	cmp r2, #0x10
	addls pc, pc, r2, lsl #2
	b _02067BC4
_02067750: ; jump table
	b _02067AF8 ; case 0
	b _02067BC4 ; case 1
	b _02067BC4 ; case 2
	b _02067BC4 ; case 3
	b _02067BC4 ; case 4
	b _02067A80 ; case 5
	b _02067794 ; case 6
	b _020677F0 ; case 7
	b _0206784C ; case 8
	b _020678A8 ; case 9
	b _02067904 ; case 10
	b _020679E0 ; case 11
	b _02067BC4 ; case 12
	b _02067A50 ; case 13
	b _02067B20 ; case 14
	b _02067B3C ; case 15
	b _02067BA0 ; case 16
_02067794:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	bl AlreadyHaveMission
	cmp r0, #0
	bne _020677C4
	bl CountJobListMissions
	cmp r0, #8
	blt _020677CC
_020677C4:
	mov r0, #3
	strb r0, [r4, #0xee0]
_020677CC:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #0x10]
	ldr r0, _02067C10 ; =_020B0B3C
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020677F0:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	bl AlreadyHaveMission
	cmp r0, #0
	bne _02067820
	bl CountJobListMissions
	cmp r0, #8
	blt _02067828
_02067820:
	mov r0, #3
	strb r0, [r4, #0xee0]
_02067828:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #0xe]
	ldr r0, _02067C18 ; =_020B0B3A
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_0206784C:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	bl AlreadyHaveMission
	cmp r0, #0
	bne _0206787C
	bl CountJobListMissions
	cmp r0, #8
	blt _02067884
_0206787C:
	mov r0, #3
	strb r0, [r4, #0xee0]
_02067884:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #9]
	ldr r0, _02067C1C ; =_020B0B35
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020678A8:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	bl AlreadyHaveMission
	cmp r0, #0
	bne _020678D8
	bl CountJobListMissions
	cmp r0, #8
	blt _020678E0
_020678D8:
	mov r0, #3
	strb r0, [r4, #0xee0]
_020678E0:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C0C ; =_020A9364
	ldrsb r2, [r0, #8]
	ldr r0, _02067C20 ; =_020B0B34
	ldr r5, _02067C14 ; =JOB_MENU_ITEMS_10
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067904:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r5, r0
	ldrb r0, [r5, #4]
	bl DungeonSwapIdToIdx
	ldrb r0, [r5]
	orr r8, r8, #0x400000
	orr r8, r8, #0x80000000
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0206798C
_02067940: ; jump table
	b _0206798C ; case 0
	b _02067954 ; case 1
	b _02067954 ; case 2
	b _02067954 ; case 3
	b _02067954 ; case 4
_02067954:
	mov r0, r5
	bl sub_0205ECF4
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #0xee0]
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C24 ; =_020A9394
	ldrsb r2, [r0, #6]
	ldr r0, _02067C28 ; =_020B0B32
	ldr r5, _02067C2C ; =JOB_MENU_ITEMS_12
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_0206798C:
	ldrb r1, [r5, #1]
	cmp r1, #3
	ldreqb r0, [r5, #2]
	cmpeq r0, #3
	moveq r0, #3
	streqb r0, [r4, #0xee0]
	beq _020679BC
	cmp r1, #6
	ldreqb r0, [r5, #2]
	cmpeq r0, #4
	moveq r0, #3
	streqb r0, [r4, #0xee0]
_020679BC:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C30 ; =_020A93B4
	ldrsb r2, [r0, #6]
	ldr r0, _02067C28 ; =_020B0B32
	ldr r5, _02067C34 ; =JOB_MENU_ITEMS_13
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_020679E0:
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r0, [r0]
	cmp r0, #4
	beq _02067A2C
	ldr r0, [r4, #8]
	add r0, r4, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r0, [r0]
	cmp r0, #1
	movne r0, #3
	strneb r0, [r4, #0xee0]
_02067A2C:
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C38 ; =_020A92EC
	ldrsb r2, [r0, #0xb]
	ldr r0, _02067C3C ; =_020B0B37
	ldr r5, _02067C40 ; =JOB_MENU_ITEMS_5
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067A50:
	ldr r5, _02067C44 ; =JOB_MENU_ITEMS_7
	ldr r6, _02067C48 ; =0x000037B0
	mov r7, sb
	bl sub_020692B4
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C4C ; =_020A931C
	ldrsb r2, [r0, #4]
	ldr r0, _02067C50 ; =_020B0B30
	ldr r1, [r1, r2, lsl #3]
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067A80:
	sub r1, r8, #0x100
	str r1, [sp, #0xc]
	add r1, r0, #0xd00
	mov r7, r6
	ldrsb r2, [r1, #0x85]
	sub r1, r7, #2
	ldr r5, _02067C54 ; =JOB_MENU_ITEMS_3
	cmp r2, r1
	ldreq r0, [r0, #4]
	ldr r6, _02067C58 ; =0x0000380C
	mov sb, #0x1000
	cmpeq r0, #9
	bne _02067AE4
	mov r0, r7
	mov r1, #3
	mov r2, #1
	bl CreatePortraitBox
	ldr r2, _02067C00 ; =_020B0B2C
	ldr r1, _02067C5C ; =_020A9278
	ldr r3, [r2, #0x14]
	strb r0, [r3, #0xd85]
	ldr r0, [r2, #0x14]
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0x85]
	bl ShowPortraitInPortraitBox
_02067AE4:
	ldr r1, [r5, #0xc]
	mov r0, #0
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
	b _02067BC4
_02067AF8:
	ldrsb r2, [r1, #0xc]
	ldr r1, _02067C60 ; =_020A9304
	ldr r0, _02067C64 ; =_020B0B38
	ldr r1, [r1, r2, lsl #3]
	ldr r5, _02067C68 ; =JOB_MENU_ITEMS_6
	str r1, [r4, #0xe48]
	str r0, [r4, #0xef4]
#ifdef NORTH_AMERICA
	rsb r6, r8, #0x3a40
#else
	ldr r6, _02067FF0 ; =0x0000380F
#endif
	mov r7, sb
	b _02067BC4
_02067B20:
	mov r0, #7
	mov r7, r6
	str r0, [r4, #0xe48]
	str r7, [r4, #0xef4]
	ldr r5, _02067C6C ; =JOB_MENU_ITEMS_9
	ldr r6, _02067C70 ; =0x000038BF
	b _02067BC4
_02067B3C:
	ldr r1, [r4, #0x6c]
	ldr r5, _02067C74 ; =JOB_MENU_ITEMS_11
	ldr r6, _02067C78 ; =0x00003878
	mov r2, sb
	b _02067B68
_02067B50:
	add r0, r4, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r4, #0x70]
	bne _02067B70
	add r2, r2, #1
_02067B68:
	cmp r2, r1
	blt _02067B50
_02067B70:
	ldr r0, [r4, #0x70]
	mov r7, #0
	str r0, [r4, #8]
	bl sub_0206937C
	ldr r0, _02067C00 ; =_020B0B2C
	ldr r1, _02067C7C ; =_020B0B39
	ldrsb r0, [r0, #0xd]
	add r0, r5, r0, lsl #3
	ldr r0, [r0, #4]
	str r0, [r4, #0xe48]
	str r1, [r4, #0xef4]
	b _02067BC4
_02067BA0:
	ldrsb r2, [r1, #7]
	ldr r1, _02067C80 ; =_020A9334
	ldr r0, _02067C84 ; =_020B0B33
	ldr r1, [r1, r2, lsl #3]
	ldr r5, _02067C88 ; =JOB_MENU_ITEMS_8
	str r1, [r4, #0xe48]
#ifdef NORTH_AMERICA
	add r6, r8, #0x3580
#else
	ldr r6, _02068014 ; =0x000037B5
#endif
	str r0, [r4, #0xef4]
	mov r7, sb
_02067BC4:
	add r3, r4, #0x248
	stmia sp, {r5, r6}
	add r4, sp, #0xc
	mov r0, r7
	mov r1, sb
	mov r2, r8
	add r3, r3, #0xc00
	str r4, [sp, #8]
	bl sub_02046A20
	ldr r0, _02067C00 ; =_020B0B2C
	mov r1, #3
	ldr r0, [r0, #0x14]
	str r1, [r0]
	add sp, sp, #0x5c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02067C00: .word _020B0B2C
_02067C04: .word _020A9298
_02067C08: .word 0x00000233
_02067C0C: .word _020A9364
_02067C10: .word _020B0B3C
_02067C14: .word JOB_MENU_ITEMS_10
_02067C18: .word _020B0B3A
_02067C1C: .word _020B0B35
_02067C20: .word _020B0B34
_02067C24: .word _020A9394
_02067C28: .word _020B0B32
_02067C2C: .word JOB_MENU_ITEMS_12
_02067C30: .word _020A93B4
_02067C34: .word JOB_MENU_ITEMS_13
_02067C38: .word _020A92EC
_02067C3C: .word _020B0B37
_02067C40: .word JOB_MENU_ITEMS_5
_02067C44: .word JOB_MENU_ITEMS_7
#ifdef JAPAN
_02067C48: .word 0x00003432
#else
_02067C48: .word 0x000037B0 + SUB_02067708_WORD_OFFSET
#endif
_02067C4C: .word _020A931C
_02067C50: .word _020B0B30
_02067C54: .word JOB_MENU_ITEMS_3
_02067C58: .word 0x0000380C + SUB_02067708_WORD_OFFSET
_02067C5C: .word _020A9278
_02067C60: .word _020A9304
_02067C64: .word _020B0B38
_02067C68: .word JOB_MENU_ITEMS_6
#if defined(EUROPE)
_02067FF0: .word 0x0000380F
#elif defined(JAPAN)
_02067FF0: .word 0x0000344B
#endif
_02067C6C: .word JOB_MENU_ITEMS_9
_02067C70: .word 0x000038BF + SUB_02067708_WORD_OFFSET
_02067C74: .word JOB_MENU_ITEMS_11
_02067C78: .word 0x00003878 + SUB_02067708_WORD_OFFSET
_02067C7C: .word _020B0B39
_02067C80: .word _020A9334
_02067C84: .word _020B0B33
_02067C88: .word JOB_MENU_ITEMS_8
#ifdef EUROPE
_02068014: .word 0x000037B5
#elif defined(JAPAN)
_02068014: .word 0x00003435
#endif
	arm_func_end sub_02067708
