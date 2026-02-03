	arm_func_start sub_0206941C
sub_0206941C: ; 0x0206941C
	ldr r1, _02069440 ; =_020B0B2C
	mov r0, #0xb0
	ldr r3, [r1, #0x14]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0x74]
	add r1, r3, r1, lsl #1
	ldrsh r1, [r1, #0xc]
	smlabb r0, r1, r0, r2
	bx lr
	.align 2, 0
_02069440: .word _020B0B2C
	arm_func_end sub_0206941C
