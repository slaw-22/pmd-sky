	arm_func_start sub_020696E8
sub_020696E8: ; 0x020696E8
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x154
	mov r4, r0
	add r0, sp, #0x104
	bl InitPreprocessorArgs
	bl CountJobListMissions
	str r0, [sp, #0x128]
	mov r0, #8
	str r0, [sp, #0x12c]
	add r3, sp, #0x104
	str r3, [sp]
	ldr r2, _0206974C ; =0x00003813
	add r0, sp, #4
	mov r1, #0x100
	mov r3, #0
	bl PreprocessStringFromId
	mov r0, r4
	mov r1, #0
	mov r2, #3
	add r3, sp, #4
	bl DrawTextInWindow
	mov r0, r4
	bl UpdateWindow
	add sp, sp, #0x154
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
#if defined(EUROPE)
_0206974C: .word 0x00003815
#elif defined(JAPAN)
_0206974C: .word 0x00003451
#else
_0206974C: .word 0x00003813
#endif
	arm_func_end sub_020696E8
