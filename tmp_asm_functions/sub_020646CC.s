	arm_func_start sub_020646CC
sub_020646CC: ; 0x020646CC
	stmib r0, {r1, r2}
	mov r1, #0
	str r1, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end sub_020646CC
