	arm_func_start sub_0205FD88
sub_0205FD88: ; 0x0205FD88
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #2
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x12
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x16
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x18
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r4, #0x1c
	mov r2, #0xb
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r5
	strb r3, [r4, #0x1a]
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205FD88
