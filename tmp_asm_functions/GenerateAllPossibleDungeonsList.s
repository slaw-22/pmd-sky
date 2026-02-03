	arm_func_start GenerateAllPossibleDungeonsList
GenerateAllPossibleDungeonsList: ; 0x0205F7F4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xb4
	mov r0, #0xb4
	mov r1, #0xf
	bl MemAlloc
	mov r5, #0
	mov r4, r0
	mov r1, r5
	mov r8, r5
	add r0, sp, #0
_0205F81C:
	strb r8, [r0, r1]
	add r1, r1, #1
	cmp r1, #0xb4
	blt _0205F81C
	mov r7, #1
	add r6, sp, #0
_0205F834:
	and r0, r8, #0xff
	bl CanDungeonBeUsedForMission
	cmp r0, #0
	strneb r7, [r6, r8]
	add r8, r8, #1
	cmp r8, #0xb4
	blt _0205F834
	mov r2, #0
	add r1, sp, #0
_0205F858:
	ldrb r0, [r1, r2]
	cmp r0, #0
	strneb r2, [r4, r5]
	add r2, r2, #1
	addne r5, r5, #1
	cmp r2, #0xb4
	blt _0205F858
	cmp r5, #0
	ldrne r0, _0205F89C ; =MISSION_DELIVER_LIST_PTR
	strne r4, [r0, #8]
	strne r5, [r0, #0xc]
	bne _0205F890
	mov r0, r4
	bl MemFree
_0205F890:
	mov r0, r5
	add sp, sp, #0xb4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205F89C: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GenerateAllPossibleDungeonsList
