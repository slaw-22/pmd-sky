	arm_func_start sub_02062DB4
sub_02062DB4: ; 0x02062DB4
	ldr r1, _02062DC0 ; =RANK_STRING_PTR_TABLE
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
_02062DC0: .word RANK_STRING_PTR_TABLE
	arm_func_end sub_02062DB4
