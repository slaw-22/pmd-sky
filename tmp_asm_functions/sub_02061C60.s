	arm_func_start sub_02061C60
sub_02061C60: ; 0x02061C60
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _02061CBC ; =0x00003C1E
	mov r4, r1
	mov r1, #4
	mov r2, #0
	mov r5, r0
	bl sub_02026268
	ldr r3, _02061CC0 ; =_020A46A8
	mov r0, r5
	mov r1, #0x6c
	mov r2, #1
	bl DrawTextInWindow
	ldr r3, _02061CC4 ; =0x00003C4E
	mov r0, r5
	mov r1, #4
	mov r2, #0x11
	bl sub_02026268
	mov r0, r5
	mov r2, r4
	mov r1, #1
	mov r3, #0x7b
	bl sub_02061CC8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
#if defined(EUROPE)
#define SUB_02061C60_OFFSET 2
#elif defined(JAPAN)
#define SUB_02061C60_OFFSET -0x3C2
#else
#define SUB_02061C60_OFFSET 0
#endif
_02061CBC: .word 0x00003C1E + SUB_02061C60_OFFSET
_02061CC0: .word _020A46A8
_02061CC4: .word 0x00003C4E + SUB_02061C60_OFFSET
	arm_func_end sub_02061C60
