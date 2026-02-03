	arm_func_start sub_0205F5C8
sub_0205F5C8: ; 0x0205F5C8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #1]
	mov r4, r1
	cmp r2, #3
	ldreqb r0, [r5, #2]
	cmpeq r0, #3
	beq _0205F5F8
	cmp r2, #6
	ldreqb r0, [r5, #2]
	cmpeq r0, #4
	bne _0205F62C
_0205F5F8:
	ldrb r0, [r5, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F62C:
	ldrb r1, [r4, #1]
	cmp r1, #3
	ldreqb r0, [r4, #2]
	cmpeq r0, #3
	beq _0205F650
	cmp r1, #6
	ldreqb r0, [r4, #2]
	cmpeq r0, #4
	bne _0205F684
_0205F650:
	ldrb r0, [r4, #4]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F684:
	cmp r2, #8
	cmpne r2, #5
	cmpne r2, #0xe
	bne _0205F6B0
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F6B0:
	cmp r1, #8
	cmpne r1, #5
	cmpne r1, #0xe
	bne _0205F6DC
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movhi r0, #1
	movls r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
_0205F6DC:
	ldrb r1, [r4, #4]
	ldrb r0, [r5, #4]
	mov r2, #1
	cmp r0, r1
	bhi _0205F708
	bne _0205F704
	ldrb r1, [r5, #5]
	ldrb r0, [r4, #5]
	cmp r1, r0
	bhi _0205F708
_0205F704:
	mov r2, #0
_0205F708:
	and r0, r2, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205F5C8
