	arm_func_start sub_02063E68
sub_02063E68: ; 0x02063E68
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02063E68
