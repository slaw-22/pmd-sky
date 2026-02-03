	arm_func_start SetActorTalkMainAndActorTalkSub
SetActorTalkMainAndActorTalkSub: ; 0x02065B3C
	ldr r2, _02065B4C ; =_020B0B08
	strh r0, [r2, #0x18]
	strh r1, [r2, #0x16]
	bx lr
	.align 2, 0
_02065B4C: .word _020B0B08
	arm_func_end SetActorTalkMainAndActorTalkSub
