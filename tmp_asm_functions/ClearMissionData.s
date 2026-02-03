	arm_func_start ClearMissionData
ClearMissionData: ; 0x0205F9B8
	mov r2, #0
	strb r2, [r0]
	mov r1, #0xff
	strb r1, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #0x16]
	bx lr
	arm_func_end ClearMissionData
