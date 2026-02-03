	arm_func_start sub_0205FAB0
sub_0205FAB0: ; 0x0205FAB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_02050974
	mov r7, #0
	ldr r4, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FADC:
	ldr r1, [r4, #0x18]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FADC
	mov r7, #0
	ldr r4, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FB0C:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x100
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FB0C
	mov r7, #0
	ldr r4, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	add r6, sp, #0
	mov r5, r7
_0205FB40:
	ldr r1, [r4, #0x18]
	mov r0, r6
	add r1, r1, #0x200
	mov r2, r5
	add r1, r1, r7, lsl #5
	bl sub_0205FD88
	add r7, r7, #1
	cmp r7, #8
	blt _0205FB40
	ldr r1, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x300
	bl sub_0205FD88
	ldr r1, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	add r0, sp, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	add r1, r1, #0x320
	bl sub_0205FD88
	ldr sl, _0205FC1C ; =MISSION_DELIVER_LIST_PTR
	mov r8, #0
	add r6, sp, #0
	mov r5, #0x20
	mov r4, #0x18
	mov sb, #0xc
_0205FBAC:
	mul r7, r8, sb
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x348
	mov r2, r5
	add r1, r1, r7
	bl CopyBitsFrom
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x344
	mov r2, r4
	add r1, r1, r7
	bl CopyBitsFrom
	ldr r1, [sl, #0x18]
	mov r0, r6
	add r1, r1, #0x340
	add r1, r1, r7
	bl Copy16BitsFrom
	add r8, r8, #1
	cmp r8, #0x10
	blt _0205FBAC
	add r0, sp, #0
	bl sub_020509BC
	bl Rand16Bit
	bl sub_020634F4
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205FC1C: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205FAB0
