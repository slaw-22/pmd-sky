	arm_func_start sub_0205C19C
sub_0205C19C: ; 0x0205C19C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x32
	mov r2, #0x120
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x56
	mov r2, #0x240
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xac
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, sp, #0
	mov r2, #1
	bl CopyBitsFrom
	ldrb r0, [sp]
	add r1, r4, #0xae
	mov r2, #2
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r5
	strb r3, [r4, #0xad]
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C19C
