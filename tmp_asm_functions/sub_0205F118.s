	arm_func_start sub_0205F118
sub_0205F118: ; 0x0205F118
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r3, #0
	mov r5, r1
	strb r3, [r6]
	ldrsh r0, [r5, #0xe]
	mov r4, r2
	strh r0, [r6, #2]
	strh r3, [r6, #4]
	ldrb r0, [r5, #1]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _0205F29C
_0205F14C: ; jump table
	b _0205F204 ; case 0
	b _0205F218 ; case 1
	b _0205F218 ; case 2
	b _0205F204 ; case 3
	b _0205F1DC ; case 4
	b _0205F204 ; case 5
	b _0205F180 ; case 6
	b _0205F204 ; case 7
	b _0205F218 ; case 8
	b _0205F234 ; case 9
	b _0205F218 ; case 10
	b _0205F260 ; case 11
	b _0205F27C ; case 12
_0205F180:
	ldrb r0, [r5, #2]
	cmp r0, #4
	ldrb r0, [r5]
	bne _0205F1B8
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #1
	bhi _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F1B8:
	cmp r0, #5
	cmpne r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F1DC:
	ldrb r0, [r5]
	cmp r0, #5
	cmpne r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F204:
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F218:
	ldrsh r0, [r5, #0x10]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F234:
	ldrsh r0, [r5, #0x10]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
	b _0205F29C
_0205F260:
	ldrsh r0, [r5, #0xe]
	strh r0, [r6, #4]
	ldrb r0, [r5]
	cmp r0, #8
	moveq r0, #1
	streqb r0, [r6]
	b _0205F29C
_0205F27C:
	ldrb r0, [r5]
	cmp r0, #8
#ifdef JAPAN
	moveq r0, #1
	streqb r0, [r6]
#else
	bne _0205F29C
	ldrsh r0, [r5, #0x14]
	bl IsItemInTreasureBoxes
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6]
#endif
_0205F29C:
	cmp r4, #0xff
	ldrneb r0, [r5, #4]
	cmpne r0, r4
	movne r0, #0
	strneb r0, [r6]
	ldrb r0, [r6]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205F118
