	arm_func_start sub_020686F4
sub_020686F4: ; 0x020686F4
#if defined(EUROPE)
#define SUB_020686F4_WORD_OFFSET 2
#elif defined(JAPAN)
#define SUB_020686F4_WORD_OFFSET -0x3C2
#else
#define SUB_020686F4_WORD_OFFSET 0
#endif
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r0, _02068E14 ; =_020B0B2C
	mov r4, #0
	ldr r7, [r0, #0x14]
	ldr r5, [r7, #4]
	cmp r5, #0x15
	addls pc, pc, r5, lsl #2
	b _02068E08
_02068718: ; jump table
	b _02068770 ; case 0
	b _02068770 ; case 1
	b _02068770 ; case 2
	b _02068770 ; case 3
	b _02068770 ; case 4
	b _02068770 ; case 5
	b _02068770 ; case 6
	b _02068770 ; case 7
	b _02068770 ; case 8
	b _02068770 ; case 9
	b _020688D0 ; case 10
	b _02068960 ; case 11
	b _020689F0 ; case 12
	b _02068A6C ; case 13
	b _02068AE8 ; case 14
	b _02068AE8 ; case 15
	b _02068AE8 ; case 16
	b _02068AE8 ; case 17
	b _02068770 ; case 18
	b _02068C48 ; case 19
	b _02068CA4 ; case 20
	b _02068D00 ; case 21
_02068770:
	add r1, r7, #0x188
	mov r0, r5
	add r4, r1, #0xc00
	bl sub_02067584
	cmp r0, #0
	movne r4, #0
	bne _02068E08
	ldr r0, _02068E14 ; =_020B0B2C
	add r1, r7, #0xc
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bl sub_02068390
	str r0, [r7, #0x6c]
	mov r0, #0
	bl sub_0205B77C
	bl sub_02068E7C
	mov r1, #0
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	cmp r5, #9
	bgt _02068800
	cmp r5, #0
	addge pc, pc, r5, lsl #2
	b _020688C0
_020687D8: ; jump table
	b _020688C0 ; case 0
	b _020688C0 ; case 1
	b _02068838 ; case 2
	b _0206880C ; case 3
	b _0206880C ; case 4
	b _0206882C ; case 5
	b _020688C0 ; case 6
	b _020688C0 ; case 7
	b _020688C0 ; case 8
	b _02068838 ; case 9
_02068800:
	cmp r5, #0x12
	beq _02068858
	b _020688C0
_0206880C:
	ldr r0, _02068E14 ; =_020B0B2C
	ldr r1, _02068E1C ; =_020B0B2E
	ldrsb r2, [r0, #2]
	ldr r0, _02068E20 ; =0x00003815
	str r2, [r7, #8]
	str r1, [r7, #0xef0]
	strh r0, [r4, #8]
	b _020688C8
_0206882C:
	ldr r0, _02068E24 ; =0x00003817
	strh r0, [r4, #8]
	b _020688C8
_02068838:
	ldr r1, _02068E28 ; =0x00003816
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r4, #8]
	ldrsb r1, [r0, #5]
	ldr r0, _02068E2C ; =_020B0B31
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
	b _020688C8
_02068858:
	ldr r1, _02068E30 ; =0x00003818
	ldr r0, _02068E34 ; =sub_02069598
	strh r1, [r4, #8]
	str r0, [r7, #0xe40]
	mov r1, #1
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r7, #0x7c]
	ldrsb r1, [r0, #1]
	ldr r0, _02068E38 ; =_020B0B2D
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
	b _020688A4
_02068888:
	bl sub_020693EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _020688B0
	ldr r0, [r7, #8]
	sub r0, r0, #1
	str r0, [r7, #8]
_020688A4:
	ldr r0, [r7, #8]
	cmp r0, #0
	bgt _02068888
_020688B0:
	ldr r1, [r7, #8]
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r0, #1]
	b _020688C8
_020688C0:
	ldr r0, _02068E3C ; =0x00003F1E
	strh r0, [r4, #8]
_020688C8:
	mov r4, #1
	b _02068E08
_020688D0:
	add r0, r7, #0x188
	mov r6, r4
	add r5, r0, #0xc00
_020688DC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E984
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r6, [r0, #0xc]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020688DC
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205E970
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E44 ; =0x00003819
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0x12]
	ldr r0, _02068E48 ; =_020B0B3E
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068960:
	add r0, r7, #0x188
	mov r6, r4
	add r5, r0, #0xc00
_0206896C:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EB00
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r6, [r0, #0xc]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _0206896C
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EAE8
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E4C ; =0x0000381A
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0x11]
	ldr r0, _02068E50 ; =_020B0B3D
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_020689F0:
	add r1, r7, #0x188
	mov r0, r4
	add r5, r1, #0xc00
	bl sub_0205EBF0
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r7, #0xc]
	addeq r4, r4, #1
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EBD8
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E54 ; =0x0000381B
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0xa]
	ldr r0, _02068E58 ; =_020B0B36
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068A6C:
	add r1, r7, #0x188
	mov r0, r4
	add r5, r1, #0xc00
	bl sub_0205EC50
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r7, #0xc]
	addeq r4, r4, #1
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl sub_0205EC38
	ldr r1, _02068E40 ; =sub_02069074
	mov r2, #0
	bl sub_020690D8
	ldr r1, _02068E5C ; =0x0000381C
	ldr r0, _02068E14 ; =_020B0B2C
	strh r1, [r5, #8]
	ldrsb r2, [r0, #0xf]
	ldr r0, _02068E60 ; =_020B0B3B
	mov r1, #0
	str r2, [r7, #8]
	str r0, [r7, #0xef0]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068AE8:
	add r0, r7, #0x188
	cmp r5, #0x11
	add r8, r0, #0xc00
	bne _02068B74
	bl sub_0204E210
	cmp r0, #1
	bne _02068B74
	mov r6, r4
_02068B08:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r1, r6, lsl #0x18
	mov r5, r0
	mov r0, r1, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	bne _02068B64
	bl GetAdventureLogDungeonFloor
	ldrb r1, [r5, #4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _02068B58
	ldrb r0, [r5]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	beq _02068B64
_02068B58:
	add r0, r7, r4, lsl #1
	strh r6, [r0, #0xc]
	add r4, r4, #1
_02068B64:
	add r6, r6, #1
	cmp r6, #8
	blt _02068B08
	b _02068BA0
_02068B74:
	mov r5, #0
_02068B78:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	addeq r0, r7, r4, lsl #1
	streqh r5, [r0, #0xc]
	add r5, r5, #1
	addeq r4, r4, #1
	cmp r5, #8
	blt _02068B78
_02068BA0:
	str r4, [r7, #0x6c]
	cmp r4, #0
	moveq r4, #0
	beq _02068E08
	mov r0, #0
	bl GetAcceptedMission
	mov r1, #0
	mov r2, #1
	bl sub_020690D8
	ldr r0, _02068E14 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r1, [r1, #4]
	cmp r1, #0xe
	bne _02068BF4
	ldr r2, _02068E64 ; =0x0000381D
	ldr r1, _02068E68 ; =_020B0B2C
	strh r2, [r8, #8]
	ldrsb r0, [r0]
	str r0, [r7, #8]
	str r1, [r7, #0xef0]
	b _02068C18
_02068BF4:
#ifdef EUROPE
	sub r0, r1, #0xf
	cmp r0, #2
	bhi _02068C18
	cmp r1, #0x11
	ldreq r1, _02068E64 ; =0x0000381F
	ldr r0, _02068E14 ; =_020B0B2C
	ldrne r1, _02068E6C ; =0x00003820
	strh r1, [r8, #8]
	ldrsb r1, [r0, #0x13]
	ldr r0, _02068E70 ; =_020B0B3F
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
#else
	sub r1, r1, #0xf
	cmp r1, #2
	bhi _02068C18
	ldr r2, _02068E6C ; =0x0000381E
	ldr r1, _02068E70 ; =_020B0B3F
	strh r2, [r8, #8]
	ldrsb r0, [r0, #0x13]
	str r0, [r7, #8]
	str r1, [r7, #0xef0]
#endif
_02068C18:
	ldr r1, [r7, #0x6c]
	ldr r0, [r7, #8]
	mov r4, #1
	cmp r0, r1
	subge r0, r1, #1
	strge r0, [r7, #8]
	mov r1, #0
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	b _02068E08
_02068C48:
	add r0, r7, #0x188
	add r5, r0, #0xc00
	ldr r0, [r7, #0x74]
	mov r2, r4
	b _02068C70
_02068C5C:
	add r1, r7, r4, lsl #1
	strh r4, [r1, #0xc]
	add r1, r7, r4
	strb r2, [r1, #0x4c]
	add r4, r4, #1
_02068C70:
	ldr r1, [r7, #0x6c]
	cmp r4, r1
	blt _02068C5C
	bl sub_02068E7C
	ldr r0, _02068E28 ; =0x00003816
	ldr r1, _02068E34 ; =sub_02069598
	strh r0, [r5, #8]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	mov r4, #1
	strb r4, [r7, #0x7c]
	b _02068E08
_02068CA4:
	add r0, r7, #0x188
	add r5, r0, #0xc00
	b _02068CBC
_02068CB0:
	add r0, r7, r4, lsl #1
	strh r4, [r0, #0xc]
	add r4, r4, #1
_02068CBC:
	ldr r0, [r7, #0x6c]
	cmp r4, r0
	blt _02068CB0
	bl sub_0206901C
	ldr r0, [r7, #0x74]
	ldr r1, _02068E74 ; =sub_020690A4
	mov r2, #0
	bl sub_020690D8
	ldr r0, _02068E6C ; =0x0000381E
	mov r1, #0
	strh r0, [r5, #8]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	strb r1, [r7, #0x7c]
	mov r4, #1
	b _02068E08
_02068D00:
	add r0, r7, #0x188
	add r6, r0, #0xc00
	b _02068D18
_02068D0C:
	add r0, r7, r4, lsl #1
	strh r4, [r0, #0xc]
	add r4, r4, #1
_02068D18:
	ldr r0, [r7, #0x6c]
	cmp r4, r0
	blt _02068D0C
	mov r8, #0
	str r8, [r7, #0x80]
	add r5, sp, #0
	add r4, sp, #0x47
	add fp, sp, #0x48
	mov sb, #0x68
	b _02068DB0
_02068D40:
	add r0, r7, r8, lsl #1
	ldrsh r0, [r0, #0xc]
	ldr r2, [r7, #0x74]
	mov r1, r5
	add sl, r2, r0, lsl #5
	mov r0, sl
	bl GenerateMissionDetailsStruct
	mov r0, sl
	mov r1, r4
	mov r2, fp
	mov r3, #0
	bl sub_02069958
	str sl, [sp, #0x5c]
	ldr r1, [r7, #0x80]
	add sl, sp, #0
	mla r0, r1, sb, r7
	add lr, r0, #0x84
	mov ip, #6
_02068D88:
	ldmia sl!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02068D88
	ldmia sl, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, [r7, #0x80]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [r7, #0x80]
_02068DB0:
	ldr r0, [r7, #0x6c]
	cmp r8, r0
	blt _02068D40
	bl sub_0206901C
	mov r1, #0
	ldr r0, _02068E6C ; =0x0000381E
	str r1, [r6]
	strh r0, [r6, #8]
	mov r0, #0x10
	str r0, [r6, #0xc]
	mov r0, #0x1a
	str r0, [r6, #4]
	ldr r0, _02068E18 ; =sub_02069660
	str r1, [r7, #0xe40]
	str r0, [r7, #0xe44]
	ldr r0, _02068E14 ; =_020B0B2C
	strb r1, [r7, #0x7c]
	ldrsb r1, [r0, #3]
	ldr r0, _02068E78 ; =_020B0B2F
	mov r4, #1
	str r1, [r7, #8]
	str r0, [r7, #0xef0]
_02068E08:
	mov r0, r4
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02068E14: .word _020B0B2C
_02068E18: .word sub_02069660
_02068E1C: .word _020B0B2E
_02068E20: .word 0x00003815 + SUB_020686F4_WORD_OFFSET
_02068E24: .word 0x00003817 + SUB_020686F4_WORD_OFFSET
_02068E28: .word 0x00003816 + SUB_020686F4_WORD_OFFSET
_02068E2C: .word _020B0B31
_02068E30: .word 0x00003818 + SUB_020686F4_WORD_OFFSET
_02068E34: .word sub_02069598
_02068E38: .word _020B0B2D
#ifdef JAPAN
_02068E3C: .word 0x000038A2
#else
_02068E3C: .word 0x00003F1E + SUB_020686F4_WORD_OFFSET
#endif
_02068E40: .word sub_02069074
_02068E44: .word 0x00003819 + SUB_020686F4_WORD_OFFSET
_02068E48: .word _020B0B3E
_02068E4C: .word 0x0000381A + SUB_020686F4_WORD_OFFSET
_02068E50: .word _020B0B3D
_02068E54: .word 0x0000381B + SUB_020686F4_WORD_OFFSET
_02068E58: .word _020B0B36
_02068E5C: .word 0x0000381C + SUB_020686F4_WORD_OFFSET
_02068E60: .word _020B0B3B
_02068E64: .word 0x0000381D + SUB_020686F4_WORD_OFFSET
_02068E68: .word _020B0B2C
_02068E6C: .word 0x0000381E + SUB_020686F4_WORD_OFFSET
_02068E70: .word _020B0B3F
_02068E74: .word sub_020690A4
_02068E78: .word _020B0B2F
	arm_func_end sub_020686F4
