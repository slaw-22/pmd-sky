	arm_func_start sub_0206937C
sub_0206937C: ; 0x0206937C
	stmdb sp!, {r3, lr}
	ldr r0, _020693E8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r1, [r0, #4]
	cmp r1, #0xa
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	cmpne r1, #0xe
	cmpne r1, #0xf
	cmpne r1, #0x10
	cmpne r1, #0x11
	beq _020693BC
	sub r0, r1, #0x14
	cmp r0, #1
	bhi _020693C8
_020693BC:
	bl sub_02069444
	bl sub_02069894
	ldmia sp!, {r3, pc}
_020693C8:
	cmp r1, #0x13
	bne _020693DC
	bl sub_0206941C
	bl sub_02069870
	ldmia sp!, {r3, pc}
_020693DC:
	bl sub_020693EC
	bl sub_02069870
	ldmia sp!, {r3, pc}
	.align 2, 0
_020693E8: .word _020B0B2C
	arm_func_end sub_0206937C
