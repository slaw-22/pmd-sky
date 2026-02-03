	arm_func_start sub_0206423C
sub_0206423C: ; 0x0206423C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #2
	beq _02064264
	bl sub_02063E98
	ldrsh r1, [r4, #0x38]
	str r1, [r0, #4]
	ldrsh r1, [r4, #0x3a]
	str r1, [r0, #8]
_02064264:
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r1, r0
	add r0, r4, #0x2c
	bl sub_0200946C
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r2, r0
	ldrsh r0, [r4, #0x32]
	ldrsh r1, [r4, #0x34]
	bl sub_020094C4
	ldr r0, [r4, #0xc]
	bl sub_02064228
	mov r1, r0
	add r0, r4, #0x28
	bl sub_020090C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206423C
