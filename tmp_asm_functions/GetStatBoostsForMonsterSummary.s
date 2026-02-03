	arm_func_start GetStatBoostsForMonsterSummary
GetStatBoostsForMonsterSummary: ; 0x0205A450
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldrb ip, [sp, #0x18]
	mov r4, r0
	add r0, sp, #4
	str ip, [sp]
	bl sub_0205B120
	ldrb r1, [r4, #0x39]
	ldrsh r0, [sp, #6]
	add r0, r1, r0
	strb r0, [r4, #0x39]
	ldrb r1, [r4, #0x3a]
	ldrsh r0, [sp, #8]
	add r0, r1, r0
	strb r0, [r4, #0x3a]
	ldrb r1, [r4, #0x3b]
	ldrsh r0, [sp, #0xa]
	add r0, r1, r0
	strb r0, [r4, #0x3b]
	ldrb r1, [r4, #0x3c]
	ldrsh r0, [sp, #0xc]
	add r0, r1, r0
	strb r0, [r4, #0x3c]
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end GetStatBoostsForMonsterSummary
