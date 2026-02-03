	arm_func_start GetAvailableItemDeliveryList
GetAvailableItemDeliveryList: ; 0x020634A8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	ldr r4, _020634F0 ; =ITEM_DELIVERY_TABLE
	mov r8, r0
	mov r5, r6
_020634BC:
	mov r0, r5, lsl #1
	ldrsh r7, [r4, r0]
	mov r0, r7
	bl IsAvailableItem
	cmp r0, #0
	movne r0, r6, lsl #1
	add r5, r5, #1
	strneh r7, [r8, r0]
	addne r6, r6, #1
	cmp r5, #0x16
	blt _020634BC
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020634F0: .word ITEM_DELIVERY_TABLE
	arm_func_end GetAvailableItemDeliveryList
