	arm_func_start sub_0205C688
sub_0205C688: ; 0x0205C688
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	bne _0205C6C4
	mov r0, r4
	bl sub_02054F18
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
_0205C6C4:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205C688
