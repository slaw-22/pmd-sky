	arm_func_start sub_02065BF0
sub_02065BF0: ; 0x02065BF0
	ldr ip, _02065C00 ; =StrncpySimpleNoPadSafe
	ldr r1, _02065C04 ; =_022B7310
	mov r2, #0xa
	bx ip
	.align 2, 0
_02065C00: .word StrncpySimpleNoPadSafe
_02065C04: .word _022B7310
	arm_func_end sub_02065BF0
