lbl_809567C0:
/* 809567C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809567C4  7C 08 02 A6 */	mflr r0
/* 809567C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809567CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809567D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809567D4  41 82 00 1C */	beq lbl_809567F0
/* 809567D8  3C A0 80 96 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 809567DC  38 05 80 14 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 809567E0  90 1F 00 04 */	stw r0, 4(r31)
/* 809567E4  7C 80 07 35 */	extsh. r0, r4
/* 809567E8  40 81 00 08 */	ble lbl_809567F0
/* 809567EC  4B 97 85 50 */	b __dl__FPv
lbl_809567F0:
/* 809567F0  7F E3 FB 78 */	mr r3, r31
/* 809567F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809567F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809567FC  7C 08 03 A6 */	mtlr r0
/* 80956800  38 21 00 10 */	addi r1, r1, 0x10
/* 80956804  4E 80 00 20 */	blr 