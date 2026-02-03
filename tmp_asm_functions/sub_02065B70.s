	arm_func_start sub_02065B70
sub_02065B70: ; 0x02065B70
	ldr r1, _02065B7C ; =_020B0B08
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_02065B7C: .word _020B0B08
	arm_func_end sub_02065B70
