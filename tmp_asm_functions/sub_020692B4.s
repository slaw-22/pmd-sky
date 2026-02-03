	arm_func_start sub_020692B4
sub_020692B4: ; 0x020692B4
	stmdb sp!, {r3, lr}
	ldr r0, _020692F8 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl sub_0202836C
	ldr r0, _020692F8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldrsb r0, [r0, #0x7d]
	bl CloseCollectionMenu
	ldr r0, _020692F8 ; =_020B0B2C
	mvn r1, #1
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0x7d]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020692F8: .word _020B0B2C
	arm_func_end sub_020692B4
