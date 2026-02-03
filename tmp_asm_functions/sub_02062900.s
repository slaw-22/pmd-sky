	arm_func_start sub_02062900
sub_02062900: ; 0x02062900
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r4, r2
	ldr r1, _02062940 ; =_020A3CA0
	add r0, sp, #0
	mov r2, #6
	bl MemcpySimple
	add r3, sp, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_02062944
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02062940: .word _020A3CA0
	arm_func_end sub_02062900
