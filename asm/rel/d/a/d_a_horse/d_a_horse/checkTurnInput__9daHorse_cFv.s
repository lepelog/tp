lbl_80840844:
/* 80840844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80840848  7C 08 02 A6 */	mflr r0
/* 8084084C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80840850  39 61 00 20 */	addi r11, r1, 0x20
/* 80840854  4B B2 19 84 */	b _savegpr_28
/* 80840858  3B E0 00 00 */	li r31, 0
/* 8084085C  C0 23 17 58 */	lfs f1, 0x1758(r3)
/* 80840860  3C 60 80 84 */	lis r3, lit_8963@ha
/* 80840864  C0 03 57 98 */	lfs f0, lit_8963@l(r3)
/* 80840868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084086C  40 81 00 68 */	ble lbl_808408D4
/* 80840870  3B C0 00 01 */	li r30, 1
/* 80840874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80840878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084087C  3B A3 56 B8 */	addi r29, r3, 0x56b8
/* 80840880  7F DC F3 78 */	mr r28, r30
/* 80840884  7F A3 EB 78 */	mr r3, r29
/* 80840888  4B 83 2F 5C */	b LockonTruth__12dAttention_cFv
/* 8084088C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80840890  40 82 00 14 */	bne lbl_808408A4
/* 80840894  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 80840898  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8084089C  40 82 00 08 */	bne lbl_808408A4
/* 808408A0  3B 80 00 00 */	li r28, 0
lbl_808408A4:
/* 808408A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 808408A8  41 82 00 20 */	beq lbl_808408C8
/* 808408AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808408B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808408B4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 808408B8  80 03 27 EC */	lwz r0, 0x27ec(r3)
/* 808408BC  28 00 00 00 */	cmplwi r0, 0
/* 808408C0  40 82 00 08 */	bne lbl_808408C8
/* 808408C4  3B C0 00 00 */	li r30, 0
lbl_808408C8:
/* 808408C8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 808408CC  41 82 00 08 */	beq lbl_808408D4
/* 808408D0  3B E0 00 01 */	li r31, 1
lbl_808408D4:
/* 808408D4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 808408D8  39 61 00 20 */	addi r11, r1, 0x20
/* 808408DC  4B B2 19 48 */	b _restgpr_28
/* 808408E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808408E4  7C 08 03 A6 */	mtlr r0
/* 808408E8  38 21 00 20 */	addi r1, r1, 0x20
/* 808408EC  4E 80 00 20 */	blr 