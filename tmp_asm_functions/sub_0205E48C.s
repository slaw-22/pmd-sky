	arm_func_start sub_0205E48C
sub_0205E48C: ; 0x0205E48C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r6, r1
	mov r5, r4
	b _0205E4B4
_0205E4A4:
	ldrb r0, [r6, r4, lsl #5]
	cmp r0, #0
	bne _0205E4BC
	add r4, r4, #1
_0205E4B4:
	cmp r4, r7
	blt _0205E4A4
_0205E4BC:
	cmp r4, r7
	beq _0205E4F0
	cmp r4, r5
	ble _0205E4E4
	add lr, r6, r4, lsl #5
	add ip, r6, r5, lsl #5
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
_0205E4E4:
	add r4, r4, #1
	add r5, r5, #1
	b _0205E4B4
_0205E4F0:
	mov r0, #0
	b _0205E500
_0205E4F8:
	strb r0, [r6, r5, lsl #5]
	add r5, r5, #1
_0205E500:
	cmp r5, r7
	blt _0205E4F8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_0205E48C
