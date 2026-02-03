	arm_func_start sub_02066990
sub_02066990: ; 0x02066990
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldr r0, _02066A3C ; =0x00000EF8
	mov r1, #8
	mov r6, r2
	mov r5, r3
	bl MemAlloc
	ldr r2, _02066A40 ; =_020B0B2C
	ldr r1, _02066A3C ; =0x00000EF8
	str r0, [r2, #0x14]
	bl MemZero
	ldr r0, _02066A40 ; =_020B0B2C
	mov r1, #0
	ldr r4, [r0, #0x14]
	str r8, [r4, #4]
	str r7, [r4, #0x74]
	str r6, [r4, #0x6c]
	str r5, [r4, #0x78]
	str r1, [r4, #8]
	str r1, [r4, #0xef0]
	bl sub_020686F4
	cmp r0, #0
	bne _02066A10
	bl sub_020692B4
	ldr r0, _02066A40 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r1, _02066A40 ; =_020B0B2C
	mov r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02066A10:
	mvn r0, #1
	strb r0, [r4, #0x7d]
	bl sub_020692FC
	mvn r1, #1
	ldr r0, _02066A40 ; =_020B0B2C
	strb r1, [r4, #0xd85]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02066A3C: .word 0x00000EF8
_02066A40: .word _020B0B2C
	arm_func_end sub_02066990
