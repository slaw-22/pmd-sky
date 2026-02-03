	arm_func_start sub_020640BC
sub_020640BC: ; 0x020640BC
	ldr ip, _020640C8 ; =MemZero
	mov r1, #0x40
	bx ip
	.align 2, 0
_020640C8: .word MemZero
	arm_func_end sub_020640BC
