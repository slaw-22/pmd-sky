	arm_func_start sub_02063BB8
sub_02063BB8: ; 0x02063BB8
	cmp r0, #0
	cmpne r0, #2
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_02063BB8
