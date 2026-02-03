	arm_func_start sub_0205FC20
sub_0205FC20: ; 0x0205FC20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050990
	mov r7, #0
	ldr r4, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FC4C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FC4C
	mov r7, #0
	ldr r4, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FC7C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x100
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FC7C
	mov r7, #0
	ldr r4, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FCB0:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x200
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FE80
	add r7, r7, #1
	cmp r7, #8
	blt _0205FCB0
	ldr r1, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x300
	bl sub_0205FE80
	ldr r1, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x320
	bl sub_0205FE80
	ldr sl, _0205FD84 ; =MISSION_DELIVER_LIST_PTR
	mov r8, #0
	add r6, sp, #0
	mov r5, #0x20
	mov r4, #0x18
	mov sb, #0xc
_0205FD1C:
	mul r7, r8, sb
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x348
	mov r2, r5
	add r1, r1, r7
	bl CopyBitsTo
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x344
	mov r2, r4
	add r1, r1, r7
	bl CopyBitsTo
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x340
	add r1, r1, r7
	bl sub_020515C4
	add r8, r8, #1
	cmp r8, #0x10
	blt _0205FD1C
	add r0, sp, #0
	bl sub_020509BC
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205FD84: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205FC20
