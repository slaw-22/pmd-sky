	arm_func_start sub_020639B4
sub_020639B4: ; 0x020639B4
	stmdb sp!, {r4, lr}
	ldr ip, _020639E4 ; =_020B0B04
	mov r4, r0
	ldr r0, [ip]
	mov lr, r1
	mov ip, r2
	add r0, r0, r3, lsl #5
	mov r1, r4
	mov r2, lr
	mov r3, ip
	bl sub_020646CC
	ldmia sp!, {r4, pc}
	.align 2, 0
_020639E4: .word _020B0B04
	arm_func_end sub_020639B4
