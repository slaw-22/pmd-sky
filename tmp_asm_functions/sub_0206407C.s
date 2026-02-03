	arm_func_start sub_0206407C
sub_0206407C: ; 0x0206407C
	ldr r2, _02064094 ; =_020B0B04
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _02064098 ; =sub_02064FE4
	add r0, r0, #0x40
	bx ip
	.align 2, 0
_02064094: .word _020B0B04
_02064098: .word sub_02064FE4
	arm_func_end sub_0206407C
