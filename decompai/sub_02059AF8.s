	arm_func_start sub_02059AF8
sub_02059AF8: ; 0x02059AF8
	ldr ip, _02059B04 ; =CopyBitsTo
	mov r2, #7
	bx ip
	.align 2, 0
_02059B04: .word CopyBitsTo
	arm_func_end sub_02059AF8
