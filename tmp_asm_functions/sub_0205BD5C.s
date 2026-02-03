	arm_func_start sub_0205BD5C
sub_0205BD5C: ; 0x0205BD5C
	stmdb sp!, {r3, lr}
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205BD5C
