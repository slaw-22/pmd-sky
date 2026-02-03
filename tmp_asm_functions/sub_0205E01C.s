	arm_func_start sub_0205E01C
sub_0205E01C: ; 0x0205E01C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb ip, [r7]
	mov r6, r1
	mov r5, r2
	cmp ip, #0
	mov r4, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	blt _0205E05C
	bl sub_0205E258
	cmp r0, #0
	beq _0205E070
	cmp r4, #1
	bne _0205E070
_0205E05C:
	ldrb r0, [r7, #4]
	cmp r0, r6
	bne _0205E088
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205E070:
	ldrb r0, [r7, #4]
	cmp r0, r6
	ldreqb r0, [r7, #5]
	cmpeq r0, r5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_0205E088:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205E01C
