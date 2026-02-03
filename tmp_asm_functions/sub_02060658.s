	arm_func_start sub_02060658
sub_02060658: ; 0x02060658
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	cmp r3, r2
	ldreqb r2, [r0, #0x21]
	ldreqb r0, [r1, #2]
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end sub_02060658
