	arm_func_start sub_020635C8
sub_020635C8: ; 0x020635C8
	ldr ip, _020635D4 ; =MemZero
	mov r1, #0xc
	bx ip
	.align 2, 0
_020635D4: .word MemZero
	arm_func_end sub_020635C8
