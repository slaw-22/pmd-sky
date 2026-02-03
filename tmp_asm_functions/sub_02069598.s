	arm_func_start sub_02069598
sub_02069598: ; 0x02069598
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _0206965C ; =_020B0B2C
	tst r0, #0x400
	ldr r5, [r1, #0x14]
	beq _02069654
	ldrsb r0, [r5, #0x7d]
	ldr r6, [r5, #8]
	bl sub_0202C748
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _0206964C
	add r4, r5, #0x4c
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _02069600
	mov r0, #6
	bl PlaySeVolumeWrapper
	mov r0, #0
	strb r0, [r4, r6]
	bl sub_020674E8
	cmp r0, #0
	bne _02069644
	ldrsb r0, [r5, #0x7d]
	mov r1, #0
	bl sub_0202D07C
	b _02069644
_02069600:
	ldr r0, [r5, #0x78]
	cmp r0, #0
	blt _0206961C
	bl sub_020674E8
	ldr r1, [r5, #0x78]
	cmp r0, r1
	bhs _0206963C
_0206961C:
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldrsb r0, [r5, #0x7d]
	mov r1, #1
	bl sub_0202D07C
	mov r0, #1
	strb r0, [r4, r6]
	b _02069644
_0206963C:
	mov r0, #2
	bl PlaySeVolumeWrapper
_02069644:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_0206964C:
	mov r0, #3
	bl PlaySeVolumeWrapper
_02069654:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206965C: .word _020B0B2C
	arm_func_end sub_02069598
