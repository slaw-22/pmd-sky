	arm_func_start sub_02065BD8
sub_02065BD8: ; 0x02065BD8
	ldr ip, _02065BE8 ; =StrncpySimple
	mov r2, r1
	ldr r1, _02065BEC ; =_022B7310
	bx ip
	.align 2, 0
_02065BE8: .word StrncpySimple
_02065BEC: .word _022B7310
	arm_func_end sub_02065BD8
