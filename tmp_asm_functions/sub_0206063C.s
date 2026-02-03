	arm_func_start sub_0206063C
sub_0206063C: ; 0x0206063C
	ldrb r2, [r0, #0x20]
	ldrb r0, [r1, #1]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_0206063C
