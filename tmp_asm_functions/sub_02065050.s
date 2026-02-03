	arm_func_start sub_02065050
sub_02065050: ; 0x02065050
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrsh r0, [r5]
	mvn r4, #0
	cmp r0, #0x2e
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x18]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x2f
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x16]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x30
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x14]
	streqh r0, [r5]
	beq _020650B0
	cmp r0, #0x31
	ldreq r0, _02065494 ; =_020B0B08
	ldreqsh r0, [r0, #0x12]
	streqh r0, [r5]
_020650B0:
	ldrsh r2, [r5]
	mvn r0, #0
	cmp r2, r0
	beq _0206548C
	mov r0, #0xc
	smulbb r1, r2, r0
	ldr r0, _02065498 ; =ENTITIES
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _020651AC
	cmp r2, #0
	bne _020651A4
	mov r0, #0
	mov r1, #0x34
	bl LoadScriptVariableValue
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02065198
_020650F8: ; jump table
	b _0206511C ; case 0
	b _02065128 ; case 1
	b _02065198 ; case 2
	b _02065134 ; case 3
	b _02065180 ; case 4
	b _02065180 ; case 5
	b _02065180 ; case 6
	b _02065180 ; case 7
	b _02065180 ; case 8
_0206511C:
	mov r0, #1
	strh r0, [r5]
	b _020651A4
_02065128:
	mov r0, #2
	strh r0, [r5]
	b _020651A4
_02065134:
	bl sub_020568A4
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r0, #1
	streqh r0, [r5]
	beq _020651A4
	bl GetMainCharacter1MemberIdx
	cmp r4, r0
	moveq r0, #1
	streqh r0, [r5]
	beq _020651A4
	bl GetMainCharacter2MemberIdx
	cmp r4, r0
	moveq r0, #2
	streqh r0, [r5]
	movne r0, #4
	strneh r0, [r5]
	b _020651A4
_02065180:
	mov r0, #0
	mov r1, #0x34
	bl LoadScriptVariableValue
	add r0, r0, #1
	strh r0, [r5]
	b _020651A4
_02065198:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_020651A4:
	mov r4, #0
	b _02065488
_020651AC:
	cmp r0, #2
	bne _02065330
	mov r0, #0
	mov r1, #0x35
	bl LoadScriptVariableValue
	mov r4, r0
	mov r0, #0
	mov r1, #0x36
	bl LoadScriptVariableValue
	ldrsh r2, [r5]
	sub r1, r2, #0xa
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _020652D0
	cmp r2, #0xa
	bne _02065204
	cmp r4, #0
	moveq r4, r0
	b _02065210
_02065204:
	cmp r4, #0
	moveq r0, #0
	mov r4, r0
_02065210:
	cmp r4, #0xa
	addls pc, pc, r4, lsl #2
	b _020652C4
_0206521C: ; jump table
	b _020652C4 ; case 0
	b _02065248 ; case 1
	b _02065254 ; case 2
	b _020652C4 ; case 3
	b _02065260 ; case 4
	b _020652AC ; case 5
	b _020652AC ; case 6
	b _020652AC ; case 7
	b _020652AC ; case 8
	b _020652AC ; case 9
	b _020652B8 ; case 10
_02065248:
	mov r0, #0xc
	strh r0, [r5]
	b _020652D0
_02065254:
	mov r0, #0xd
	strh r0, [r5]
	b _020652D0
_02065260:
	bl sub_020568A4
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	moveq r0, #0xc
	streqh r0, [r5]
	beq _020652D0
	bl GetMainCharacter1MemberIdx
	cmp r4, r0
	moveq r0, #0xc
	streqh r0, [r5]
	beq _020652D0
	bl GetMainCharacter2MemberIdx
	cmp r4, r0
	moveq r0, #0xd
	streqh r0, [r5]
	movne r0, #0xf
	strneh r0, [r5]
	b _020652D0
_020652AC:
	add r0, r4, #0xb
	strh r0, [r5]
	b _020652D0
_020652B8:
	mov r0, #0x15
	strh r0, [r5]
	b _020652D0
_020652C4:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_020652D0:
	ldrsh r0, [r5]
	sub r0, r0, #0xc
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02065324
_020652E4: ; jump table
	b _0206530C ; case 0
	b _02065314 ; case 1
	b _02065324 ; case 2
	b _0206531C ; case 3
	b _02065324 ; case 4
	b _02065324 ; case 5
	b _02065324 ; case 6
	b _02065324 ; case 7
	b _02065324 ; case 8
	b _0206531C ; case 9
_0206530C:
	mov r4, #2
	b _02065488
_02065314:
	mov r4, #1
	b _02065488
_0206531C:
	mov r4, #2
	b _02065488
_02065324:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_02065330:
	cmp r0, #3
	bne _02065420
	cmp r2, #0x16
	blt _020653A8
	cmp r2, #0x19
	bgt _020653A8
	mov r0, #0xd
	sub r4, r2, #0x16
	bl OverlayIsLoaded
	cmp r0, #0
	beq _0206536C
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _0206548C
_0206536C:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _02065390
	ldrsh r0, [r5]
	cmp r0, #0x17
	bgt _02065414
	mvn r0, #0
	b _0206548C
_02065390:
	add r0, sp, #8
	bl sub_02056E04
	cmp r4, r0
	bge _02065414
	mvn r0, #0
	b _0206548C
_020653A8:
	cmp r2, #0x1a
	blt _02065414
	cmp r2, #0x1d
	bgt _02065414
	mov r0, #0xd
	sub r4, r2, #0x1a
	bl OverlayIsLoaded
	cmp r0, #0
	beq _020653DC
	bl ov11_022E96E4
	cmp r0, #0
	mvnne r0, #0
	bne _0206548C
_020653DC:
	mov r0, #5
	bl Debug_GetDebugFlag
	cmp r0, #0
	beq _02065400
	ldrsh r0, [r5]
	cmp r0, #0x1c
	bgt _02065414
	mvn r0, #0
	b _0206548C
_02065400:
	add r0, sp, #0
	bl sub_02056D70
	cmp r4, r0
	mvnlt r0, #0
	blt _0206548C
_02065414:
	mvn r0, #0
	strh r0, [r5]
	b _0206548C
_02065420:
	bl sub_020568A4
	ldrsh r1, [r5]
	mov r6, r0
	cmp r1, #0x3f
	bne _02065488
	mvn r1, #0
	cmp r6, r1
	moveq r0, #0x3c
	streqh r0, [r5]
	beq _02065488
	bl sub_02055410
	cmp r0, #0
	movne r0, #0x3c
	strneh r0, [r5]
	bne _02065488
	mov r0, r6
	bl sub_02055474
	cmp r0, #0
	movne r0, #0x3d
	strneh r0, [r5]
	bne _02065488
	mov r0, r6
	bl sub_020554D8
	cmp r0, #0
	movne r0, #0x3e
	strneh r0, [r5]
_02065488:
	mov r0, r4
_0206548C:
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02065494: .word _020B0B08
_02065498: .word ENTITIES
	arm_func_end sub_02065050
