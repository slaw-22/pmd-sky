	arm_func_start sub_02064FE4
sub_02064FE4: ; 0x02064FE4
	ldr r3, [r1, #0x20]
	ldr ip, _02064FF8 ; =sub_02064F94
	ldr r2, [r1, #0x24]
	add r1, r1, r3
	bx ip
	.align 2, 0
_02064FF8: .word sub_02064F94
	arm_func_end sub_02064FE4
