/* 802B299C 002AF8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B29A0 002AF8E0  7C 08 02 A6 */	mflr r0
/* 802B29A4 002AF8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B29A8 002AF8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B29AC 002AF8EC  93 C1 00 08 */	stw r30, 8(r1)
/* 802B29B0 002AF8F0  7C 7E 1B 78 */	mr r30, r3
/* 802B29B4 002AF8F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802B29B8 002AF8F8  41 82 00 84 */	beq lbl_802B2A3C
/* 802B29BC 002AF8FC  3B E0 00 00 */	li r31, 0
/* 802B29C0 002AF900  88 1E 00 BD */	lbz r0, 0xbd(r30)
/* 802B29C4 002AF904  28 00 00 03 */	cmplwi r0, 3
/* 802B29C8 002AF908  40 82 00 10 */	bne lbl_802B29D8
/* 802B29CC 002AF90C  3B E0 00 2D */	li r31, 0x2d
/* 802B29D0 002AF910  38 00 00 01 */	li r0, 1
/* 802B29D4 002AF914  98 1E 00 BD */	stb r0, 0xbd(r30)
lbl_802B29D8:
/* 802B29D8 002AF918  7F C3 F3 78 */	mr r3, r30
/* 802B29DC 002AF91C  38 9E 00 04 */	addi r4, r30, 4
/* 802B29E0 002AF920  38 A0 00 08 */	li r5, 8
/* 802B29E4 002AF924  C0 22 BF 9C */	lfs f1, lbl_8045599C-_SDA2_BASE_(r2)
/* 802B29E8 002AF928  7F E6 FB 78 */	mr r6, r31
/* 802B29EC 002AF92C  C0 42 BF B4 */	lfs f2, lbl_804559B4-_SDA2_BASE_(r2)
/* 802B29F0 002AF930  FC 60 10 90 */	fmr f3, f2
/* 802B29F4 002AF934  48 00 15 F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B29F8 002AF938  7F C3 F3 78 */	mr r3, r30
/* 802B29FC 002AF93C  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A00 002AF940  38 A0 00 09 */	li r5, 9
/* 802B2A04 002AF944  C0 22 BF 9C */	lfs f1, lbl_8045599C-_SDA2_BASE_(r2)
/* 802B2A08 002AF948  7F E6 FB 78 */	mr r6, r31
/* 802B2A0C 002AF94C  C0 42 BF B4 */	lfs f2, lbl_804559B4-_SDA2_BASE_(r2)
/* 802B2A10 002AF950  FC 60 10 90 */	fmr f3, f2
/* 802B2A14 002AF954  48 00 15 D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2A18 002AF958  7F C3 F3 78 */	mr r3, r30
/* 802B2A1C 002AF95C  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A20 002AF960  38 A0 00 0A */	li r5, 0xa
/* 802B2A24 002AF964  C0 22 BF 9C */	lfs f1, lbl_8045599C-_SDA2_BASE_(r2)
/* 802B2A28 002AF968  7F E6 FB 78 */	mr r6, r31
/* 802B2A2C 002AF96C  C0 42 BF B4 */	lfs f2, lbl_804559B4-_SDA2_BASE_(r2)
/* 802B2A30 002AF970  FC 60 10 90 */	fmr f3, f2
/* 802B2A34 002AF974  48 00 15 B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2A38 002AF978  48 00 00 20 */	b lbl_802B2A58
lbl_802B2A3C:
/* 802B2A3C 002AF97C  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A40 002AF980  38 A0 00 00 */	li r5, 0
/* 802B2A44 002AF984  C0 22 BF 98 */	lfs f1, lbl_80455998-_SDA2_BASE_(r2)
/* 802B2A48 002AF988  38 C0 00 00 */	li r6, 0
/* 802B2A4C 002AF98C  C0 42 BF B4 */	lfs f2, lbl_804559B4-_SDA2_BASE_(r2)
/* 802B2A50 002AF990  FC 60 10 90 */	fmr f3, f2
/* 802B2A54 002AF994  48 00 15 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B2A58:
/* 802B2A58 002AF998  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802B2A5C 002AF99C  38 63 07 28 */	addi r3, r3, 0x728
/* 802B2A60 002AF9A0  4B FE F2 31 */	bl calc__9JAISeqMgrFv
/* 802B2A64 002AF9A4  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802B2A68 002AF9A8  38 63 07 28 */	addi r3, r3, 0x728
/* 802B2A6C 002AF9AC  4B FE F4 91 */	bl mixOut__9JAISeqMgrFv
/* 802B2A70 002AF9B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B2A74 002AF9B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B2A78 002AF9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B2A7C 002AF9BC  7C 08 03 A6 */	mtlr r0
/* 802B2A80 002AF9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B2A84 002AF9C4  4E 80 00 20 */	blr 