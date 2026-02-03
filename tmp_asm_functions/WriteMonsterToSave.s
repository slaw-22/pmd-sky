	arm_func_start WriteMonsterToSave
WriteMonsterToSave: ; 0x02059334
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #1
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #1
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #2
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #6
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #7
	mov r2, #7
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #8
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa
	mov r2, #0xa
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xd
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xe
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #8
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x10
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x45
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x20
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x22
	bl CopyMovesetTo
	mov r0, r5
	add r1, r4, #0x3a
	mov r2, #0x50
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WriteMonsterToSave
