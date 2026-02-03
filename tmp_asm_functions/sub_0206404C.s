	arm_func_start sub_0206404C
sub_0206404C: ; 0x0206404C
	ldr r2, _02064074 ; =_020B0B04
	ldr ip, _02064078 ; =sub_020648FC
	ldr r3, [r2]
	mov r2, #0x60
	smlabb r0, r0, r2, r3
	ldr r2, [r0, #0xb0]
	add r0, r3, r1, lsl #5
	ldr r1, [r2, #0x10]
	mov r2, #0x10
	bx ip
	.align 2, 0
_02064074: .word _020B0B04
_02064078: .word sub_020648FC
	arm_func_end sub_0206404C
