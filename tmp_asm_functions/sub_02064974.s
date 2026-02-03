	arm_func_start sub_02064974
sub_02064974: ; 0x02064974
	stmdb sp!, {r4, lr}
	mov r2, #0x60
	smlabb r4, r1, r2, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	beq _0206499C
	mov r0, r4
	mov r1, r2
	bl MemZero
	ldmia sp!, {r4, pc}
_0206499C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r4, #0x41]
	cmp r1, #2
	bne _020649CC
	bl MemFree
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x48]
	ldr r0, _020649EC ; =_020A46B0
	bl Debug_Print0
	b _020649DC
_020649CC:
	bl MemFree
	ldr r0, _020649F0 ; =_020A46D0
	mov r1, r4
	bl Debug_Print0
_020649DC:
	mov r0, r4
	mov r1, #0x60
	bl MemZero
	ldmia sp!, {r4, pc}
	.align 2, 0
_020649EC: .word _020A46B0
_020649F0: .word _020A46D0
	arm_func_end sub_02064974
