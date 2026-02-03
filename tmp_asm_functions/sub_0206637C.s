	arm_func_start sub_0206637C
sub_0206637C: ; 0x0206637C
	stmdb sp!, {r3, lr}
	mov r0, #1
	bl OverlayIsLoaded
	cmp r0, #0
	beq _0206639C
	mov r0, #3
	bl ov00_022BE0C8
	ldmia sp!, {r3, pc}
_0206639C:
	mov r0, #1
	bl LoadOverlay
	mov r0, #4
	bl LoadOverlay
	mov r0, #3
	bl ov00_022BE0C8
	mov r0, #4
	bl UnloadOverlay
	mov r0, #1
	bl UnloadOverlay
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206637C
