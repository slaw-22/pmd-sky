	arm_func_start sub_02062290
sub_02062290: ; 0x02062290
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	mov r0, #0x4e
	mov r1, #0xf
	mov r6, #0
	bl MemAlloc
	mov r7, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _02062524
_020622B8: ; jump table
	b _020622C8 ; case 0
	b _02062360 ; case 1
	b _020623F8 ; case 2
	b _02062490 ; case 3
_020622C8:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_020622E8:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _0206233C
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _0206233C
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _02062324
	mov r0, fp
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	beq _0206233C
_02062324:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #4
	ldrh r1, [r1, r0]
	mov r0, sl, lsl #1
	strh r1, [r7, r0]
	b _02062344
_0206233C:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_02062344:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _020622E8
	b _02062524
_02062360:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_02062380:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _020623D4
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _020623D4
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _020623BC
	mov r0, fp
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	beq _020623D4
_020623BC:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #2]
	strh r1, [r7, r0]
	b _020623DC
_020623D4:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_020623DC:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _02062380
	b _02062524
_020623F8:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_02062418:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _0206246C
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _0206246C
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _02062454
	mov r0, fp
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	beq _0206246C
_02062454:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #4]
	strh r1, [r7, r0]
	b _02062474
_0206246C:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_02062474:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _02062418
	b _02062524
_02062490:
	bl GetRank
	mov r8, r0
	bl GetScenarioBalance
	ldr r4, _02062544 ; =_020B0AD8
	mov sb, r0
	mov sl, r6
	mov fp, #0x16
	mov r5, r6
_020624B0:
	ldr r0, [r4, #0xc]
	add r1, r0, sl, lsl #4
	ldrb r0, [r1, #8]
	cmp r8, r0
	blo _02062504
	ldrb r0, [r1, #9]
	cmp sb, r0
	blt _02062504
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _020624EC
	mov r0, fp
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	beq _02062504
_020624EC:
	ldr r1, [r4, #0xc]
	mov r0, sl, lsl #1
	add r1, r1, sl, lsl #4
	ldrh r1, [r1, #6]
	strh r1, [r7, r0]
	b _0206250C
_02062504:
	mov r0, sl, lsl #1
	strh r5, [r7, r0]
_0206250C:
	mov r0, sl, lsl #1
	ldrh r0, [r7, r0]
	add sl, sl, #1
	cmp sl, #0x27
	add r6, r6, r0
	blt _020624B0
_02062524:
	ldr r0, _02062544 ; =_020B0AD8
	cmp r6, #0
	str r6, [r0, #0x20]
	str r7, [r0, #0x1c]
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02062544: .word _020B0AD8
	arm_func_end sub_02062290
