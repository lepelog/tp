lbl_80305D18:
/* 80305D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80305D1C  7C 08 02 A6 */	mflr r0
/* 80305D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80305D24  39 61 00 20 */	addi r11, r1, 0x20
/* 80305D28  48 05 C4 B5 */	bl _savegpr_29
/* 80305D2C  7C 7D 1B 78 */	mr r29, r3
/* 80305D30  3B C0 00 00 */	li r30, 0
/* 80305D34  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 80305D38  48 00 00 64 */	b lbl_80305D9C
lbl_80305D3C:
/* 80305D3C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80305D40  28 04 00 04 */	cmplwi r4, 4
/* 80305D44  40 80 00 2C */	bge lbl_80305D70
/* 80305D48  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 80305D4C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80305D50  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 80305D54  20 00 00 1D */	subfic r0, r0, 0x1d
/* 80305D58  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80305D5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80305D60  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80305D64  7D 89 03 A6 */	mtctr r12
/* 80305D68  4E 80 04 21 */	bctrl 
/* 80305D6C  48 00 00 2C */	b lbl_80305D98
lbl_80305D70:
/* 80305D70  80 7D 01 50 */	lwz r3, 0x150(r29)
/* 80305D74  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80305D78  38 04 FF FC */	addi r0, r4, -4
/* 80305D7C  54 00 10 3A */	slwi r0, r0, 2
/* 80305D80  20 00 00 1C */	subfic r0, r0, 0x1c
/* 80305D84  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80305D88  81 83 00 00 */	lwz r12, 0(r3)
/* 80305D8C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80305D90  7D 89 03 A6 */	mtctr r12
/* 80305D94  4E 80 04 21 */	bctrl 
lbl_80305D98:
/* 80305D98  3B DE 00 01 */	addi r30, r30, 1
lbl_80305D9C:
/* 80305D9C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80305DA0  7C 00 F8 40 */	cmplw r0, r31
/* 80305DA4  41 80 FF 98 */	blt lbl_80305D3C
/* 80305DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80305DAC  48 05 C4 7D */	bl _restgpr_29
/* 80305DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80305DB4  7C 08 03 A6 */	mtlr r0
/* 80305DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80305DBC  4E 80 00 20 */	blr 