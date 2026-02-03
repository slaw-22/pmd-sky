	arm_func_start sub_02067584
sub_02067584: ; 0x02067584
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x40
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _02067658
_02067598: ; jump table
	b _020675E8 ; case 0
	b _020675E8 ; case 1
	b _020675E8 ; case 2
	b _020675E8 ; case 3
	b _020675E8 ; case 4
	b _020675E8 ; case 5
	b _020675E8 ; case 6
	b _020675E8 ; case 7
	b _02067658 ; case 8
	b _020675E8 ; case 9
	b _020675E8 ; case 10
	b _020675E8 ; case 11
	b _020675E8 ; case 12
	b _020675E8 ; case 13
	b _02067638 ; case 14
	b _02067638 ; case 15
	b _02067638 ; case 16
	b _02067604 ; case 17
	b _020675E8 ; case 18
	b _02067650 ; case 19
_020675E8:
	add r1, sp, #0
	bl sub_02068390
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067604:
	bl sub_0204E210
	cmp r0, #1
	bne _02067638
	bl CountJobListMissions
	mov r4, r0
	bl GetAdventureLogDungeonFloor
	ldrb r0, [r0]
	bl DungeonRequestsDoneWrapper
	subs r0, r4, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067638:
	bl CountJobListMissions
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _0206765C
_02067650:
	mov r0, #0
	b _0206765C
_02067658:
	mov r0, #1
_0206765C:
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	arm_func_end sub_02067584
