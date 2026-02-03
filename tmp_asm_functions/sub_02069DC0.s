	arm_func_start sub_02069DC0
sub_02069DC0: ; 0x02069DC0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20c
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r5, [r0]
	ldr r1, [r5]
	cmp r1, #0x3000
	bgt _02069E30
	bge _0206A388
	ldr r0, _0206A5E4 ; =0x00001001
	cmp r1, r0
	bgt _02069E10
	cmp r1, #0x1000
	blt _02069E04
	beq _0206A0AC
	cmp r1, r0
	beq _0206A104
	b _0206A5D4
_02069E04:
	cmp r1, #0
	beq _02069E84
	b _0206A5D4
_02069E10:
	cmp r1, #0x2000
	bgt _02069E20
	beq _0206A464
	b _0206A5D4
_02069E20:
	add r0, r0, #0x1000
	cmp r1, r0
	beq _0206A490
	b _0206A5D4
_02069E30:
	cmp r1, #0x4000
	bgt _02069E4C
	bge _0206A4A4
	ldr r0, _0206A5E8 ; =0x00003001
	cmp r1, r0
	beq _0206A3A0
	b _0206A5D4
_02069E4C:
	ldr r0, _0206A5EC ; =0x00004004
	cmp r1, r0
	bgt _02069E78
	sub r0, r0, #3
	subs r0, r1, r0
	addpl pc, pc, r0, lsl #2
	b _0206A5D4
_02069E68: ; jump table
	b _0206A4F8 ; case 0
	b _0206A4C4 ; case 1
	b _0206A584 ; case 2
	b _0206A5B0 ; case 3
_02069E78:
	cmp r1, #0x8000
	beq _0206A5C4
	b _0206A5D4
_02069E84:
	add r4, r5, #0x58
	add r5, r5, #0x90
	bl ov03_0233CAA8
	cmp r0, #1
	bne _02069F90
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0xc]
	mov r0, r4
	mov r1, #0x38
	bl MemZero
	mov r0, r5
	mov r1, #0x18
	bl MemZero
	ldr r1, _0206A5E0 ; =_020B0B48
	mov r2, #0x18
	ldr r0, [r1]
	mov r6, #0x38
	str r2, [r0, #0xa8]
	ldr r0, [r1]
	ldr r3, _0206A5F0 ; =sub_0206A628
	str r5, [r0, #0xac]
	ldr r2, [r1]
	mov r0, #0
	str r6, [r2, #0xb0]
	ldr r2, [r1]
	mov r8, #1
	str r4, [r2, #0xb4]
	ldr r2, [r1]
	mov r7, #9
	str r3, [r2, #0xb8]
	ldr r2, [r1]
	mov r3, #0x12
	strb r0, [r2, #0xbc]
	ldr r6, [r1]
	mov r2, #0x11
	strb r8, [r6, #0x10]
	ldr r6, [r1]
	ldr r6, [r6, #0x14]
	strb r7, [r6]
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	strb r0, [r1, #1]
	strb r3, [r4]
	strb r2, [r5]
	bl GetLanguageType
	strb r0, [r5, #2]
	ldrsb r1, [r5, #2]
	add r0, r5, #4
	strb r1, [r4, #2]
	bl GetMainTeamNameWithCheck
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _02069F6C
	add r0, r5, #4
	bl SetQuestionMarks
_02069F6C:
	add r0, r5, #4
	mov r1, #0x14
	bl ov01_02337B3C
	ldr r1, _0206A5E0 ; =_020B0B48
	strb r0, [r5, #3]
	ldr r0, [r1]
	mov r1, #0x1000
	str r1, [r0]
	b _0206A5D4
_02069F90:
	bl ov03_0233CAA8
	cmp r0, #0
	bne _0206A5D4
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0xc]
	mov r0, r4
	mov r1, #0x38
	bl MemZero
	mov r0, r5
	mov r1, #0x18
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	ldrsh r0, [r0, #0xc0]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov sl, r0
	add sb, r4, #0x18
	ldmia sl!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1, r2, r3}
	ldr ip, _0206A5E0 ; =_020B0B48
	stmia sb, {r0, r1, r2, r3}
	ldr r0, [ip]
	mov r8, #0x38
	str r8, [r0, #0xa8]
	ldr r0, [ip]
	mov r7, #0x18
	str r4, [r0, #0xac]
	ldr r0, [ip]
	ldr r6, _0206A5F4 ; =_02337B68
	str r7, [r0, #0xb0]
	ldr r0, [ip]
	mov lr, #0
	str r5, [r0, #0xb4]
	ldr r0, [ip]
	mov fp, #9
	str r6, [r0, #0xb8]
	ldr r0, [ip]
	strb lr, [r0, #0xbc]
	ldr r0, [ip]
	strb lr, [r0, #0x10]
	ldr r0, [ip]
	ldr r0, [r0, #0x14]
	strb fp, [r0]
	ldr r0, [ip]
	ldr r0, [r0, #0x14]
	strb lr, [r0, #1]
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #0x11
	strb r0, [r5]
	bl GetLanguageType
	strb r0, [r5, #2]
	ldrsb r1, [r5, #2]
	add r0, r4, #4
	strb r1, [r4, #2]
	bl GetMainTeamNameWithCheck
	add r0, r4, #4
	mov r1, #0x34
	bl ov01_02337B3C
	strb r0, [r4, #3]
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x1000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A0AC:
	add r0, r5, #0xa8
	mov r4, #1
	str r0, [sp, #0xac]
	str r4, [sp, #0xa8]
	ldr r1, [r5, #0xc]
	add r0, sp, #0xa8
	str r1, [sp, #0xb8]
	ldrb r3, [r5, #0x10]
	mov r2, #0x20
	mov r1, #0
	strb r3, [sp, #0xbc]
	ldr r3, [r5, #0x14]
	str r3, [sp, #0xc0]
	strh r2, [sp, #0xc4]
	strb r1, [sp, #0xc6]
	str r4, [sp, #0xc8]
	bl ov01_02337BA0
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5E4 ; =0x00001001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A104:
	bl ov01_02337E0C
	movs r4, r0
	beq _0206A5D4
	bl ov01_02337C54
	cmp r4, #0xe
	addls pc, pc, r4, lsl #2
	b _0206A5D4
_0206A120: ; jump table
	b _0206A5D4 ; case 0
	b _0206A380 ; case 1
	b _0206A5D4 ; case 2
	b _0206A5D4 ; case 3
	b _0206A15C ; case 4
	b _0206A380 ; case 5
	b _0206A380 ; case 6
	b _0206A380 ; case 7
	b _0206A380 ; case 8
	b _0206A380 ; case 9
	b _0206A380 ; case 10
	b _0206A380 ; case 11
	b _0206A380 ; case 12
	b _0206A380 ; case 13
	b _0206A380 ; case 14
_0206A15C:
	bl ov03_0233CAA8
	cmp r0, #1
	bne _0206A300
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	beq _0206A244
	mov r0, #2
	bl IsSpecialEpisodeOpen
	cmp r0, #0
	beq _0206A1B0
	ldr r1, _0206A5F8 ; =0x000037A8
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5FC ; =0x00002001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A1B0:
	add r0, sp, #0x1bc
	bl InitPreprocessorArgs
	mov r0, #2
	mov r1, #1
	bl SetSpecialEpisodeOpen
	add r0, sp, #0x7e
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0x7e
	bne _0206A1FC
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A204
_0206A1FC:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A204:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0x7e
	add r2, sp, #0x1bc
	mov r0, #0x1c
	str r3, [sp, #0x1f4]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl CreateJobSummary
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A244:
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl AddMissionToJobList
	cmp r0, #0
	bne _0206A2EC
	bl sub_0205F5A8
	bl sub_0205F710
	add r0, sp, #0x16c
	bl InitPreprocessorArgs
	add r0, sp, #0x54
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0x54
	bne _0206A2A4
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A2AC
_0206A2A4:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A2AC:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0x54
	add r2, sp, #0x16c
	mov r0, #0x1c
	str r3, [sp, #0x1a4]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl CreateJobSummary
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A2EC:
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x3000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A300:
	bl ov03_0233CAA8
	cmp r0, #0
	bne _0206A5D4
	add r0, sp, #0x11c
	bl InitPreprocessorArgs
	add r0, sp, #0x2a
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x92]
	cmp r1, r0
	add r0, sp, #0x2a
	bne _0206A34C
	add r1, r4, #0x94
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A354
_0206A34C:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A354:
	ldr r1, _0206A608 ; =0x00003793
	add r3, sp, #0x2a
	add r2, sp, #0x11c
	mov r0, #0x1c
	str r3, [sp, #0x154]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A380:
	mov r0, #1
	b _0206A5D8
_0206A388:
	bl ov03_0233CAD8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5E8 ; =0x00003001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A3A0:
	bl ov03_0233CB3C
	cmp r0, #2
	bne _0206A450
	bl ov03_0233CB10
	add r0, sp, #0xcc
	bl InitPreprocessorArgs
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl AddMissionToJobList
	bl sub_0205F5A8
	bl sub_0205F710
	add r0, sp, #0
	mov r1, #0x2a
	bl MemZero
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r4, [r0]
	bl GetLanguageType
	ldrsb r1, [r4, #0x5a]
	cmp r1, r0
	add r0, sp, #0
	bne _0206A408
	add r1, r4, #0x5c
	mov r2, #0x14
	bl StrncpySimpleNoPadSafe
	b _0206A410
_0206A408:
	ldr r1, _0206A600 ; =0x000038C9
	bl GetStringFromFileVeneer
_0206A410:
	ldr r1, _0206A604 ; =0x0000379F
	add r3, sp, #0
	add r2, sp, #0xcc
	mov r0, #0x1c
	str r3, [sp, #0x104]
	bl ov03_0233CDD8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x70
	bl CreateJobSummary
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x2000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A450:
	cmp r0, #1
	bne _0206A5D4
	bl ov03_0233CB10
	mov r0, #1
	b _0206A5D8
_0206A464:
	bl ov03_0233CDE4
	mov r4, r0
	bl sub_020698B8
	cmp r4, #0x12
	bne _0206A5D4
	bl sub_02069904
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x4000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A490:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #1
	b _0206A5D8
_0206A4A4:
	ldr r1, _0206A60C ; =0x0000023B
	mov r0, #0
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A610 ; =0x00004002
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A4C4:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl sub_02029F88
	bl sub_02003B94
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A614 ; =0x00004001
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A4F8:
	mov r0, #3
	bl NoteSaveBase
	mov r4, r0
	bl sub_02003BC8
	bl sub_02029FBC
	cmp r4, #0
	bne _0206A558
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r0, [r0]
	add r0, r0, #0x70
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	mov r0, #0x1c
	beq _0206A53C
	ldr r1, _0206A618 ; =0x0000379E
	bl ov03_0233CDC8
	b _0206A544
_0206A53C:
#ifdef JAPAN
	ldr r1, _0206A90C ; =0x000004CD
#else
	mov r1, #0x23c
#endif
	bl ov03_0233CDC8
_0206A544:
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A61C ; =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A558:
	cmp r4, #1
	moveq r0, #3
	beq _0206A5D8
	ldr r1, _0206A620 ; =0x00000239
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	ldr r1, _0206A5EC ; =0x00004004
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A584:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	ldr r1, _0206A624 ; =0x000037A0
	mov r0, #0x1c
	bl ov03_0233CDC8
	ldr r0, _0206A5E0 ; =_020B0B48
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _0206A5D4
_0206A5B0:
	bl ov03_0233CDE4
	cmp r0, #0x12
	bne _0206A5D4
	mov r0, #1
	b _0206A5D8
_0206A5C4:
	bl ov03_0233CDE4
	cmp r0, #0x12
	moveq r0, #2
	beq _0206A5D8
_0206A5D4:
	mov r0, #0
_0206A5D8:
	add sp, sp, #0x20c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
#if defined(EUROPE)
#define SUB_02069DC0_OFFSET 2
#elif defined(JAPAN)
#define SUB_02069DC0_OFFSET -0x37E
#else
#define SUB_02069DC0_OFFSET 0
#endif
_0206A5E0: .word _020B0B48
_0206A5E4: .word 0x00001001
_0206A5E8: .word 0x00003001
_0206A5EC: .word 0x00004004
_0206A5F0: .word sub_0206A628
_0206A5F4: .word ov01_02337B68
_0206A5F8: .word 0x000037A8 + SUB_02069DC0_OFFSET
_0206A5FC: .word 0x00002001
#ifdef JAPAN
_0206A600: .word 0x00003507
#else
_0206A600: .word 0x000038C9 + SUB_02069DC0_OFFSET
#endif
_0206A604: .word 0x0000379F + SUB_02069DC0_OFFSET
_0206A608: .word 0x00003793 + SUB_02069DC0_OFFSET
#ifdef JAPAN
_0206A60C: .word 0x000004CC
#else
_0206A60C: .word 0x0000023B
#endif
_0206A610: .word 0x00004002
_0206A614: .word 0x00004001
_0206A618: .word 0x0000379E + SUB_02069DC0_OFFSET
#ifdef JAPAN
_0206A90C: .word 0x000004CD
_0206A61C: .word 0x00004003
_0206A620: .word 0x000004CA
#else
_0206A61C: .word 0x00004003
_0206A620: .word 0x00000239
#endif
_0206A624: .word 0x000037A0 + SUB_02069DC0_OFFSET
	arm_func_end sub_02069DC0
