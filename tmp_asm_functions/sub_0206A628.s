	arm_func_start sub_0206A628
sub_0206A628: ; 0x0206A628
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl ov03_0233CAA8
	cmp r0, #1
	bne _0206A70C
	add r0, r4, #4
	mov r1, #0x34
	bl ov01_02337B3C
	ldrb r1, [r4, #3]
	cmp r0, r1
	movne r0, #3
	ldmneia sp!, {r4, pc}
	ldrb r0, [r4]
	cmp r0, #0x12
	movne r0, #2
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl sub_0205D1F4
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
	ldrsh r0, [r4, #0x2c]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0x2e]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0206A6E4
_0206A6B8: ; jump table
	b _0206A6E4 ; case 0
	b _0206A6CC ; case 1
	b _0206A6CC ; case 2
	b _0206A6CC ; case 3
	b _0206A6CC ; case 4
_0206A6CC:
	ldrsh r0, [r4, #0x30]
	mov r1, #1
	bl CanSendItem
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r4, pc}
_0206A6E4:
	add r0, r4, #0x18
	bl AlreadyHaveMission
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x18
	bl sub_0205FA38
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
_0206A70C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206A628
