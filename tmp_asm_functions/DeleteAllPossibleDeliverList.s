	arm_func_start DeleteAllPossibleDeliverList
DeleteAllPossibleDeliverList: ; 0x0205F90C
	stmdb sp!, {r3, lr}
	ldr r0, _0205F938 ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0205F938 ; =MISSION_DELIVER_LIST_PTR
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F938: .word MISSION_DELIVER_LIST_PTR
	arm_func_end DeleteAllPossibleDeliverList
