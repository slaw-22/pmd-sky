	arm_func_start sub_0205C440
sub_0205C440: ; 0x0205C440
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #4
	bl sub_020515C4
	mov r0, r5
	add r1, r4, #8
	mov r2, #0x18
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xc
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x14
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1c
	mov r2, #4
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x1d
	mov r2, #0x50
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x32
	mov r2, #0x120
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0x56
	mov r2, #0x240
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa0
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa2
	mov r2, #0xb
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xa4
	mov r2, #0x40
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xac
	mov r2, #8
	bl CopyBitsTo
	ldrb r0, [r4, #0xad]
	mov r2, #1
	cmp r0, #1
	ldreq r1, _0205C540 ; =_020A3673
	mov r0, r5
	ldrne r1, _0205C544 ; =_020A3670
	bl CopyBitsTo
	mov r0, r5
	add r1, r4, #0xae
	mov r2, #2
	bl CopyBitsTo
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C540: .word _020A3673
_0205C544: .word _020A3670
	arm_func_end sub_0205C440
