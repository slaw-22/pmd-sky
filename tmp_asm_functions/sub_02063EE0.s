	arm_func_start sub_02063EE0
sub_02063EE0: ; 0x02063EE0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr ip, _02063F2C ; =_020B0B04
	ldrb r4, [sp, #0x18]
	ldr r5, [ip]
	mov ip, #0x60
	str r3, [sp]
	mov r3, r2
	mov r2, r1
	ldr r1, [sp, #0x1c]
	str r4, [sp, #4]
	smlabb r0, r0, ip, r5
	str r1, [sp, #8]
	ldr lr, [sp, #0x20]
	ldr r1, [r0, #0xb0]
	add r0, r5, lr, lsl #5
	bl sub_0206478C
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02063F2C: .word _020B0B04
	arm_func_end sub_02063EE0
