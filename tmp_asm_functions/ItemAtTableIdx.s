	arm_func_start ItemAtTableIdx
ItemAtTableIdx: ; 0x02065CF8
	ldr r3, _02065D18 ; =_022B7320
	mov r2, r0, lsl #2
	ldrh r2, [r3, r2]
	add r0, r3, r0, lsl #2
	strh r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_02065D18: .word _022B7320
	arm_func_end ItemAtTableIdx
