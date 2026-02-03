	arm_func_start sub_0205BC94
sub_0205BC94: ; 0x0205BC94
	ldr r1, _0205BCC0 ; =_020B0A54
	mov r2, #1
	ldr r3, [r1, #8]
	ldrh r1, [r3, #0x44]
	strh r1, [r0]
	ldrh r1, [r3, #0x46]
	strh r1, [r0, #2]
	ldrh r1, [r3, #0x48]
	strh r1, [r0, #4]
	strb r2, [r0]
	bx lr
	.align 2, 0
_0205BCC0: .word _020B0A54
	arm_func_end sub_0205BC94
