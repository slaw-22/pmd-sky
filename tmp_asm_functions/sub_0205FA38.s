	arm_func_start sub_0205FA38
sub_0205FA38: ; 0x0205FA38
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_0205F93C
	ldr r2, _0205FAAC ; =MISSION_DELIVER_LIST_PTR
	mov r1, #0
	ldr r2, [r2, #0x18]
	add r5, r2, #0x340
	mov r2, #0xc
	b _0205FA9C
_0205FA5C:
	mul lr, r1, r2
	ldrb ip, [r5, lr]
	ldrb r3, [r4, #4]
	add lr, r5, lr
	cmp ip, r3
	ldreqb ip, [lr, #1]
	ldreqb r3, [r4, #5]
	cmpeq ip, r3
	ldreq ip, [lr, #4]
	ldreq r3, [r4, #8]
	cmpeq ip, r3
	ldreq r3, [lr, #8]
	cmpeq r3, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	add r1, r1, #1
_0205FA9C:
	cmp r1, #0x10
	blt _0205FA5C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205FAAC: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205FA38
