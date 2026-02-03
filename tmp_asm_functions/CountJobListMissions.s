	.include "../asm/macros/function.inc"
	.text
.public MISSION_DELIVER_LIST_PTR
.public sub_0205E448

	arm_func_start CountJobListMissions
CountJobListMissions: ; 0x0205ED84
	ldr r1, _0205ED9C ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205EDA0 ; =sub_0205E448
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205ED9C: .word MISSION_DELIVER_LIST_PTR
_0205EDA0: .word sub_0205E448
	arm_func_end CountJobListMissions
