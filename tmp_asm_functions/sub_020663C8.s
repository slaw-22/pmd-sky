	arm_func_start sub_020663C8
sub_020663C8: ; 0x020663C8
	stmdb sp!, {r3, lr}
	ldrsb ip, [sp, #8]
	str ip, [sp]
	bl sub_02046A9C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020663C8
