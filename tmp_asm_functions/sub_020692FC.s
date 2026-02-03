	arm_func_start sub_020692FC
sub_020692FC: ; 0x020692FC
	stmdb sp!, {r3, lr}
	ldr r0, _02069378 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r1, [r0, #4]
	sub r0, r1, #0xe
	cmp r0, #3
	bhi _02069328
	bl sub_02069444
	mov r1, #1
	bl CreateJobSummary
	ldmia sp!, {r3, pc}
_02069328:
	cmp r1, #0xa
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	beq _02069348
	sub r0, r1, #0x14
	cmp r0, #1
	bhi _02069358
_02069348:
	bl sub_02069444
	mov r1, #0
	bl CreateJobSummary
	ldmia sp!, {r3, pc}
_02069358:
	cmp r1, #0x13
	bne _0206936C
	bl sub_0206941C
	bl sub_02069790
	ldmia sp!, {r3, pc}
_0206936C:
	bl sub_020693EC
	bl sub_02069790
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069378: .word _020B0B2C
	arm_func_end sub_020692FC
