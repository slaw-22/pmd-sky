	arm_func_start sub_02069940
sub_02069940: ; 0x02069940
	ldr r1, _02069954 ; =_020B0B44
	ldr r1, [r1]
	cmp r1, #0
	strneh r0, [r1, #8]
	bx lr
	.align 2, 0
_02069954: .word _020B0B44
	arm_func_end sub_02069940
