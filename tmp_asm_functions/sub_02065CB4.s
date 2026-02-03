	arm_func_start sub_02065CB4
sub_02065CB4: ; 0x02065CB4
	ldrh r2, [r1]
	ldr r3, _02065CD4 ; =_022B7320
	mov ip, r0, lsl #2
	strh r2, [r3, ip]
	ldrh r1, [r1, #2]
	add r0, r3, r0, lsl #2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_02065CD4: .word _022B7320
	arm_func_end sub_02065CB4
