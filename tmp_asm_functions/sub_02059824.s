	arm_func_start sub_02059824
sub_02059824: ; 0x02059824
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r1
	ldr r1, [r2]
	mov r2, #1
	add r1, r1, #0x74
	add r1, r1, #0x9800
	add r1, r1, r5
	mov sl, r0
	bl CopyBitsFrom
	ldr r1, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r0, sl
	ldr r1, [r1]
	mov r2, #0x10
	add r1, r1, #0x850
	add r1, r1, #0x9000
	add r1, r1, r5, lsl #1
	bl CopyBitsFrom
	ldr r6, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r7, #0x10
_02059878:
	ldr r1, [r6]
	mov r0, sl
	add r1, r1, #0x56
	add r1, r1, #0x9800
	add r1, r1, r5, lsl #3
	mov r2, r7
	add r1, r1, r4, lsl #1
	bl CopyBitsFrom
	add r4, r4, #1
	cmp r4, #4
	blt _02059878
	mov r0, #0x1a0
	mul r8, r5, r0
	mov sb, #0
	ldr r4, _02059A70 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, sb
	mov r6, #1
	mov fp, #0x68
_020598C0:
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #0x36c
	add r0, r0, #0x9000
	add r0, r0, r8
	mla r7, sb, fp, r0
	mov r0, r7
	mov r2, #0x68
	bl memset
	mov r0, sl
	mov r1, r7
	mov r2, #4
	bl CopyBitsFrom
	mov r0, sl
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r7, #2
	mov r2, #7
	tst r0, #1
	strneb r6, [r7, #1]
	mov r0, sl
	streqb r5, [r7, #1]
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #3
	bl Copy16BitsFrom
	mov r0, sl
	add r1, r7, #6
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #8
	mov r2, #0x10
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xa
	mov r2, #0x10
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xc
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0xe
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x10
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x12
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x13
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x14
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x15
	mov r2, #8
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x18
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x1c
	bl sub_02014C20
	mov r0, sl
	add r1, r7, #0x3e
	bl sub_0200DF2C
	mov r0, sl
	add r1, r7, #0x44
	bl sub_02051098
	mov r0, sl
	add r1, r7, #0x48
	bl sub_02051098
	mov r0, sl
	add r1, r7, #0x4c
	mov r2, #0x45
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x58
	mov r2, #4
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x5a
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, sl
	add r1, r7, #0x5c
	mov r2, #5
	bl CopyBitsFrom
	add r1, r7, #0x5e
	mov r0, sl
	mov r2, #0x50
	bl CopyBitsFrom
	add sb, sb, #1
	cmp sb, #4
	blt _020598C0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02059A70: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02059824
