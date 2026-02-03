	arm_func_start sub_02063600
sub_02063600: ; 0x02063600
	ldr ip, _0206360C ; =MemZero
	mov r1, #0x18
	bx ip
	.align 2, 0
_0206360C: .word MemZero
	arm_func_end sub_02063600
