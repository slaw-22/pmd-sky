	arm_func_start AppendMissionSummary
AppendMissionSummary: ; 0x02060EB4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r8, [sp, #0x34]
	mov r7, r0
	add r0, sp, #4
	mov r6, r1
	mov r5, r2
	mov fp, r3
	ldr r4, [sp, #0x30]
	bl sub_020022C4
	ldr r3, [r8, #8]
	mov r0, #0
	ldrb r1, [r3]
	ldr r2, [r3, #4]
	ldrb r3, [r3, #1]
	add r1, r2, r1
	ldr sb, _02060FCC ; =_020B0AD8
	add r1, r3, r1
	str r1, [sp, #4]
	ldr r1, [r8, #0x60]
	ldrh r1, [r1]
	strb r0, [r7]
	ldr r0, _02060FD0 ; =0x00000FFF
	add r8, r0, #0xf000
	b _02060FA8
_02060F18:
	ldr r0, _02060FD0 ; =0x00000FFF
	ldr r2, [sb, #4]
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	tst r1, #0x1000
	mov r1, r0, lsl #2
	add sl, r2, r0, lsl #2
	ldrh r1, [r2, r1]
	add r0, sp, #4
	bne _02060F60
	bl sub_020022D0
	ldrh r2, [sl, #2]
	ldr r1, [sb, #0x14]
	add r0, r2, r0
	mov r0, r0, lsl #1
	ldrh r1, [r1, r0]
	b _02060FA8
_02060F60:
	bl sub_020022D0
	ldrh r2, [sl, #2]
	mov r1, #0x12c
	mov r3, #0
	add sl, r2, r0
	ldr r2, _02060FD4 ; =MISSION_STRING_IDS
	mov ip, sl, lsl #1
	ldrh r2, [r2, ip]
	mov r0, r6
	str r4, [sp]
	bl PreprocessStringFromId
	mov r0, r7
	mov r1, r6
	mov r2, #0x400
	bl strncat
	ldr r1, [sb, #0x14]
	mov r0, sl, lsl #1
	ldrh r1, [r1, r0]
_02060FA8:
	cmp r1, r8
	bne _02060F18
	mov r0, fp
	mov r2, r5
	mov r3, r7
	mov r1, #4
	bl DrawTextInWindow
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02060FCC: .word _020B0AD8
_02060FD0: .word 0x00000FFF
_02060FD4: .word MISSION_STRING_IDS
	arm_func_end AppendMissionSummary
