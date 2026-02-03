	arm_func_start GetExplorerMazeMonster
GetExplorerMazeMonster: ; 0x020590F8
	ldr r1, _02059114 ; =TEAM_MEMBER_TABLE_PTR
	mov r2, #0x44
	ldr r1, [r1]
	add r1, r1, #0x98
	add r1, r1, #0x9800
	smlabb r0, r0, r2, r1
	bx lr
	.align 2, 0
_02059114: .word TEAM_MEMBER_TABLE_PTR
	arm_func_end GetExplorerMazeMonster
