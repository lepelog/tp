lbl_8028869C:
/* 8028869C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802886A0  7C 08 02 A6 */	mflr r0
/* 802886A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802886A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802886AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802886B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802886B4  7C 9F 23 78 */	mr r31, r4
/* 802886B8  41 82 00 28 */	beq lbl_802886E0
/* 802886BC  3C 80 80 3C */	lis r4, data_803C5670@ha
/* 802886C0  38 04 56 70 */	addi r0, r4, data_803C5670@l
/* 802886C4  90 1E 00 00 */	stw r0, 0(r30)
/* 802886C8  38 80 00 00 */	li r4, 0
/* 802886CC  4B FF D7 41 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 802886D0  7F E0 07 35 */	extsh. r0, r31
/* 802886D4  40 81 00 0C */	ble lbl_802886E0
/* 802886D8  7F C3 F3 78 */	mr r3, r30
/* 802886DC  48 04 66 61 */	bl __dl__FPv
lbl_802886E0:
/* 802886E0  7F C3 F3 78 */	mr r3, r30
/* 802886E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802886E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802886EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802886F0  7C 08 03 A6 */	mtlr r0
/* 802886F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802886F8  4E 80 00 20 */	blr 