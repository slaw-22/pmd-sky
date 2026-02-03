	arm_func_start sub_0205C6CC
sub_0205C6CC: ; 0x0205C6CC
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	mov r0, r4
	bne _0205C6F8
	bl IsMovesetValidInTimeDarkness
	ldmia sp!, {r4, pc}
_0205C6F8:
	bl IsMovesetValid
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C6CC
