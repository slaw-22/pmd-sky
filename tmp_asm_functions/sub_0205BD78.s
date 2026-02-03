	arm_func_start sub_0205BD78
sub_0205BD78: ; 0x0205BD78
	stmdb sp!, {r3, lr}
	mov r0, #2
	bl RandInt
	orr r0, r0, #2
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205BD78
