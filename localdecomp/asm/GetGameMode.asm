	.include "../../asm/macros/function.inc"
	.text

.public GAME_MODE

	arm_func_start GetGameMode
GetGameMode:
    ldr r0, [pc, #4]
    ldrb r0, [r0]
    bx lr
_0204AFCC: .word GAME_MODE
    arm_func_end GetGameMode