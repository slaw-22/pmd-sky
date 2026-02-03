	arm_func_start sub_0205BB7C
sub_0205BB7C: ; 0x0205BB7C
	ldr r3, _0205BBA0 ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mla r3, r1, r2, r3
	ldr r2, [r3, #4]
	ldr r1, [r3, #8]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0205BBA0: .word _020B0A54
	arm_func_end sub_0205BB7C
