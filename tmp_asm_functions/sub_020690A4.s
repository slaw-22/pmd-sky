	arm_func_start sub_020690A4
sub_020690A4: ; 0x020690A4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl AlreadyHaveMission
	cmp r0, #0
	bne _020690CC
	mov r0, r5
	bl sub_0205FA38
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020690CC:
	mov r0, #3
	strb r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020690A4
