	arm_func_start CanMonsterBeUsedForMissionWrapper
CanMonsterBeUsedForMissionWrapper: ; 0x02062A58
	ldr ip, _02062A64 ; =CanMonsterBeUsedForMission
	mov r1, #1
	bx ip
	.align 2, 0
_02062A64: .word CanMonsterBeUsedForMission
	arm_func_end CanMonsterBeUsedForMissionWrapper
