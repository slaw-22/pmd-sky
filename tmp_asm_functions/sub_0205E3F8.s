	arm_func_start sub_0205E3F8
sub_0205E3F8: ; 0x0205E3F8
	stmdb sp!, {r3, lr}
	mov lr, r0
	mov ip, #0
	b _0205E438
_0205E408:
	ldrb r0, [r2, ip, lsl #5]
	mov r3, ip, lsl #5
	cmp r0, #0
	bne _0205E434
	add ip, r2, r3
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #0
	ldmia sp!, {r3, pc}
_0205E434:
	add ip, ip, #1
_0205E438:
	cmp ip, r1
	blt _0205E408
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205E3F8
