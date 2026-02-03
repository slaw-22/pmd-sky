	arm_func_start GetAllPossibleMonsters
GetAllPossibleMonsters: ; 0x0205F738
	cmp r0, #0
	ldrne r1, _0205F754 ; =MISSION_DELIVER_LIST_PTR
	ldrne r1, [r1, #0x10]
	strne r1, [r0]
	ldr r0, _0205F754 ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_0205F754: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GetAllPossibleMonsters
