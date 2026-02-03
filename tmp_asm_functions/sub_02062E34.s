	arm_func_start sub_02062E34
sub_02062E34: ; 0x02062E34
	stmdb sp!, {r4, lr}
	cmp r1, #0
	ldrnesh r4, [r0, #0xa0]
	ldreqsh r4, [r0, #0xa2]
	ldrb r0, [r0, #0xae]
	bl sub_0205BD5C
	mov r1, r0
	mov r0, r4
	bl CanSendItem
	ldmia sp!, {r4, pc}
	arm_func_end sub_02062E34
