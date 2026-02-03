	arm_func_start sub_02063560
sub_02063560: ; 0x02063560
	stmdb sp!, {r3, lr}
	ldrsh r2, [r1]
	cmp r2, #0
	beq _020635BC
	mov r2, #0x8000
	strh r2, [r0]
	ldrsh r2, [r1, #2]
	add ip, r1, #4
	add r3, r0, #0x14
	strh r2, [r0, #4]
	ldrsh lr, [r1, #2]
	mov r2, #4
	strh lr, [r0, #2]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	ldrsh r1, [r1]
	add r1, ip, r1, lsl #2
	str r1, [r0, #0x10]
_020635A8:
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r0, [r3], #1
	bne _020635A8
	ldmia sp!, {r3, pc}
_020635BC:
	mov r1, #0
	strh r1, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_02063560
