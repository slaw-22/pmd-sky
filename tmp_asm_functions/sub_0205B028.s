	arm_func_start sub_0205B028
sub_0205B028: ; 0x0205B028
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl GetActiveRosterIndex
	mvn r1, #0
	cmp r0, r1
	bne _0205B078
	add r0, sp, #0
	mov r1, r5
	mov r2, #0
	bl sub_02053224
	mov r0, r5
	bl sub_020564B0
	mov r2, r0
	add r1, sp, #0
	mov r0, r6
	bl CreateMonsterSummaryFromTeamMember
	b _0205B098
_0205B078:
	bl GetActiveTeamMember
	mov r4, r0
	mov r0, r5
	bl sub_020564B0
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl CreateMonsterSummaryFromTeamMember
_0205B098:
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_0205B028
