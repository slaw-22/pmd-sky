	arm_func_start sub_0206955C
sub_0206955C: ; 0x0206955C
	stmdb sp!, {r3, lr}
	ldr r0, _02069594 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	add r0, r0, #0xd00
	ldrsb r0, [r0, #0x85]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ClosePortraitBox
	ldr r0, _02069594 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd85]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069594: .word _020B0B2C
	arm_func_end sub_0206955C
