	arm_func_start sub_0205956C
sub_0205956C: ; 0x0205956C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r1
	ldr r1, [r2]
	mov r2, #1
	add r1, r1, #0x74
	add r1, r1, #0x9800
	add r1, r1, r5
	mov sl, r0
	bl CopyBitsTo
	ldr r1, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, sl
	ldr r1, [r1]
	mov r2, #0x10
	add r1, r1, #0x850
	add r1, r1, #0x9000
	add r1, r1, r5, lsl #1
	bl CopyBitsTo
	ldr r6, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r7, #0x10
_020595C0:
	ldr r1, [r6]
	mov r0, sl
	add r1, r1, #0x56
	add r1, r1, #0x9800
	add r1, r1, r5, lsl #3
	mov r2, r7
	add r1, r1, r4, lsl #1
	bl CopyBitsTo
	add r4, r4, #1
	cmp r4, #4
	blt _020595C0
	mov r0, #0x1a0
	mul r8, r5, r0
	ldr fp, _020597A8 ; =_020A3498
	ldr r5, _020597A4 ; =TEAM_MEMBER_TABLE_PTR
	mov sb, #0
	mov r6, #4
	mov r4, #0x68
_02059608:
	ldr r1, [r5]
	mov r0, sl
	add r1, r1, #0x36c
	add r1, r1, #0x9000
	add r1, r1, r8
	mla r7, sb, r4, r1
	mov r1, r7
	mov r2, r6
	bl CopyBitsTo
	ldrb r0, [r7, #1]
	mov r2, #1
	cmp r0, #0
	movne r1, fp
	ldreq r1, _020597AC ; =_020A3499
	mov r0, sl
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #2
	mov r2, #7
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #3
	bl sub_020515C4
	mov r0, sl
	add r1, r7, #6
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #8
	mov r2, #0x10
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xa
	mov r2, #0x10
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xc
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0xe
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x10
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x12
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x13
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x14
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x15
	mov r2, #8
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x18
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x1c
	bl sub_02014B74
	mov r0, sl
	add r1, r7, #0x3e
	bl sub_0200DF74
	mov r0, sl
	add r1, r7, #0x44
	bl sub_020510C0
	mov r0, sl
	add r1, r7, #0x48
	bl sub_020510C0
	mov r0, sl
	add r1, r7, #0x4c
	mov r2, #0x45
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x58
	mov r2, #4
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x5a
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, sl
	add r1, r7, #0x5c
	mov r2, #5
	bl CopyBitsTo
	add r1, r7, #0x5e
	mov r0, sl
	mov r2, #0x50
	bl CopyBitsTo
	add sb, sb, #1
	cmp sb, #4
	blt _02059608
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020597A4: .word TEAM_MEMBER_TABLE_PTR
_020597A8: .word _020A3498
_020597AC: .word _020A3499
	arm_func_end sub_0205956C
