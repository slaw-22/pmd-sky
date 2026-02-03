	arm_func_start sub_020630F0
sub_020630F0: ; 0x020630F0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	mov r1, #0
	bl GetExclusiveItem
	mov r5, r0
	mov r0, r4
	mov r1, #1
	bl GetExclusiveItem
	mov r4, r0
	cmp r5, #0
	cmpeq r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	streqh r4, [r6]
	beq _02063154
	cmp r4, #0
	streqh r5, [r6]
	beq _02063154
	mov r0, #2
	bl RandInt
	cmp r0, #0
	moveq r5, r4
	strh r5, [r6]
_02063154:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020630F0
