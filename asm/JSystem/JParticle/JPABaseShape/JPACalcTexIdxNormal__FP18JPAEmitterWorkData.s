lbl_802779DC:
/* 802779DC  80 83 00 04 */	lwz r4, 4(r3)
/* 802779E0  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 802779E4  80 85 00 00 */	lwz r4, 0(r5)
/* 802779E8  88 84 00 1F */	lbz r4, 0x1f(r4)
/* 802779EC  38 04 FF FF */	addi r0, r4, -1
/* 802779F0  80 C3 00 00 */	lwz r6, 0(r3)
/* 802779F4  80 86 01 00 */	lwz r4, 0x100(r6)
/* 802779F8  7C 00 20 40 */	cmplw r0, r4
/* 802779FC  40 80 00 08 */	bge lbl_80277A04
/* 80277A00  7C 04 03 78 */	mr r4, r0
lbl_80277A04:
/* 80277A04  80 65 00 08 */	lwz r3, 8(r5)
/* 80277A08  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80277A0C  7C 03 00 AE */	lbzx r0, r3, r0
/* 80277A10  98 06 01 11 */	stb r0, 0x111(r6)
/* 80277A14  4E 80 00 20 */	blr 