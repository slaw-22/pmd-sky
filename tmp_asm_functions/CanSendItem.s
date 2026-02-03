	arm_func_start CanSendItem
CanSendItem: ; 0x02062DDC
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _02062DFC
	bl IsItemInTimeDarkness
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02062DFC:
	mov r2, #0
	ldr r0, _02062E30 ; =NO_SEND_ITEM_TABLE
	b _02062E18
_02062E08:
	cmp r4, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r2, #1
_02062E18:
	mov r1, r2, lsl #1
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _02062E08
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062E30: .word NO_SEND_ITEM_TABLE
	arm_func_end CanSendItem
