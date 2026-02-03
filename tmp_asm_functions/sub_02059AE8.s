	arm_func_start sub_02059AE8
sub_02059AE8: ; 0x02059AE8
	ldr ip, _02059AF4 ; =CopyBitsFrom
	mov r2, #7
	bx ip
	.align 2, 0
_02059AF4: .word CopyBitsFrom
	arm_func_end sub_02059AE8
