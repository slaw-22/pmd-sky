	arm_func_start sub_02062E5C
sub_02062E5C: ; 0x02062E5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrb r1, [r5, #1]
	add r0, r5, #4
	bl sub_02062D9C
	mov ip, #0
	str ip, [r4, #8]
	mov r3, ip
	mov r1, #6
_02062E84:
	mla r2, ip, r1, r4
	add ip, ip, #1
	strh r3, [r2, #0x14]
	cmp ip, #3
	blt _02062E84
	add r1, r0, #1
	mov r0, #0x32
	mul r0, r1, r0
	str r0, [r4, #8]
	ldrb r0, [r5, #0x16]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0206305C
_02062EB8: ; jump table
	b _02062ED4 ; case 0
	b _02062EE4 ; case 1
	b _02062F04 ; case 2
	b _02062F38 ; case 3
	b _02062FD8 ; case 4
	b _0206300C ; case 5
	b _02063038 ; case 6
_02062ED4:
	strb r3, [r4, #2]
	mov r0, #1
	str r0, [r4, #0xc]
	b _02063074
_02062EE4:
	mov r2, #1
	strb r2, [r4, #2]
	ldrsh r1, [r5, #0x18]
	mov r0, #0xa
	strh r1, [r4, #0x14]
	strh r0, [r4, #0x12]
	str r2, [r4, #0xc]
	b _02063074
_02062F04:
	mov r0, #2
	strb r0, [r4, #2]
	ldrsh r2, [r5, #0x18]
	mov r0, #1
	mov r1, #0xa
	strh r2, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02062F38:
	mov r0, #3
	strb r0, [r4, #2]
	ldrsh r1, [r5, #0x18]
	mov r0, #0xa
	strh r1, [r4, #0x14]
	strh r0, [r4, #0x12]
_02062F50:
	ldrb r1, [r5, #1]
	add r0, r5, #4
	add r2, r4, #0x1a
	bl sub_020630A4
	ldrsh r1, [r4, #0x14]
	ldrsh r0, [r4, #0x1a]
	cmp r1, r0
	beq _02062F50
	mov r0, #0xa
	strh r0, [r4, #0x18]
	mov r0, #2
	str r0, [r4, #0xc]
	bl RandInt
	cmp r0, #0
	beq _02062FC4
_02062F8C:
	ldrb r1, [r5, #1]
	add r0, r5, #4
	add r2, r4, #0x20
	bl sub_020630A4
	ldrsh r1, [r4, #0x20]
	ldrsh r0, [r4, #0x14]
	cmp r0, r1
	ldrnesh r0, [r4, #0x1a]
	cmpne r0, r1
	beq _02062F8C
	mov r0, #0xa
	strh r0, [r4, #0x1e]
	mov r0, #3
	str r0, [r4, #0xc]
_02062FC4:
	ldr r1, [r4, #8]
	mvn r0, #0
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02062FD8:
	mov r0, #4
	strb r0, [r4, #2]
	ldrsh r2, [r5, #0x18]
	mov r0, #1
	mov r1, #0xa
	strh r2, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_0206300C:
	mov r1, #5
	mov r0, #1
	strb r1, [r4, #2]
	strb r0, [r4, #0x22]
	ldrsh r1, [r5, #0x18]
	sub r0, r0, #2
	strh r1, [r4, #0x24]
	ldr r1, [r4, #8]
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_02063038:
	mov r0, #6
	strb r0, [r4, #2]
	ldrsh r1, [r5, #0x18]
	sub r0, r0, #7
	strh r1, [r4, #0x24]
	ldr r1, [r4, #8]
	mul r0, r1, r0
	str r0, [r4, #8]
	b _02063074
_0206305C:
	mov r0, #7
	strb r0, [r4, #2]
	ldr r1, [r4, #8]
	sub r0, r0, #8
	mul r0, r1, r0
	str r0, [r4, #8]
_02063074:
	ldrsh r1, [r5, #0xe]
	add r0, r5, #4
	strh r1, [r4]
	ldrb r1, [r5, #1]
	bl sub_02062D5C
	ldr r1, _02063098 ; =MISSION_RANK_POINTS
	ldr r0, [r1, r0, lsl #2]
	str r0, [r4, #0x28]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063098: .word MISSION_RANK_POINTS
	arm_func_end sub_02062E5C
