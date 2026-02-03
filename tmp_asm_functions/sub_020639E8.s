	arm_func_start sub_020639E8
sub_020639E8: ; 0x020639E8
	ldr r2, _02063A04 ; =_020B0B04
	ldr ip, _02063A08 ; =sub_02064C18
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x40
	bx ip
	.align 2, 0
_02063A04: .word _020B0B04
_02063A08: .word sub_02064C18
	arm_func_end sub_020639E8
