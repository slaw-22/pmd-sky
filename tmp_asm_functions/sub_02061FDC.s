	arm_func_start sub_02061FDC
sub_02061FDC: ; 0x02061FDC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	ldrb r0, [r0]
	mov r5, r2
	bl DungeonSwapIdToIdx
	mov r4, r0
	add r0, sp, #4
	bl InitPreprocessorArgs
	ldr r0, [r7, #0x64]
	cmp r0, #0
	ldrneb r0, [r0]
	cmpne r0, #7
	cmpne r0, #5
	beq _0206205C
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #0
	bne _0206205C
	ldr r0, [r7, #8]
	ldr r2, _020621FC ; =0x00003C35
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_0206205C:
	ldrb r0, [r7, #0x46]
	cmp r0, #0xf
	bne _020620AC
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [r7, #8]
	ldr r2, _02062200 ; =0x00003C34
	ldrneb r0, [r0, #1]
	add r4, sp, #4
	mov r1, r5
	ldreqb r0, [r0, #1]
	mov r3, #0
	rsbeq r0, r0, #0
	str r0, [sp, #0x28]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_020620AC:
	ldr r1, [r7, #0x5c]
	cmp r1, #0
	beq _020620F8
	ldrb r0, [r1, #1]
	cmp r0, #0xb
	ldreqb r0, [r1, #2]
	cmpeq r0, #5
	bne _020620F8
	ldr r0, [r7, #8]
	ldr r2, _02062204 ; =0x00003C36
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_020620F8:
	cmp r1, #0
	beq _02062150
	ldrb r0, [r1, #1]
	cmp r0, #6
	ldreqb r0, [r1, #2]
	cmpeq r0, #4
	beq _02062150
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #0
	bne _02062150
	ldr r0, [r7, #8]
	ldr r2, _020621FC ; =0x00003C35
	ldrb r1, [r0]
	add r4, sp, #4
	mov r0, r6
	str r1, [sp, #0x14]
	mov r1, r5
	mov r3, #0
	str r4, [sp]
	bl PreprocessStringFromId
	b _020621F4
_02062150:
	ldrb r0, [r7, #0x46]
	mov r1, #0x20000
	cmp r0, #0xc
	beq _020621A0
	ldr r2, [r7, #0x5c]
	cmp r2, #0
	beq _020621A4
	ldrb r3, [r2, #1]
	cmp r3, #0xe
	beq _020621A0
	cmp r3, #6
	ldreqb r0, [r2, #2]
	cmpeq r0, #4
	beq _020621A0
	cmp r3, #3
	ldreqb r0, [r2, #2]
	cmpeq r0, #3
	beq _020621A0
	cmp r3, #5
	bne _020621A4
_020621A0:
	mov r1, #0
_020621A4:
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	orr r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r7, #8]
	ldrb r0, [r0]
	bl DungeonGoesUp
	cmp r0, #0
	ldr r0, [r7, #8]
	ldr r2, _02062208 ; =0x00003C32
	ldrneb r0, [r0, #1]
	add r4, sp, #4
	mov r1, r5
	ldreqb r0, [r0, #1]
	mov r3, #0
	rsbeq r0, r0, #0
	str r0, [sp, #0x28]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
_020621F4:
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
#if defined(EUROPE)
#define SUB_02061FDC_OFFSET 2
#elif defined(JAPAN)
#define SUB_02061FDC_OFFSET -0x3C2
#else
#define SUB_02061FDC_OFFSET 0
#endif
_020621FC: .word 0x00003C35 + SUB_02061FDC_OFFSET
_02062200: .word 0x00003C34 + SUB_02061FDC_OFFSET
_02062204: .word 0x00003C36 + SUB_02061FDC_OFFSET
_02062208: .word 0x00003C32 + SUB_02061FDC_OFFSET
	arm_func_end sub_02061FDC
