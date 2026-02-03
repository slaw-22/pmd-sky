	arm_func_start sub_02065BAC
sub_02065BAC: ; 0x02065BAC
	ldr ip, _02065BC4 ; =_020B0B08
	strh r0, [ip, #2]
	strh r1, [ip]
	strh r2, [ip, #8]
	strh r3, [ip, #6]
	bx lr
	.align 2, 0
_02065BC4: .word _020B0B08
	arm_func_end sub_02065BAC
