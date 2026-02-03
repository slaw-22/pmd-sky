	arm_func_start sub_02065B94
sub_02065B94: ; 0x02065B94
	ldr ip, _02065BA8 ; =SaveScriptVariableValue
	mov r2, r0
	mov r0, #0
	mov r1, #0x44
	bx ip
	.align 2, 0
_02065BA8: .word SaveScriptVariableValue
	arm_func_end sub_02065B94
