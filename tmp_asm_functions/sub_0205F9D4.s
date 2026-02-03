	arm_func_start sub_0205F9D4
sub_0205F9D4: ; 0x0205F9D4
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _0205FA34 ; =MISSION_DELIVER_LIST_PTR
	mov r5, r0
	ldr r4, [r1, #0x18]
	mov lr, #0xf
	mov r3, #0xc
_0205F9EC:
	mla r1, lr, r3, r4
	add r0, r1, #0x334
	sub lr, lr, #1
	add ip, r1, #0x340
	ldmia r0, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	cmp lr, #0
	bgt _0205F9EC
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	mov r0, r5
	str r2, [r4, #0x340]
	str r1, [r4, #0x344]
	bl sub_0205F93C
	ldr r1, _0205FA34 ; =MISSION_DELIVER_LIST_PTR
	ldr r1, [r1, #0x18]
	str r0, [r1, #0x348]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205FA34: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205F9D4
