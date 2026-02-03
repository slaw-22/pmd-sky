	arm_func_start WriteMonsterInfoToSave
WriteMonsterInfoToSave: ; 0x02059118
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050990
	ldr r6, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	ldr r5, _02059220 ; =0x0000022B
	mov r8, #0
	add r7, sp, #0
	mov r4, #0x44
_02059148:
	ldr r1, [r6]
	mov r0, r7
	mla r1, r8, r4, r1
	bl WriteMonsterToSave
	add r8, r8, #1
	cmp r8, r5
	blt _02059148
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x40
	add r1, r1, #0x78
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x1880
	add r1, r1, #0x8000
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, #0x81
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r1, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0x50
	add r1, r1, #0x82
	add r1, r1, #0x9800
	bl CopyBitsTo
	ldr r5, _0205921C ; =TEAM_MEMBER_TABLE_PTR
	mov r7, #0
	add r6, sp, #0
	mov r4, #0x44
_020591E4:
	ldr r1, [r5]
	mov r0, r6
	add r1, r1, #0x98
	add r1, r1, #0x9800
	mla r1, r7, r4, r1
	bl WriteMonsterToSave
	add r7, r7, #1
	cmp r7, #4
	blt _020591E4
	add r0, sp, #0
	bl sub_020509BC
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205921C: .word TEAM_MEMBER_TABLE_PTR
_02059220: .word 0x0000022B
	arm_func_end WriteMonsterInfoToSave
