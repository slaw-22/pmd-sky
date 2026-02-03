	arm_func_start sub_02069750
sub_02069750: ; 0x02069750
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr r1, _0206978C ; =0x00003814
	mov r4, r0
	add r0, sp, #0
	bl GetStringFromFileVeneer
	add r3, sp, #0
	mov r0, r4
	mov r1, #0
	mov r2, #3
	bl DrawTextInWindow
	mov r0, r4
	bl UpdateWindow
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	.align 2, 0
#if defined(EUROPE)
_0206978C: .word 0x00003816
#elif defined(JAPAN)
_0206978C: .word 0x00003452
#else
_0206978C: .word 0x00003814
#endif
	arm_func_end sub_02069750
