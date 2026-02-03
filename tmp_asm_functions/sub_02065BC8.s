	arm_func_start sub_02065BC8
sub_02065BC8: ; 0x02065BC8
	ldr r1, _02065BD4 ; =_020B0B08
	strh r0, [r1, #0xc]
	bx lr
	.align 2, 0
_02065BD4: .word _020B0B08
	arm_func_end sub_02065BC8
