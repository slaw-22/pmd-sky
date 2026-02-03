	arm_func_start sub_020674CC
sub_020674CC: ; 0x020674CC
	ldr r0, _020674E4 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #8]
	add r0, r1, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_020674E4: .word _020B0B2C
	arm_func_end sub_020674CC
