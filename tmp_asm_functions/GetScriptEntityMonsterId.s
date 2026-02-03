	arm_func_start GetScriptEntityMonsterId
GetScriptEntityMonsterId: ; 0x02065974
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r3, lr}
	add r0, sp, #8
	add r1, sp, #0
	bl sub_0206549C
	ldrsh r0, [sp]
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end GetScriptEntityMonsterId
