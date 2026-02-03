	arm_func_start sub_02058FCC
sub_02058FCC: ; 0x02058FCC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _0205905C ; =TEAM_MEMBER_TABLE_PTR
	ldrsb r2, [r5]
	ldr r0, [r3]
	add r1, r5, #2
	add r0, r0, #0x9000
	strb r2, [r0, #0x880]
	ldr r0, [r3]
	ldrb r4, [r5, #1]
	add r0, r0, #0x9000
	mov r2, #0x14
	strb r4, [r0, #0x881]
	ldr r0, [r3]
	add r0, r0, #0x82
	add r0, r0, #0x9800
	bl StrncpySimple
	add r8, r5, #0x18
	ldr r7, _0205905C ; =TEAM_MEMBER_TABLE_PTR
	mov r4, #0
	mov r5, #0x44
	mov r6, #0x4c
_02059028:
	ldr r0, [r7]
	mla r1, r4, r6, r8
	add r0, r0, #0x98
	add r0, r0, #0x9800
	mla r0, r4, r5, r0
	bl sub_02055F04
	add r4, r4, #1
	cmp r4, #4
	blt _02059028
	mov r0, #0xbe
	mov r1, #1
	bl sub_0204D018
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205905C: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058FCC
