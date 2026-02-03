	arm_func_start sub_0205B794
sub_0205B794: ; 0x0205B794
	stmdb sp!, {r4, lr}
	ldr r3, _0205B7C4 ; =_020B0A54
	mov r2, #0xb0
	ldr r3, [r3]
	mov r4, r0
	mla lr, r1, r2, r3
	mov ip, #0xb
_0205B7B0:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205B7B0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B7C4: .word _020B0A54
	arm_func_end sub_0205B794
