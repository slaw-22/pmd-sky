	arm_func_start sub_020590DC
sub_020590DC: ; 0x020590DC
	ldr r2, _020590F4 ; =TEAM_MEMBER_TABLE_PTR
	ldr r2, [r2]
	add r2, r2, #0x9000
	str r0, [r2, #0x878]
	str r1, [r2, #0x87c]
	bx lr
	.align 2, 0
_020590F4: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end sub_020590DC
