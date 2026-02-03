	arm_func_start sub_020693EC
sub_020693EC: ; 0x020693EC
	ldr r1, _02069414 ; =_020B0B2C
	ldr r0, _02069418 ; =_020B0A54
	ldr r3, [r1, #0x14]
	ldr r2, [r0]
	ldr r1, [r3, #8]
	mov r0, #0xb0
	add r1, r3, r1, lsl #1
	ldrsh r1, [r1, #0xc]
	smlabb r0, r1, r0, r2
	bx lr
	.align 2, 0
_02069414: .word _020B0B2C
_02069418: .word _020B0A54
	arm_func_end sub_020693EC
