	arm_func_start DeleteAllPossibleDungeonsList
DeleteAllPossibleDungeonsList: ; 0x0205F8A0
	stmdb sp!, {r3, lr}
	ldr r0, _0205F8CC ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F8CC ; =MISSION_DELIVER_LIST_PTR
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F8CC: .word MISSION_DELIVER_LIST_PTR
	arm_func_end DeleteAllPossibleDungeonsList
