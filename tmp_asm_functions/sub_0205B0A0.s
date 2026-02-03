	arm_func_start sub_0205B0A0
sub_0205B0A0: ; 0x0205B0A0
	ldr ip, _0205B0B0 ; =sub_0205B39C
	mov r1, r0
	ldr r0, _0205B0B4 ; =_020A34D2
	bx ip
	.align 2, 0
_0205B0B0: .word sub_0205B39C
_0205B0B4: .word _020A34D2
	arm_func_end sub_0205B0A0
