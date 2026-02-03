	arm_func_start sub_02060E24
sub_02060E24: ; 0x02060E24
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x400
	mov r1, #0xf
	bl MemAlloc
	mov r4, r0
	ldr r1, _02060EA0 ; =_020A4654
	mov r0, r5
	bl strcpy
	ldr r1, _02060EA4 ; =_020A4664
	mov r0, r5
	bl strcat
	ldr r1, _02060EA8 ; =REMOTE_STRING_PTR_TABLE
	mov r0, r4
	ldr r1, [r1, #8]
	bl SprintfStatic__020609E8
	mov r0, r5
	mov r1, r4
	bl strcat
	ldr r1, _02060EAC ; =_020A4644
	mov r0, r5
	bl strcat
	mov r0, r4
	ldr r1, _02060EB0 ; =0x00003C4D
	bl GetStringFromFileVeneer
	mov r0, r5
	mov r1, r4
	bl strcat
	mov r0, r4
	bl MemFree
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02060EA0: .word _020A4654
_02060EA4: .word _020A4664
_02060EA8: .word REMOTE_STRING_PTR_TABLE
_02060EAC: .word _020A4644
#if defined(EUROPE)
_02060EB0: .word 0x00003C4F
#elif defined(JAPAN)
_02060EB0: .word 0x0000388B
#else
_02060EB0: .word 0x00003C4D
#endif
	arm_func_end sub_02060E24
