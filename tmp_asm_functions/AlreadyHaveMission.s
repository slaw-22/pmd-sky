	arm_func_start AlreadyHaveMission
AlreadyHaveMission: ; 0x0205EC98
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0205ECF0 ; =MISSION_DELIVER_LIST_PTR
	b _0205ECE0
_0205ECAC:
	ldr r0, [r4, #0x18]
	mov r1, r5, lsl #5
	add r2, r0, #0x100
	ldrb r0, [r2, r5, lsl #5]
	cmp r0, #0
	beq _0205ECDC
	mov r0, r6
	add r1, r2, r1
	bl AreMissionsEquivalent
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_0205ECDC:
	add r5, r5, #1
_0205ECE0:
	cmp r5, #8
	blt _0205ECAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205ECF0: .word MISSION_DELIVER_LIST_PTR
	arm_func_end AlreadyHaveMission
