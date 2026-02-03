	arm_func_start sub_02067524
sub_02067524: ; 0x02067524
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	ldr r2, _02067580 ; =_020B0B2C
	b _02067568
_02067538:
	cmp lr, r1
	movge r0, #0
	ldmgeia sp!, {r4, pc}
	add r3, ip, r4
	ldrb r3, [r3, #0x4c]
	cmp r3, #0
	addne r3, ip, r4, lsl #1
	ldrnesh ip, [r3, #0xc]
	movne r3, lr, lsl #1
	addne lr, lr, #1
	strneh ip, [r0, r3]
	add r4, r4, #1
_02067568:
	ldr ip, [r2, #0x14]
	ldr r3, [ip, #0x6c]
	cmp r4, r3
	blt _02067538
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02067580: .word _020B0B2C
	arm_func_end sub_02067524
