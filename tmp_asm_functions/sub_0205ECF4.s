	arm_func_start sub_0205ECF4
sub_0205ECF4: ; 0x0205ECF4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrb r5, [r4, #4]
	ldrb r6, [r4, #5]
	mov r7, #0
	bl IsMissionSuspendedAndValid
	cmp r0, #0
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_0205E258
	cmp r0, #0
	movne r7, #1
	mov r4, #0
	ldr r8, _0205ED80 ; =MISSION_DELIVER_LIST_PTR
	b _0205ED70
_0205ED34:
	ldr r1, [r8, #0x18]
	add r0, r1, r4, lsl #5
	ldrb r0, [r0, #0x100]
	cmp r0, #5
	bne _0205ED6C
	add r0, r1, #0x100
	mov r1, r5
	mov r2, r6
	mov r3, r7
	add r0, r0, r4, lsl #5
	bl sub_0205E01C
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0205ED6C:
	add r4, r4, #1
_0205ED70:
	cmp r4, #8
	blt _0205ED34
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205ED80: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205ECF4
