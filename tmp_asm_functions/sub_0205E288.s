	arm_func_start sub_0205E288
sub_0205E288: ; 0x0205E288
	ldrb r3, [r0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldrb r3, [r0, #1]
	cmp r3, r1
	ldreqb r1, [r0, #2]
	ldreqb r0, [r2]
	cmpeq r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_0205E288
