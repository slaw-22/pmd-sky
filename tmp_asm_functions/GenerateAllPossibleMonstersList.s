	arm_func_start GenerateAllPossibleMonstersList
GenerateAllPossibleMonstersList: ; 0x0205F758
	stmdb sp!, {r4, r5, r6, lr}
	mov r0, #0x430
	mov r1, #0xf
	bl MemAlloc
	mov r5, r0
	mov r4, #0
	mov r6, #1
_0205F774:
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	bl CanMonsterBeUsedForMissionWrapper
	cmp r0, #0
	movne r0, r4, lsl #1
	strneh r6, [r5, r0]
	add r6, r6, #1
	addne r4, r4, #1
	cmp r6, #0x218
	blt _0205F774
	cmp r4, #0
	ldrne r0, _0205F7C0 ; =MISSION_DELIVER_LIST_PTR
	strne r5, [r0, #0x10]
	strne r4, [r0, #0x14]
	bne _0205F7B8
	mov r0, r5
	bl MemFree
_0205F7B8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205F7C0: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GenerateAllPossibleMonstersList
