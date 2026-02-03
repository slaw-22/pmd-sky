	arm_func_start sub_02060680
sub_02060680: ; 0x02060680
	stmdb sp!, {r3, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov ip, #0
	mov lr, ip
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _020606C4
	ldrh r2, [r0, #2]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, ip
	tst r2, #0xff
	movne lr, #1
_020606C4:
	cmp lr, #0
	beq _020606DC
	ldrsh r2, [r0, #6]
	ldrsh r0, [r1, #0x14]
	cmp r2, r0
	moveq ip, #1
_020606DC:
	and r0, ip, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end sub_02060680
