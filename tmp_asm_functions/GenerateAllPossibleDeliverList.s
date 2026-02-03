	arm_func_start GenerateAllPossibleDeliverList
GenerateAllPossibleDeliverList: ; 0x0205F8D0
	stmdb sp!, {r3, r4, r5, lr}
	mov r0, #0x2d8
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	bl GetAvailableItemDeliveryList
	movs r5, r0
	ldrne r0, _0205F908 ; =MISSION_DELIVER_LIST_PTR
	stmneia r0, {r4, r5}
	bne _0205F900
	mov r0, r4
	bl MemFree
_0205F900:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205F908: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GenerateAllPossibleDeliverList
