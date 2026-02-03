	arm_func_start DeleteAllPossibleMonstersList
DeleteAllPossibleMonstersList: ; 0x0205F7C4
	stmdb sp!, {r3, lr}
	ldr r0, _0205F7F0 ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F7F0 ; =MISSION_DELIVER_LIST_PTR
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F7F0: .word MISSION_DELIVER_LIST_PTR
	arm_func_end DeleteAllPossibleMonstersList
