	arm_func_start sub_02059B08
sub_02059B08: ; 0x02059B08
	ldr ip, _02059B14 ; =GetResolvedPerformanceProgressFlag
	mov r0, #0xa
	bx ip
	.align 2, 0
_02059B14: .word GetResolvedPerformanceProgressFlag
	arm_func_end sub_02059B08
