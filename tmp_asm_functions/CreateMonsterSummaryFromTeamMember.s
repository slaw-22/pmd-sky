	arm_func_start CreateMonsterSummaryFromTeamMember
CreateMonsterSummaryFromTeamMember: ; 0x0205AE28
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r8, r1
	mov sb, r0
	ldrsh r0, [r8, #8]
	mov r7, r2
	bl GetTeamMember
	mov r4, r0
	mov r1, r4
	add r0, sb, #2
	mov r2, #0x4e
	bl sub_02056084
	ldrsh r0, [r8, #0xc]
	mov r5, #0
	strh r0, [sb]
	ldrsh r0, [r8, #0xe]
	str r0, [sb, #0x24]
	ldrsh r0, [r8, #0xe]
	str r0, [sb, #0x28]
	ldrb r0, [r8, #2]
	str r0, [sb, #0x2c]
	ldr r0, [r8, #0x18]
	str r0, [sb, #0x30]
_0205AE84:
	add r2, r8, r5
	ldrb r0, [r2, #0x12]
	add r6, sb, r5
	mov r1, r5
	strb r0, [r6, #0x34]
	ldrb r0, [r2, #0x14]
	strb r0, [r6, #0x36]
	ldrsh r0, [r8, #0xc]
	bl GetType
	strb r0, [r6, #0x16]
	ldrsh r0, [r8, #0xc]
	mov r1, r5
	bl GetAbility
	add r5, r5, #1
	strb r0, [r6, #0x18]
	cmp r5, #2
	blt _0205AE84
	strb r7, [sb, #0x38]
	mov r0, #0
	strb r0, [sb, #0x39]
	strb r0, [sb, #0x3a]
	strb r0, [sb, #0x3b]
	strb r0, [sb, #0x3c]
	strb r0, [sb, #0x45]
	ldrb r1, [r8, #0x58]
	add r0, r8, #0x4c
	add r3, sb, #0x48
	strb r1, [sb, #0x54]
	ldrh r1, [r8, #0x3e]
	strh r1, [sb, #0x1c]
	ldrh r1, [r8, #0x40]
	strh r1, [sb, #0x1e]
	ldrh r1, [r8, #0x42]
	strh r1, [sb, #0x20]
	ldrsh r1, [r8, #6]
	strh r1, [sb, #0x3e]
	ldrb r1, [r8, #3]
	strb r1, [sb, #0x1a]
	ldrb r1, [r8, #4]
	strb r1, [sb, #0x1b]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, sb
	bl sub_0205B354
	str r0, [sp]
	ldrsh r1, [sb]
	ldrsh r3, [sb, #0x3e]
	add r0, sp, #4
	add r2, r8, #0x3e
	bl sub_0205B120
	ldrb r2, [sb, #0x39]
	ldrsh r1, [sp, #6]
	ldr r0, _0205B004 ; =0x000003E7
	add r1, r2, r1
	strb r1, [sb, #0x39]
	ldrb r2, [sb, #0x3a]
	ldrsh r1, [sp, #8]
	add r1, r2, r1
	strb r1, [sb, #0x3a]
	ldrb r2, [sb, #0x3b]
	ldrsh r1, [sp, #0xa]
	add r1, r2, r1
	strb r1, [sb, #0x3b]
	ldrb r2, [sb, #0x3c]
	ldrsh r1, [sp, #0xc]
	add r1, r2, r1
	strb r1, [sb, #0x3c]
	ldrsh r1, [sp, #4]
	ldr r2, [sb, #0x24]
	add r1, r2, r1
	str r1, [sb, #0x24]
	cmp r1, r0
	strgt r0, [sb, #0x24]
	ldr r1, [sb, #0x24]
	mov r0, #6
	str r1, [sb, #0x28]
	ldrb r1, [r4, #6]
	strb r1, [sb, #0x42]
	ldrb r1, [r4, #7]
	strb r1, [sb, #0x43]
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	moveq r0, #3
	beq _0205AFDC
	mov r0, r4
	bl GetMonsterEvoStatus
_0205AFDC:
	mov r2, #0
	strb r0, [sb, #0x44]
	mov r1, r2
_0205AFE8:
	add r0, sb, r2
	add r2, r2, #1
	strb r1, [r0, #0x58]
	cmp r2, #0x1f
	blt _0205AFE8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0205B004: .word 0x000003E7
	arm_func_end CreateMonsterSummaryFromTeamMember
