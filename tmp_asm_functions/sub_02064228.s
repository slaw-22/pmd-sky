	arm_func_start sub_02064228
sub_02064228: ; 0x02064228
	cmp r0, #0
	cmpne r0, #2
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end sub_02064228
