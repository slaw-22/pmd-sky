	arm_func_start sub_02064014
sub_02064014: ; 0x02064014
	stmdb sp!, {r3, lr}
	ldr ip, _02064048 ; =_020B0B04
	mov r3, #0x60
	ldr ip, [ip]
	mov lr, r1
	smlabb r0, r0, r3, ip
	ldr r3, [r0, #0xb0]
	add r0, ip, r2, lsl #5
	ldr r1, [r3, #0xc]
	ldr r3, [r3, #8]
	mov r2, lr
	bl sub_020646F0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02064048: .word _020B0B04
	arm_func_end sub_02064014
