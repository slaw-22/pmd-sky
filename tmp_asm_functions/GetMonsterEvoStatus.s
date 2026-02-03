	arm_func_start GetMonsterEvoStatus
GetMonsterEvoStatus: ; 0x0205A210
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x3c
	add r1, sp, #0
	mov r4, r0
	bl GetEvolutionPossibilities
	ldrh r0, [sp, #6]
	tst r0, #1
	beq _0205A274
	ldrb r0, [r4, #2]
	cmp r0, #0xd6
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	bne _0205A254
	bl JoinedAtRangeCheck2
	cmp r0, #0
	beq _0205A26C
_0205A254:
	mov r0, #0xa
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _0205A280
_0205A26C:
	mov r0, #1
	b _0205A280
_0205A274:
	tst r0, #4
	movne r0, #2
	moveq r0, #0
_0205A280:
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, pc}
	arm_func_end GetMonsterEvoStatus
