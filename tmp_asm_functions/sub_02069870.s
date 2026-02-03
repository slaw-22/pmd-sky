	arm_func_start sub_02069870
sub_02069870: ; 0x02069870
	ldr r1, _0206988C ; =_020B0B44
	ldr ip, _02069890 ; =sub_02047188
	ldr r2, [r1]
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_0206988C: .word _020B0B44
_02069890: .word sub_02047188
	arm_func_end sub_02069870
