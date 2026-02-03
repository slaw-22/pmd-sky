	arm_func_start sub_0205F464
sub_0205F464: ; 0x0205F464
	stmdb sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #0
	bl GetMissionByTypeAndDungeon
	cmp r0, #0
	ldrge r1, _0205F4A0 ; =MISSION_DELIVER_LIST_PTR
	movlt r0, #0
	ldrge r1, [r1, #0x18]
	movge r0, r0, lsl #0x18
	addge r1, r1, #0x100
	addge r0, r1, r0, asr #19
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205F4A0: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205F464
