	arm_func_start sub_02060AFC
sub_02060AFC: ; 0x02060AFC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r6, r0
	mov r5, r1
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	ldr r1, _02060DF4 ; =_020A4654
	mov r0, r6
	bl strcpy
	ldr r1, _02060DF8 ; =_020A4664
	mov r0, r6
	ldrb r7, [r5, #0x47]
	bl strcat
	ldr r1, _02060DFC ; =REMOTE_STRING_PTR_TABLE
	mov r0, r4
	ldr r1, [r1, r7, lsl #2]
	bl SprintfStatic__020609E8
	mov r0, r6
	mov r1, r4
	bl strcat
	add r0, sp, #0x30
	bl InitPreprocessorArgs
	ldrb r0, [r5, #0x44]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02060D18
_02060B6C: ; jump table
	b _02060B88 ; case 0
	b _02060C48 ; case 1
	b _02060C60 ; case 2
	b _02060C80 ; case 3
	b _02060CA0 ; case 4
	b _02060CC0 ; case 5
	b _02060CE4 ; case 6
_02060B88:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #0
	add r0, sp, #4
	bne _02060BAC
	ldr r1, _02060E00 ; =0x000038C9
	bl GetStringFromFileVeneer
	b _02060BC4
_02060BAC:
	mov r1, #0x2a
	bl MemZero
	ldr r1, [r5, #0xc]
	add r0, sp, #4
#ifdef JAPAN
	mov r2, #5
#else
	mov r2, #0xa
#endif
	bl StrncpySimpleNoPadSafe
_02060BC4:
	add r0, sp, #4
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x64]
	ldrb r0, [r0]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02060C10
_02060BE0: ; jump table
	b _02060C10 ; case 0
	b _02060C10 ; case 1
	b _02060C10 ; case 2
	b _02060C10 ; case 3
	b _02060C10 ; case 4
	b _02060C00 ; case 5
	b _02060C08 ; case 6
	b _02060C00 ; case 7
_02060C00:
	ldr r2, _02060E04 ; =0x000038CB
	b _02060C14
_02060C08:
	ldr r2, _02060E08 ; =0x000038CC
	b _02060C14
_02060C10:
	ldr r2, _02060E0C ; =0x000038CA
_02060C14:
	add ip, sp, #0x30
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str ip, [sp]
	bl PreprocessStringFromId
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	b _02060D18
_02060C48:
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl AppendMissionTitle
	b _02060D18
_02060C60:
	ldrsh ip, [r5, #0x16]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x40]
	bl AppendMissionTitle
	b _02060D18
_02060C80:
	ldrsh ip, [r5, #0x10]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x30]
	bl AppendMissionTitle
	b _02060D18
_02060CA0:
	ldrsh ip, [r5, #0x12]
	add r2, sp, #0x30
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x30]
	bl AppendMissionTitle
	b _02060D18
_02060CC0:
	ldr r0, [r5, #8]
	add r2, sp, #0x30
	ldrb ip, [r0]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str ip, [sp, #0x40]
	bl AppendMissionTitle
	b _02060D18
_02060CE4:
	ldr r1, [r5, #0x54]
	mov r0, r4
	mov r2, #0x12
#ifndef JAPAN
	mov r3, #0
#endif
	bl sub_0202568C
	mov r1, #0
	strb r1, [r0]
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
_02060D18:
	ldr r1, _02060E14 ; =_020A4674
	mov r0, r6
	bl strcat
	mov r0, r5
	mov r1, r4
	mov r2, #0x100
	bl sub_02061FDC
	ldr r1, _02060E10 ; =_020A4644
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	ldr r1, [r5, #0x5c]
	cmp r1, #0
	beq _02060D9C
	ldrb r0, [r1, #1]
	cmp r0, #0xe
	bne _02060D9C
	ldr r2, _02060E18 ; =0x00003C2A
	add r5, sp, #0x30
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	str r5, [sp]
	bl PreprocessStringFromId
	ldr r1, _02060E1C ; =_020A4678
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r4
	bl strcat
	b _02060DE4
_02060D9C:
	ldrb r0, [r5, #0x46]
	cmp r0, #0
	bne _02060DB8
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_02062D9C
	b _02060DC4
_02060DB8:
	ldrb r1, [r1, #1]
	ldr r0, [r5, #8]
	bl sub_02062D9C
_02060DC4:
	ldr r2, _02060E20 ; =RANK_STRING_PTR_TABLE
	ldr r1, _02060E1C ; =_020A4678
	ldr r5, [r2, r0, lsl #2]
	mov r0, r6
	bl strcat
	mov r0, r6
	mov r1, r5
	bl strcat
_02060DE4:
	mov r0, r4
	bl MemFree
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
#if defined(EUROPE)
#define SUB_02060AFC_OFFSET 2
#elif defined(JAPAN)
#define SUB_02060AFC_OFFSET -0x3C2
#else
#define SUB_02060AFC_OFFSET 0
#endif
_02060DF4: .word _020A4654
_02060DF8: .word _020A4664
_02060DFC: .word REMOTE_STRING_PTR_TABLE
_02060E00: .word 0x000038C9 + SUB_02060AFC_OFFSET
_02060E04: .word 0x000038CB + SUB_02060AFC_OFFSET
_02060E08: .word 0x000038CC + SUB_02060AFC_OFFSET
_02060E0C: .word 0x000038CA + SUB_02060AFC_OFFSET
_02060E10: .word _020A4644
_02060E14: .word _020A4674
_02060E18: .word 0x00003C2A + SUB_02060AFC_OFFSET
_02060E1C: .word _020A4678
_02060E20: .word RANK_STRING_PTR_TABLE
	arm_func_end sub_02060AFC
