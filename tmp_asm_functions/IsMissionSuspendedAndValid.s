	arm_func_start IsMissionSuspendedAndValid
IsMissionSuspendedAndValid: ; 0x0205C854
	stmdb sp!, {r3, lr}
	ldrb r1, [r0]
	cmp r1, #4
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl IsMissionValid
	ldmia sp!, {r3, pc}
	arm_func_end IsMissionSuspendedAndValid
