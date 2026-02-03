	arm_func_start sub_02065B80
sub_02065B80: ; 0x02065B80
	ldr r2, _02065B90 ; =_020B0B08
	strh r0, [r2, #0x10]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_02065B90: .word _020B0B08
	arm_func_end sub_02065B80
