	arm_func_start sub_0205EE40
sub_0205EE40: ; 0x0205EE40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	bl GetMaxMembersAllowed
	cmp r0, #1
	bne _0205EE80
	bl sub_020568A4
	strh r0, [sp, #4]
	ldrsh r0, [sp, #4]
	cmp r0, #0
	movlt r0, #1
	blt _0205EFFC
	mov r4, #1
	b _0205EE98
_0205EE80:
	add r0, sp, #4
	bl GetPartyMembers
	mov r4, r0
	cmp r4, #1
	movlt r0, #1
	blt _0205EFFC
_0205EE98:
	mov r5, #0
	strh r5, [sl]
	strh r5, [sb]
_0205EEA4:
	ldr r1, _0205F004 ; =MISSION_DELIVER_LIST_PTR
	mov r0, r5, lsl #0x18
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r2, r1, r0, asr #19
	ldrb r1, [r2, #4]
	ldr r0, [sp]
	cmp r1, r0
	ldreqb r0, [r2]
	cmpeq r0, #5
	bne _0205EFD8
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0205EF54
	ldrh r8, [r2, #0x1c]
	cmp r8, #0
	beq _0205EFD8
	mov r6, #0
	add fp, sp, #4
	b _0205EF40
_0205EEF4:
	mov r0, r6, lsl #1
	ldrsh r2, [fp, r0]
	ldr r0, _0205F008 ; =TEAM_MEMBER_TABLE_PTR
	mov r1, #0
	ldr r3, [r0]
	mov r0, #0x44
	smlabb r7, r2, r0, r3
	ldrsh r0, [r7, #4]
	bl GetType
	cmp r8, r0
	beq _0205EF34
	ldrsh r0, [r7, #4]
	mov r1, #1
	bl GetType
	cmp r8, r0
	bne _0205EF3C
_0205EF34:
	mov r8, #0
	b _0205EF48
_0205EF3C:
	add r6, r6, #1
_0205EF40:
	cmp r6, r4
	blt _0205EEF4
_0205EF48:
	cmp r8, #0
	strneh r8, [sl]
	b _0205EFD8
_0205EF54:
	cmp r0, #1
	bne _0205EFD8
	ldrsh r6, [r2, #0x1c]
	mov r0, r6
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	mov r7, r0
	bl FemaleToMaleForm
	mov fp, r0
	mov r0, r7
	bl GetSecondFormIfValid
	mov r7, r0
	cmp r6, #0
	beq _0205EFD8
	mov r8, #0
	b _0205EFC8
_0205EF90:
	mov r1, r8, lsl #1
	add r0, sp, #4
	ldrsh r1, [r0, r1]
	ldr r0, _0205F008 ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r0]
	mov r0, #0x44
	smlabb r0, r1, r0, r2
	ldrsh r0, [r0, #4]
	bl GetBaseFormBurmyWormadamShellosGastrodonCherrim
	cmp r0, fp
	cmpne r0, r7
	moveq r6, #0
	beq _0205EFD0
	add r8, r8, #1
_0205EFC8:
	cmp r8, r4
	blt _0205EF90
_0205EFD0:
	cmp r6, #0
	strneh r6, [sb]
_0205EFD8:
	add r5, r5, #1
	cmp r5, #8
	blt _0205EEA4
	ldrh r0, [sl]
	cmp r0, #0
	ldreqsh r0, [sb]
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #0
_0205EFFC:
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0205F004: .word MISSION_DELIVER_LIST_PTR
_0205F008: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_0205EE40
