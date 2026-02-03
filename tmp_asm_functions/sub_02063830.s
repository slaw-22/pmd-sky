	arm_func_start sub_02063830
sub_02063830: ; 0x02063830
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov fp, r3
	mov r5, r6
	ldr r7, [sp, #0x28]
	b _0206394C
_02063854:
	mov r0, sl
	mov r1, r5
	bl sub_02063778
	cmp r0, #0
	beq _02063948
	mov r0, sl
	mov r1, r5
	bl sub_0206379C
	cmp r0, #0
	bne _02063948
	ldr r1, [sl, #8]
	mov r0, #0x18
	mla r4, r5, r0, r1
	mov r0, #0
	strb r0, [sl, #0x15]
	ldrsh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	ldrsh r0, [r4, #4]
	cmp r0, #0
	bgt _020638F4
	ldrsh r0, [r4, #2]
	add r2, r4, #0x14
	strh r0, [r4, #4]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	ldrhs r1, [r4, #8]
	movhs r0, #1
	strhs r1, [r4, #0xc]
	strhsb r0, [sl, #0x15]
	ldr r3, [r4, #0xc]
	mov r1, #4
	add r0, r3, #4
	str r0, [r4, #0xc]
_020638E0:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _020638E0
	mov r6, #1
_020638F4:
	cmp r7, #0
	cmpeq r6, #0
	beq _02063948
	ldr r0, [sl]
	cmp r0, #0
	beq _02063924
	ldrb ip, [sl, #0x14]
	mov r2, sb
	add r1, r4, #0x14
	add r3, r8, r5
	str ip, [sp]
	bl sub_020637C8
_02063924:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _02063948
	ldrb ip, [sl, #0x14]
	mov r2, sb
	add r1, r4, #0x14
	add r3, r8, r5
	str ip, [sp]
	bl sub_020637FC
_02063948:
	add r5, r5, #1
_0206394C:
	cmp r5, fp
	blt _02063854
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02063830
