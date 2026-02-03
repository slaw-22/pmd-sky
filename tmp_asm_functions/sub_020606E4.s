	arm_func_start sub_020606E4
sub_020606E4: ; 0x020606E4
	stmdb sp!, {r4, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov r4, #0
	mov ip, r4
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _02060728
	ldrh r2, [r0, #0xe]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, r4
	tst r2, #0xff
	movne ip, #1
_02060728:
	cmp ip, #0
	beq _02060744
	ldrsh r0, [r0, #0x12]
	ldrsh r1, [r1, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_02060744:
	and r0, r4, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end sub_020606E4
