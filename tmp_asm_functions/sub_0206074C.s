	arm_func_start sub_0206074C
sub_0206074C: ; 0x0206074C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0x20]
	ldrb r0, [r6, #1]
	mov r4, #0
	mov r5, r4
	cmp r1, r0
	ldreqb r1, [r7, #0x21]
	ldreqb r0, [r6, #2]
	mov r2, r4
	mov r3, r4
	cmpeq r1, r0
	bne _020607A0
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, r4
	tst r0, #0xff
	movne r3, #1
_020607A0:
	cmp r3, #0
	beq _020607C4
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	cmpne r0, #1
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r2, #1
_020607C4:
	cmp r2, #0
	beq _020607E0
	ldrsh r0, [r7, #0x12]
	ldrsh r1, [r6, #0xe]
	bl DexNumbersEqual
	cmp r0, #0
	movne r5, #1
_020607E0:
	cmp r5, #0
	beq _020607FC
	ldrsh r0, [r7, #0x18]
	ldrsh r1, [r6, #0x10]
	bl DexNumbersEqual
	cmp r0, #0
	movne r4, #1
_020607FC:
	and r0, r4, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0206074C
