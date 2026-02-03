	arm_func_start DungeonRequestsDoneWrapper
DungeonRequestsDoneWrapper: ; 0x0205EE10
	ldr ip, _0205EE1C ; =DungeonRequestsDone
	mov r1, #0
	bx ip
	.align 2, 0
_0205EE1C: .word DungeonRequestsDone
	arm_func_end DungeonRequestsDoneWrapper
