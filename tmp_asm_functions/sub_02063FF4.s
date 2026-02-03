	arm_func_start sub_02063FF4
sub_02063FF4: ; 0x02063FF4
	ldr r2, _0206400C ; =_020B0B04
	mov r1, r0
	ldr r0, [r2]
	ldr ip, _02064010 ; =sub_02064C0C
	add r0, r0, #0x58
	bx ip
	.align 2, 0
_0206400C: .word _020B0B04
_02064010: .word sub_02064C0C
	arm_func_end sub_02063FF4
