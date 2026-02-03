	arm_func_start ReadMonsterFromSave
ReadMonsterFromSave: ; 0x02059444
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0x44
	bl memset
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #2
	bl Copy16BitsFrom
	mov r0, r5
	add r1, r4, #6
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #7
	mov r2, #7
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsFrom
	mov r0, r5
	add r1, r4, #0x22
	bl CopyMovesetFrom
	mov r0, r5
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsFrom
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ReadMonsterFromSave
