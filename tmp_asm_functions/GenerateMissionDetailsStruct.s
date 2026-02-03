	arm_func_start GenerateMissionDetailsStruct
GenerateMissionDetailsStruct: ; 0x02060150
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	strne r5, [r4, #0x5c]
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	add r1, r4, #0x18
	bl sub_02062E5C
	mov r0, r5
	mov r1, r4
	bl sub_02060274
	mov r1, r5
	bl sub_0206096C
	str r0, [r4, #0x60]
	add r0, r5, #4
	str r0, [r4, #8]
	mov r1, #0
	str r1, [r4, #0xc]
	ldrsh r0, [r5, #0xe]
	strh r0, [r4, #0x10]
	ldrsh r0, [r5, #0x10]
	strh r0, [r4, #0x12]
	ldrsh r0, [r5, #0x12]
	strh r0, [r4, #0x14]
	ldrsh r0, [r5, #0x14]
	strh r0, [r4, #0x16]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	streqb r1, [r4, #0x49]
	ldreqh r0, [r5, #0x1c]
	streqb r0, [r4, #0x4c]
	beq _020601EC
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r4, #0x49]
	ldreqsh r0, [r5, #0x1c]
	streqh r0, [r4, #0x4a]
_020601EC:
	ldrb r0, [r5]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02060258
_020601FC: ; jump table
	b _02060258 ; case 0
	b _02060220 ; case 1
	b _02060220 ; case 2
	b _02060220 ; case 3
	b _02060220 ; case 4
	b _02060244 ; case 5
	b _02060230 ; case 6
	b _02060244 ; case 7
	b _02060244 ; case 8
_02060220:
	mov r0, #1
	strb r0, [r4, #0x47]
	strb r0, [r4, #0x48]
	b _02060264
_02060230:
	mov r0, #0
	strb r0, [r4, #0x47]
	mov r0, #3
	strb r0, [r4, #0x48]
	b _02060264
_02060244:
	mov r0, #3
	strb r0, [r4, #0x47]
	mov r0, #2
	strb r0, [r4, #0x48]
	b _02060264
_02060258:
	mov r0, #0
	strb r0, [r4, #0x47]
	strb r0, [r4, #0x48]
_02060264:
	str r5, [r4, #0x5c]
	mov r0, #0
	str r0, [r4, #0x64]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end GenerateMissionDetailsStruct
