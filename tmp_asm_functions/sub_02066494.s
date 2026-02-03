	arm_func_start sub_02066494
sub_02066494: ; 0x02066494
	stmdb sp!, {r3, lr}
	bl sub_02046C78
	cmp r0, #0
	movne r0, #0x1f
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02066494
