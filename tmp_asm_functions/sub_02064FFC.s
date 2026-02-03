	arm_func_start sub_02064FFC
sub_02064FFC: ; 0x02064FFC
	mov r1, #0xc
	smulbb r1, r0, r1
	ldr r0, _02065010 ; =_020A5490
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_02065010: .word _020A5490
	arm_func_end sub_02064FFC
