	arm_func_start sub_02069894
sub_02069894: ; 0x02069894
	ldr r1, _020698B0 ; =_020B0B44
	ldr ip, _020698B4 ; =sub_02047188
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r0, [r1]
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_020698B0: .word _020B0B44
_020698B4: .word sub_02047188
	arm_func_end sub_02069894
