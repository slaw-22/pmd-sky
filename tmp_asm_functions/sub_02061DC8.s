	arm_func_start sub_02061DC8
sub_02061DC8: ; 0x02061DC8
#if defined(EUROPE)
#define SUB_02061DC8_WORD_OFFSET 2
#elif defined(JAPAN)
#define SUB_02061DC8_WORD_OFFSET -0x3C2
#else
#define SUB_02061DC8_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r5, r0
	add r0, sp, #4
	mov r7, r2
	mov r4, r1
	mov r6, r3
	bl InitPreprocessorArgs
	cmp r7, #0xf
	addls pc, pc, r7, lsl #2
	b _02061EE4
_02061DF4: ; jump table
	b _02061E34 ; case 0
	b _02061E4C ; case 1
	b _02061E3C ; case 2
	b _02061E5C ; case 3
	b _02061EAC ; case 4
	b _02061E8C ; case 5
	b _02061E68 ; case 6
	b _02061E74 ; case 7
	b _02061E80 ; case 8
	b _02061EE4 ; case 9
	b _02061E98 ; case 10
	b _02061EA4 ; case 11
	b _02061EB8 ; case 12
	b _02061EC4 ; case 13
	b _02061ED0 ; case 14
	b _02061EDC ; case 15
_02061E34:
	ldr r2, _02061F08 ; =0x00003C38
	b _02061EE8
_02061E3C:
	ldrsh r0, [sp, #0x68]
	ldr r2, _02061F0C ; =0x00003C3A
	str r0, [sp, #0x14]
	b _02061EE8
_02061E4C:
	ldrsh r0, [sp, #0x68]
	ldr r2, _02061F10 ; =0x00003C39
	str r0, [sp, #0x14]
	b _02061EE8
_02061E5C:
	str r6, [sp, #4]
	ldr r2, _02061F14 ; =0x00003C3B
	b _02061EE8
_02061E68:
	str r6, [sp, #4]
#ifdef EUROPE
	mov r2, #0x3c40
#else
	ldr r2, _02061F18 ; =0x00003C3E
#endif
	b _02061EE8
_02061E74:
	str r6, [sp, #4]
	ldr r2, _02061F1C ; =0x00003C3F
	b _02061EE8
_02061E80:
	str r6, [sp, #4]
#ifdef NORTH_AMERICA
	mov r2, #0x3c40
#else
	ldr r2, _02062298 ; =0x00003C42
#endif
	b _02061EE8
_02061E8C:
	str r6, [sp, #4]
	ldr r2, _02061F20 ; =0x00003C3D
	b _02061EE8
_02061E98:
	str r6, [sp, #4]
#ifdef JAPAN
	mov r2, #0x3880
#else
	ldr r2, _02061F24 ; =0x00003C42
#endif
	b _02061EE8
_02061EA4:
	ldr r2, _02061F28 ; =0x00003C43
	b _02061EE8
_02061EAC:
	str r6, [sp, #4]
	ldr r2, _02061F2C ; =0x00003C3C
	b _02061EE8
_02061EB8:
	str r6, [sp, #4]
	ldr r2, _02061F30 ; =0x00003C41
	b _02061EE8
_02061EC4:
	str r6, [sp, #4]
	ldr r2, _02061F34 ; =0x00003C44
	b _02061EE8
_02061ED0:
	str r6, [sp, #4]
	ldr r2, _02061F38 ; =0x00003C45
	b _02061EE8
_02061EDC:
	ldr r2, _02061F3C ; =0x00003C47
	b _02061EE8
_02061EE4:
	ldr r2, _02061F40 ; =0x00003C46
_02061EE8:
	add ip, sp, #4
	mov r0, r5
	mov r1, r4
	mov r3, #0
	str ip, [sp]
	bl PreprocessStringFromId
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02061F08: .word 0x00003C38 + SUB_02061DC8_WORD_OFFSET
_02061F0C: .word 0x00003C3A + SUB_02061DC8_WORD_OFFSET
_02061F10: .word 0x00003C39 + SUB_02061DC8_WORD_OFFSET
_02061F14: .word 0x00003C3B + SUB_02061DC8_WORD_OFFSET
#ifndef EUROPE
_02061F18: .word 0x00003C3E + SUB_02061DC8_WORD_OFFSET
#endif
_02061F1C: .word 0x00003C3F + SUB_02061DC8_WORD_OFFSET
#if defined(EUROPE)
_02062298: .word 0x00003C42
#elif defined(JAPAN)
_02062298: .word 0x0000387E
#endif
_02061F20: .word 0x00003C3D + SUB_02061DC8_WORD_OFFSET
#ifndef JAPAN
_02061F24: .word 0x00003C42 + SUB_02061DC8_WORD_OFFSET
#endif
_02061F28: .word 0x00003C43 + SUB_02061DC8_WORD_OFFSET
_02061F2C: .word 0x00003C3C + SUB_02061DC8_WORD_OFFSET
_02061F30: .word 0x00003C41 + SUB_02061DC8_WORD_OFFSET
_02061F34: .word 0x00003C44 + SUB_02061DC8_WORD_OFFSET
_02061F38: .word 0x00003C45 + SUB_02061DC8_WORD_OFFSET
_02061F3C: .word 0x00003C47 + SUB_02061DC8_WORD_OFFSET
_02061F40: .word 0x00003C46 + SUB_02061DC8_WORD_OFFSET
	arm_func_end sub_02061DC8
