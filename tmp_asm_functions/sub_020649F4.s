	arm_func_start sub_020649F4
sub_020649F4: ; 0x020649F4
	stmdb sp!, {r3, r4, r5, lr}
	add r1, r0, #0x600
	mov lr, #1
	ldrsh r4, [r1, #2]
	ldrsh r5, [r1]
	mov ip, lr
	mov r3, #0x60
	b _02064A6C
_02064A14:
	cmp r4, r5
	movge r4, ip
	smlabb r1, r4, r3, r0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	bne _02064A54
	add r1, r4, #1
	add r0, r0, #0x600
	strh r1, [r0, #2]
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	cmp r2, r1
	movge r1, #1
	strgeh r1, [r0, #2]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_02064A54:
	add r1, lr, #1
	add r2, r4, #1
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov lr, r1, asr #0x10
	mov r4, r2, asr #0x10
_02064A6C:
	cmp lr, r5
	blt _02064A14
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020649F4
