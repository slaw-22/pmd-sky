	arm_func_start sub_02063610
sub_02063610: ; 0x02063610
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02063610
