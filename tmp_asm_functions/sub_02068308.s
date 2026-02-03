	arm_func_start sub_02068308
sub_02068308: ; 0x02068308
	mvn r2, #1
	cmp r0, r2
	moveq r0, #8
	bxeq lr
	sub r1, r2, #1
	cmp r0, r1
	moveq r0, #8
	bxeq lr
	add r1, r2, #1
	cmp r0, r1
	moveq r0, #0
	bx lr
	arm_func_end sub_02068308
