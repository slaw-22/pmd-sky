	arm_func_start sub_0205B890
sub_0205B890: ; 0x0205B890
	ldr r1, _0205B8C8 ; =_020B0A54
	ldr r2, [r0]
	ldr r3, [r1, #4]
	ldr r0, [r0, #4]
	ldr r1, [r3]
	add r1, r3, r1, lsl #3
	str r2, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r3]
	cmp r0, #0x1f
	addlt r0, r0, #1
	movge r0, #0
	str r0, [r3]
	bx lr
	.align 2, 0
_0205B8C8: .word _020B0A54
	arm_func_end sub_0205B890
