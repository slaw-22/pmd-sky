	arm_func_start AnyDungeonRequestsDone
AnyDungeonRequestsDone: ; 0x0205EE20
	stmdb sp!, {r3, lr}
	mov r1, #1
	bl DungeonRequestsDone
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end AnyDungeonRequestsDone
