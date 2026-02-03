	arm_func_start sub_0205A288
sub_0205A288: ; 0x0205A288
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mvn r2, #0
	mov r6, r0
	strh r2, [sp]
	ldrsh r0, [r6]
	mov r5, r1
	bl GetTeamMember
	add lr, sp, #4
	mov r4, r0
	mov ip, #4
_0205A2B4:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205A2B4
	ldr r3, [r4]
	add r1, sp, #4
	mov r0, r6
	mov r2, r5
	str r3, [lr]
	bl sub_0205A340
	ldr r0, _0205A33C ; =0x0000013F
	cmp r5, r0
	addne r0, r0, #0x258
	cmpne r5, r0
	bne _0205A330
	mov r0, #0x140
	bl GetNameString
	mov r1, r0
	add r0, sp, #0x3e
	mov r2, #0xa
	bl StrncpyName
	add r0, sp, #0
	add r1, sp, #4
	mov r2, #0x140
	bl sub_0205A340
	ldrsh r1, [sp]
	mvn r0, #0
	cmp r1, r0
	beq _0205A330
	mov r0, #0x140
	bl SetPokemonJoined
_0205A330:
	mov r0, #1
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205A33C: .word 0x0000013F
	arm_func_end sub_0205A288
