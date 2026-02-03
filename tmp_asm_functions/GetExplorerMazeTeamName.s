	arm_func_start GetExplorerMazeTeamName
GetExplorerMazeTeamName: ; 0x02059060
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _020590B8 ; =TEAM_MEMBER_TABLE_PTR
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x1880
	add r4, r0, #0x8000
	bl sub_02058FA4
	cmp r0, #0
	beq _020590A8
	bl GetLanguageType
	ldrsb r1, [r4]
	cmp r1, r0
	bne _020590A8
	mov r0, r5
	add r1, r4, #2
#ifdef JAPAN
	mov r2, #5
#else
	mov r2, #0xa
#endif
	bl StrncpySimpleNoPadSafe
	ldmia sp!, {r3, r4, r5, pc}
_020590A8:
	ldr r1, _020590BC ; =0x00000235
	mov r0, r5
	bl GetStringFromFileVeneer
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020590B8: .word TEAM_MEMBER_TABLE_PTR
#ifdef JAPAN
_020590BC: .word 0x000004C6
#else
_020590BC: .word 0x00000235
#endif
	arm_func_end GetExplorerMazeTeamName
