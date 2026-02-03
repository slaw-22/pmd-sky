	arm_func_start sub_0205D11C
sub_0205D11C: ; 0x0205D11C
	stmdb sp!, {r3, r4, r5, lr}
	movs r4, r2
	mov r5, r0
	bne _0205D140
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D140:
	mov r0, r4
	bl IsValidTargetItem
	cmp r0, #0
	beq _0205D164
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D164:
	mov r0, r4
	bl IsItemValidVeneer
	cmp r0, #0
	bne _0205D188
	ldr r0, _0205D1E8 ; =_020A3AD4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D188:
	mov r0, r4
	bl IsThrownItem
	cmp r0, #0
	beq _0205D1C0
	cmp r5, #4
	bne _0205D1C0
	cmp r4, #0xa
	cmpne r4, #9
	beq _0205D1C0
	ldr r0, _0205D1EC ; =_020A3AF4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0205D1C0:
	mov r0, r4
	bl IsStorableItem
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _0205D1F0 ; =_020A3B18
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205D1E8: .word _020A3AD4
_0205D1EC: .word _020A3AF4
_0205D1F0: .word _020A3B18
	arm_func_end sub_0205D11C
