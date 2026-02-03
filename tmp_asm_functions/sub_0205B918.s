	arm_func_start sub_0205B918
sub_0205B918: ; 0x0205B918
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	ldr r8, _0205B978 ; =_020B0A54
	mov r7, #0xb0
	b _0205B968
_0205B934:
	mul r1, r4, r7
	ldr r2, [r8]
	ldrb r0, [r2, r1]
	add r2, r2, r1
	cmp r6, r0
	bne _0205B964
	mov r1, r5
	add r0, r2, #0x14
	bl sub_0205B560
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0205B964:
	add r4, r4, #1
_0205B968:
	cmp r4, #0x20
	blt _0205B934
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0205B978: .word _020B0A54
	arm_func_end sub_0205B918
