	arm_func_start RandomizeDemoActors
RandomizeDemoActors: ; 0x02065C48
	stmdb sp!, {r3, lr}
	mov r0, #0x12
	bl RandInt
	ldr r2, _02065C78 ; =DEMO_TEAMS
	mov r3, r0, lsl #2
	ldr r1, _02065C7C ; =_020A68CA
	ldrsh r2, [r2, r3]
	ldr r0, _02065C80 ; =_020B0B08
	ldrsh r1, [r1, r3]
	strh r2, [r0, #0xa]
	strh r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02065C78: .word DEMO_TEAMS
_02065C7C: .word _020A68CA
_02065C80: .word _020B0B08
	arm_func_end RandomizeDemoActors
