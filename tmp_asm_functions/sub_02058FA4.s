	arm_func_start sub_02058FA4
sub_02058FA4: ; 0x02058FA4
	ldr r0, _02058FC8 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r0, r0, #0x9800
	ldrsh r0, [r0, #0x9c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_02058FC8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_02058FA4
