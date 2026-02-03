	arm_func_start ValidateNormalChallengeMission
ValidateNormalChallengeMission: ; 0x02060804
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldrb r1, [r8, #0x20]
	ldrb r0, [r7, #1]
	mov r4, #0
	mov r5, r4
	cmp r1, r0
	ldreqb r1, [r8, #0x21]
	ldreqb r0, [r7, #2]
	mov r6, r4
	mov r2, r4
	mov r3, r4
	mov ip, r4
	cmpeq r1, r0
	bne _02060860
	ldrh r0, [r8, #0xe]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, r4
	tst r0, #0xff
	movne ip, #1
_02060860:
	cmp ip, #0
	beq _02060884
	ldrh r0, [r8, #0x14]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r3, #1
_02060884:
	cmp r3, #0
	beq _020608A8
	ldrh r0, [r8, #0x1a]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r2, #1
_020608A8:
	cmp r2, #0
	beq _020608C4
	ldrsh r0, [r8, #0x12]
	ldrsh r1, [r7, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r6, #1
_020608C4:
	cmp r6, #0
	beq _020608E0
	ldrsh r0, [r8, #0x18]
	ldrsh r1, [r7, #0x10]
	bl DexNumbersEqual
	cmp r0, #0
	movne r5, #1
_020608E0:
	cmp r5, #0
	beq _020608FC
	ldrsh r0, [r8, #0x1e]
	ldrsh r1, [r7, #0x12]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_020608FC:
	and r0, r4, #0xff
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ValidateNormalChallengeMission
