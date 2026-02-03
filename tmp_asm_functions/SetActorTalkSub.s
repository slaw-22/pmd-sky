	arm_func_start SetActorTalkSub
SetActorTalkSub: ; 0x02065B60
	ldr r1, _02065B6C ; =_020B0B08
	strh r0, [r1, #0x16]
	bx lr
	.align 2, 0
_02065B6C: .word _020B0B08
	arm_func_end SetActorTalkSub
