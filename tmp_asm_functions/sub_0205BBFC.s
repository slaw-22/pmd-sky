	arm_func_start sub_0205BBFC
sub_0205BBFC: ; 0x0205BBFC
	stmdb sp!, {r4, lr}
	ldr r1, _0205BC2C ; =_020B0A54
	mov r4, r0
	ldr lr, [r1, #8]
	mov ip, #4
_0205BC10:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205BC10
	ldr r0, [lr]
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BC2C: .word _020B0A54
	arm_func_end sub_0205BBFC
