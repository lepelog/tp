/* 80033828 00030768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003382C 0003076C  7C 08 02 A6 */	mflr r0
/* 80033830 00030770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033834 00030774  39 61 00 20 */	addi r11, r1, 0x20
/* 80033838 00030778  48 32 E9 A5 */	bl _savegpr_29
/* 8003383C 0003077C  7C BE 2B 78 */	mr r30, r5
/* 80033840 00030780  7C DD 33 78 */	mr r29, r6
/* 80033844 00030784  3B E0 00 00 */	li r31, 0
/* 80033848 00030788  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8003384C 0003078C  38 00 00 03 */	li r0, 3
/* 80033850 00030790  7C 09 03 A6 */	mtctr r0
lbl_80033854:
/* 80033854 00030794  38 9F 00 0F */	addi r4, r31, 0xf
/* 80033858 00030798  7C 03 20 AE */	lbzx r0, r3, r4
/* 8003385C 0003079C  7C 05 00 40 */	cmplw r5, r0
/* 80033860 000307A0  40 82 00 90 */	bne lbl_800338F0
/* 80033864 000307A4  7F C5 F3 78 */	mr r5, r30
/* 80033868 000307A8  4B FF F7 51 */	bl setItem__17dSv_player_item_cFiUc
/* 8003386C 000307AC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033870 000307B0  28 00 00 01 */	cmplwi r0, 1
/* 80033874 000307B4  40 82 00 3C */	bne lbl_800338B0
/* 80033878 000307B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8003387C 000307BC  28 00 00 50 */	cmplwi r0, 0x50
/* 80033880 000307C0  41 82 00 30 */	beq lbl_800338B0
/* 80033884 000307C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033888 000307C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003388C 000307CC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 80033890 000307D0  7F C4 F3 78 */	mr r4, r30
/* 80033894 000307D4  48 00 08 65 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 80033898 000307D8  7C 65 1B 78 */	mr r5, r3
/* 8003389C 000307DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800338A0 000307E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800338A4 000307E4  38 63 00 EC */	addi r3, r3, 0xec
/* 800338A8 000307E8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800338AC 000307EC  48 00 06 C1 */	bl setBombNum__24dSv_player_item_record_cFUcUc
lbl_800338B0:
/* 800338B0 000307F0  3B A0 00 00 */	li r29, 0
/* 800338B4 000307F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800338B8 000307F8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 800338BC 000307FC  3B FF 00 0F */	addi r31, r31, 0xf
lbl_800338C0:
/* 800338C0 00030800  7F C3 F3 78 */	mr r3, r30
/* 800338C4 00030804  7F A4 EB 78 */	mr r4, r29
/* 800338C8 00030808  4B FF F1 95 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800338CC 0003080C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800338D0 00030810  7C 1F 00 00 */	cmpw r31, r0
/* 800338D4 00030814  40 82 00 0C */	bne lbl_800338E0
/* 800338D8 00030818  7F A3 EB 78 */	mr r3, r29
/* 800338DC 0003081C  4B FF A5 19 */	bl dComIfGp_setSelectItem__Fi
lbl_800338E0:
/* 800338E0 00030820  3B BD 00 01 */	addi r29, r29, 1
/* 800338E4 00030824  2C 1D 00 03 */	cmpwi r29, 3
/* 800338E8 00030828  41 80 FF D8 */	blt lbl_800338C0
/* 800338EC 0003082C  48 00 00 0C */	b lbl_800338F8
lbl_800338F0:
/* 800338F0 00030830  3B FF 00 01 */	addi r31, r31, 1
/* 800338F4 00030834  42 00 FF 60 */	bdnz lbl_80033854
lbl_800338F8:
/* 800338F8 00030838  39 61 00 20 */	addi r11, r1, 0x20
/* 800338FC 0003083C  48 32 E9 2D */	bl _restgpr_29
/* 80033900 00030840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033904 00030844  7C 08 03 A6 */	mtlr r0
/* 80033908 00030848  38 21 00 20 */	addi r1, r1, 0x20
/* 8003390C 0003084C  4E 80 00 20 */	blr 