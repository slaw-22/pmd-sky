	arm_func_start sub_02062944
sub_02062944: ; 0x02062944
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #0x12
	mov r8, r1
	mov r5, r2
	mov r4, r3
	bl RandIntSafe
	mov r0, r0, lsl #0x10
	cmp sb, #0
	mov r6, r0, lsr #0x10
	mov r7, #0
	beq _02062984
	mov r0, sb
	bl RandIntSafe
	mov r0, r0, lsl #1
	ldrsh r7, [r8, r0]
_02062984:
	bl GetRank
	cmp r0, #3
	movhs r0, #1
	movlo r0, #0
	tst r0, #0xff
	cmpne r6, #0
	moveq r0, #0
	streqh r0, [r4, #2]
	bl GetRank
	cmp r0, #4
	movhs r0, #1
	movlo r0, #0
	tst r0, #0xff
	cmpne r7, #0
	moveq r0, #0
	streqh r0, [r4, #4]
	mov r1, r4
	mov r0, #3
	bl sub_0206220C
	cmp r0, #0
	beq _020629F4
	cmp r0, #1
	beq _02062A04
	cmp r0, #2
	moveq r0, #1
	streqb r0, [r5]
	streqh r7, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020629F4:
	mov r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02062A04:
	mov r0, #0
	strb r0, [r5]
	strh r6, [r5, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02062944
