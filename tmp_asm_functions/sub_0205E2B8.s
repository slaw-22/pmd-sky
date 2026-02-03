	arm_func_start sub_0205E2B8
sub_0205E2B8: ; 0x0205E2B8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, #0
	ldr r6, _0205E3F4 ; =MISSION_DELIVER_LIST_PTR
	b _0205E2F4
_0205E2D0:
	ldr r0, [r6, #0x18]
	mov r1, r5
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E2F4:
	cmp r7, #8
	blt _0205E2D0
	mov r7, #0
	ldr r6, _0205E3F4 ; =MISSION_DELIVER_LIST_PTR
	b _0205E330
_0205E308:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x100
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E330:
	cmp r7, #8
	blt _0205E308
	mov r7, #0
	ldr r6, _0205E3F4 ; =MISSION_DELIVER_LIST_PTR
	b _0205E36C
_0205E344:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x200
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E36C:
	cmp r7, #8
	blt _0205E344
	mov r7, #0
	ldr r6, _0205E3F4 ; =MISSION_DELIVER_LIST_PTR
	b _0205E3A8
_0205E380:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x300
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E3A8:
	cmp r7, #1
	blt _0205E380
	mov r7, #0
	ldr r6, _0205E3F4 ; =MISSION_DELIVER_LIST_PTR
	b _0205E3E4
_0205E3BC:
	ldr r0, [r6, #0x18]
	mov r1, r5
	add r0, r0, #0x320
	mov r2, r4
	add r0, r0, r7, lsl #5
	bl sub_0205E288
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
_0205E3E4:
	cmp r7, #1
	blt _0205E3BC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205E3F4: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205E2B8
