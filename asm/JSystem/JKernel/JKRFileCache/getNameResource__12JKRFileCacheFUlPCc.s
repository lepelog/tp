lbl_802D56F4:
/* 802D56F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D56F8  7C 08 02 A6 */	mflr r0
/* 802D56FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5700  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5704  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D5708  7D 89 03 A6 */	mtctr r12
/* 802D570C  4E 80 04 21 */	bctrl 
/* 802D5710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5714  7C 08 03 A6 */	mtlr r0
/* 802D5718  38 21 00 10 */	addi r1, r1, 0x10
/* 802D571C  4E 80 00 20 */	blr 