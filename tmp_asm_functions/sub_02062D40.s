	arm_func_start sub_02062D40
sub_02062D40: ; 0x02062D40
	stmdb sp!, {r3, lr}
	bl sub_0204F7A8
	cmp r0, #7
	movle r0, #1
	movgt r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062D40
