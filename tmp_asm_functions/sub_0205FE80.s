	arm_func_start sub_0205FE80
sub_0205FE80: ; 0x0205FE80
	stmdb sp!, {r3, r4, r5, lr}
	mov ip, #0xff
	mov r3, #0
	mov r5, r0
	mov r4, r1
	mov r2, #4
	strb ip, [sp, #1]
	strb r3, [sp]
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #1
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #2
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x12
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x16
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x18
	mov r2, #0xb
	bl CopyBitsTo
	ldrb r0, [r4, #0x1a]
	mov r2, #1
	cmp r0, #1
	addeq r1, sp, #1
	addne r1, sp, #0
	mov r0, r5
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205FE80
