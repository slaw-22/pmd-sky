	arm_func_start sub_0206379C
sub_0206379C: ; 0x0206379C
	mov r2, #0x18
	mul r2, r1, r2
	ldr r0, [r0, #8]
	ldrh r0, [r0, r2]
	tst r0, #0x8000
	beq _020637C0
	tst r0, #0x2000
	movne r0, #1
	bxne lr
_020637C0:
	mov r0, #0
	bx lr
	arm_func_end sub_0206379C
