	arm_func_start sub_020630A4
sub_020630A4: ; 0x020630A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r2
	mov r5, #1
	bl sub_02062D5C
	mov r6, r0
	mov r0, r8
	mov r1, r6
	bl RetrieveFromItemList2
	mov r4, #0
	b _020630E0
_020630D0:
	mov r0, r8
	mov r1, r6
	mov r5, r4
	bl RetrieveFromItemList2
_020630E0:
	cmp r5, #0
	bne _020630D0
	strh r0, [r7]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020630A4
