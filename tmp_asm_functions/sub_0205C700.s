	arm_func_start sub_0205C700
sub_0205C700: ; 0x0205C700
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_0205C688
	cmp r0, #0
	beq _0205C72C
	mov r0, r5
	mov r1, r4
	bl sub_0205C6CC
	cmp r0, #0
	bne _0205C734
_0205C72C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205C734:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205C700
