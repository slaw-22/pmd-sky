	arm_func_start CopyTacticString
CopyTacticString: ; 0x0205A430
	ldr r2, _0205A448 ; =TACTIC_NAME_STRING_IDS
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	ldr ip, _0205A44C ; =CopyNStringFromId
#ifdef JAPAN
	mov r2, #0x28
#else
	mov r2, #0x40
#endif
	bx ip
	.align 2, 0
_0205A448: .word TACTIC_NAME_STRING_IDS
_0205A44C: .word CopyNStringFromId
	arm_func_end CopyTacticString
