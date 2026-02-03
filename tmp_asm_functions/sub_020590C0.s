	arm_func_start sub_020590C0
sub_020590C0: ; 0x020590C0
	ldr r0, _020590D8 ; =TEAM_MEMBER_TABLE_PTR
	ldr r0, [r0]
	add r1, r0, #0x9000
	ldr r0, [r1, #0x878]
	ldr r1, [r1, #0x87c]
	bx lr
	.align 2, 0
_020590D8: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020590C0
