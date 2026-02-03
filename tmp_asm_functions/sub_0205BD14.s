	arm_func_start sub_0205BD14
sub_0205BD14: ; 0x0205BD14
	stmdb sp!, {r4, lr}
	ldr r3, _0205BD3C ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mov r4, r0
	mla r0, r1, r2, r3
	ldrb r0, [r0, #0xae]
	bl sub_0205BD40
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BD3C: .word _020B0A54
	arm_func_end sub_0205BD14
