	arm_func_start sub_02063424
sub_02063424: ; 0x02063424
	stmdb sp!, {r4, lr}
	cmp r0, #0xb
	ldreqb r0, [r1]
	mov r4, r2
	cmpeq r0, #5
	mov r0, r4
	bne _02063448
	bl GetNbFloors
	ldmia sp!, {r4, pc}
_02063448:
	bl GetNbFloors
	cmp r4, #0xae
	addne r0, r0, #1
	sub r0, r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_02063424
