	arm_func_start sub_0205BD40
sub_0205BD40: ; 0x0205BD40
	tst r0, #2
	movne r0, #0
	bxne lr
	tst r0, #1
	movne r0, #2
	moveq r0, #1
	bx lr
	arm_func_end sub_0205BD40
