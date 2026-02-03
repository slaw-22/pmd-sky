	arm_func_start sub_020691B8
sub_020691B8: ; 0x020691B8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r2, _020692A8 ; =_020B0B2C
	mvn r1, #1
	ldr ip, [r2, #0x14]
	ldrsb r0, [ip, #0x7d]
	cmp r0, r1
	bne _0206926C
	ldr r0, [ip, #8]
	mov r3, #4
	str r0, [ip, #0xd88]
	ldr lr, [r2, #0x14]
	ldr r0, _020692AC ; =_020A9288
	ldr r1, [lr, #0xe40]
	add r2, lr, #0x188
	str r1, [sp]
	ldr ip, [lr, #0x80]
	ldr r1, _020692B0 ; =0x00441E33
	str ip, [sp, #4]
	str r3, [sp, #8]
	ldr r3, [lr, #0xe44]
	add r2, r2, #0xc00
	bl CreateCollectionMenu
	ldr r3, _020692A8 ; =_020B0B2C
	mov r1, #0
	ldr ip, [r3, #0x14]
	mov r2, #0xc
	strb r0, [ip, #0x7d]
	ldr r0, [r3, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl sub_0202C6F0
	ldr r0, _020692A8 ; =_020B0B2C
	mov r1, #1
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl SetCollectionMenuField0x1B2
	ldr r0, _020692A8 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0x7c]
	cmp r0, #0
	bne _02069290
	ldrsb r0, [r1, #0x7d]
	mov r1, #1
	bl sub_0202D07C
	b _02069290
_0206926C:
	ldrb r1, [ip, #0xd84]
	cmp r1, #0
	beq _0206928C
	ldr r1, [ip, #0x80]
	mov r2, #4
	mov r3, #0
	bl sub_0202C654
	b _02069290
_0206928C:
	bl sub_0202C620
_02069290:
	ldr r0, _020692A8 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd84]
	add sp, sp, #0xc
	ldmia sp!, {pc}
	.align 2, 0
_020692A8: .word _020B0B2C
_020692AC: .word _020A9288
_020692B0: .word 0x00441E33
	arm_func_end sub_020691B8
