/* create__10JKRExpHeapFPvUlP7JKRHeapb __ct__10JKRExpHeapFPvUlP7JKRHeapb::create(void *, unsigned long, JKRHeap *, bool) */
/* JKRExpHeap_NS_create_X1_ */
/* 802CEF00 002CBE40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CEF04 002CBE44  7C 08 02 A6 */	mflr r0
/* 802CEF08 002CBE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CEF0C 002CBE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CEF10 002CBE50  48 09 32 CD */	bl _savegpr_29
/* 802CEF14 002CBE54  7C 7D 1B 78 */	mr r29, r3
/* 802CEF18 002CBE58  7C 9E 23 78 */	mr r30, r4
/* 802CEF1C 002CBE5C  7C DF 33 78 */	mr r31, r6
/* 802CEF20 002CBE60  28 05 00 00 */	cmplwi r5, 0
/* 802CEF24 002CBE64  40 82 00 20 */	bne lbl_802CEF44
/* 802CEF28 002CBE68  80 6D 8D F8 */	lwz r3, lbl_80451378-_SDA_BASE_(r13)
/* 802CEF2C 002CBE6C  7F A4 EB 78 */	mr r4, r29
/* 802CEF30 002CBE70  4B FF F9 65 */	bl find__7JKRHeapCFPv
/* 802CEF34 002CBE74  7C 66 1B 79 */	or. r6, r3, r3
/* 802CEF38 002CBE78  40 82 00 10 */	bne lbl_802CEF48
/* 802CEF3C 002CBE7C  38 60 00 00 */	li r3, 0
/* 802CEF40 002CBE80  48 00 00 54 */	b lbl_802CEF94
lbl_802CEF44:
/* 802CEF44 002CBE84  7C A6 2B 78 */	mr r6, r5
lbl_802CEF48:
/* 802CEF48 002CBE88  38 60 00 00 */	li r3, 0
/* 802CEF4C 002CBE8C  28 1E 00 90 */	cmplwi r30, 0x90
/* 802CEF50 002CBE90  40 80 00 0C */	bge lbl_802CEF5C
/* 802CEF54 002CBE94  38 60 00 00 */	li r3, 0
/* 802CEF58 002CBE98  48 00 00 3C */	b lbl_802CEF94
lbl_802CEF5C:
/* 802CEF5C 002CBE9C  38 9D 00 90 */	addi r4, r29, 0x90
/* 802CEF60 002CBEA0  7C 1D F2 14 */	add r0, r29, r30
/* 802CEF64 002CBEA4  7C 04 00 50 */	subf r0, r4, r0
/* 802CEF68 002CBEA8  54 05 00 36 */	rlwinm r5, r0, 0, 0, 0x1b
/* 802CEF6C 002CBEAC  28 1D 00 00 */	cmplwi r29, 0
/* 802CEF70 002CBEB0  41 82 00 14 */	beq lbl_802CEF84
/* 802CEF74 002CBEB4  7F A3 EB 78 */	mr r3, r29
/* 802CEF78 002CBEB8  41 82 00 0C */	beq lbl_802CEF84
/* 802CEF7C 002CBEBC  7F E7 FB 78 */	mr r7, r31
/* 802CEF80 002CBEC0  48 00 00 B1 */	bl __ct__10JKRExpHeapFPvUlP7JKRHeapb
lbl_802CEF84:
/* 802CEF84 002CBEC4  38 00 00 01 */	li r0, 1
/* 802CEF88 002CBEC8  98 03 00 6E */	stb r0, 0x6e(r3)
/* 802CEF8C 002CBECC  93 A3 00 70 */	stw r29, 0x70(r3)
/* 802CEF90 002CBED0  93 C3 00 74 */	stw r30, 0x74(r3)
lbl_802CEF94:
/* 802CEF94 002CBED4  39 61 00 20 */	addi r11, r1, 0x20
/* 802CEF98 002CBED8  48 09 32 91 */	bl _restgpr_29
/* 802CEF9C 002CBEDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CEFA0 002CBEE0  7C 08 03 A6 */	mtlr r0
/* 802CEFA4 002CBEE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802CEFA8 002CBEE8  4E 80 00 20 */	blr