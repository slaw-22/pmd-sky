	arm_func_start sub_02063FA4
sub_02063FA4: ; 0x02063FA4
	ldr r2, _02063FC0 ; =_020B0B04
	ldr ip, _02063FC4 ; =sub_02064C90
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x40
	bx ip
	.align 2, 0
_02063FC0: .word _020B0B04
_02063FC4: .word sub_02064C90
	arm_func_end sub_02063FA4
