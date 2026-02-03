	arm_func_start AppendMissionTitle
AppendMissionTitle: ; 0x02060A10
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r6, r0
	add r0, sp, #4
	mov r7, r3
	mov r5, r1
	mov r4, r2
	bl sub_020022C4
	ldr r3, [r7, #8]
	ldr r1, _02060AEC ; =_020A4644
	ldrb r0, [r3]
	ldr r2, [r3, #4]
	ldrb r3, [r3, #1]
	add r2, r2, r0
	mov r0, r6
	add r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r7, #0x60]
	ldrh sl, [r2]
	bl strcat
	ldr fp, _02060AF0 ; =0x00000FFF
	ldr sb, _02060AF4 ; =MISSION_STRING_IDS
	add r7, fp, #0xf000
	ldr r8, _02060AF8 ; =_020B0AD8
	b _02060AD4
_02060A74:
	and r0, sl, fp
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldr r2, [r8, #4]
	mov r1, r0, lsl #2
	ldrh r1, [r2, r1]
	add sl, r2, r0, lsl #2
	add r0, sp, #4
	bl sub_020022D0
	ldrh r2, [sl, #2]
	mov r1, #0x100
	mov r3, #0
	add sl, r2, r0
	mov r2, sl, lsl #1
	ldrh r2, [sb, r2]
	mov r0, r5
	str r4, [sp]
	bl PreprocessStringFromId
	mov r0, r6
	mov r1, r5
	bl strcat
	ldr r1, [r8, #0x14]
	mov r0, sl, lsl #1
	ldrh sl, [r1, r0]
_02060AD4:
	cmp sl, r7
	beq _02060AE4
	tst sl, #0x1000
	beq _02060A74
_02060AE4:
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02060AEC: .word _020A4644
_02060AF0: .word 0x00000FFF
_02060AF4: .word MISSION_STRING_IDS
_02060AF8: .word _020B0AD8
	arm_func_end AppendMissionTitle
