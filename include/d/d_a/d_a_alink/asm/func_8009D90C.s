/* 8009D90C 0009A84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009D910 0009A850  7C 08 02 A6 */	mflr r0
/* 8009D914 0009A854  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009D918 0009A858  39 61 00 20 */	addi r11, r1, 0x20
/* 8009D91C 0009A85C  48 2C 48 BD */	bl _savegpr_28
/* 8009D920 0009A860  7C 7E 1B 78 */	mr r30, r3
/* 8009D924 0009A864  7C 9F 23 78 */	mr r31, r4
/* 8009D928 0009A868  48 28 EA 9D */	bl calc__14J3DMaterialAnmCFP11J3DMaterial
/* 8009D92C 0009A86C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009D930 0009A870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009D934 0009A874  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8009D938 0009A878  80 03 05 78 */	lwz r0, 0x578(r3)
/* 8009D93C 0009A87C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8009D940 0009A880  40 82 01 08 */	bne lbl_8009DA48
/* 8009D944 0009A884  3B 80 00 00 */	li r28, 0
/* 8009D948 0009A888  3B A0 00 00 */	li r29, 0
lbl_8009D94C:
/* 8009D94C 0009A88C  38 7D 00 14 */	addi r3, r29, 0x14
/* 8009D950 0009A890  7C 7E 1A 14 */	add r3, r30, r3
/* 8009D954 0009A894  A0 03 00 02 */	lhz r0, 2(r3)
/* 8009D958 0009A898  28 00 00 00 */	cmplwi r0, 0
/* 8009D95C 0009A89C  41 82 00 DC */	beq lbl_8009DA38
/* 8009D960 0009A8A0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8009D964 0009A8A4  7F 84 E3 78 */	mr r4, r28
/* 8009D968 0009A8A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8009D96C 0009A8AC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8009D970 0009A8B0  7D 89 03 A6 */	mtctr r12
/* 8009D974 0009A8B4  4E 80 04 21 */	bctrl 
/* 8009D978 0009A8B8  88 8D 8A 49 */	lbz r4, lbl_80450FC9-_SDA_BASE_(r13)
/* 8009D97C 0009A8BC  28 04 00 00 */	cmplwi r4, 0
/* 8009D980 0009A8C0  41 82 00 8C */	beq lbl_8009DA0C
/* 8009D984 0009A8C4  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 8009D988 0009A8C8  2C 00 00 00 */	cmpwi r0, 0
/* 8009D98C 0009A8CC  40 82 00 6C */	bne lbl_8009D9F8
/* 8009D990 0009A8D0  C0 42 92 B8 */	lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8009D994 0009A8D4  38 04 00 01 */	addi r0, r4, 1
/* 8009D998 0009A8D8  C8 22 92 B0 */	lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8009D99C 0009A8DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009D9A0 0009A8E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009D9A4 0009A8E4  3C 00 43 30 */	lis r0, 0x4330
/* 8009D9A8 0009A8E8  90 01 00 08 */	stw r0, 8(r1)
/* 8009D9AC 0009A8EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8009D9B0 0009A8F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009D9B4 0009A8F4  EC 62 00 24 */	fdivs f3, f2, f0
/* 8009D9B8 0009A8F8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8009D9BC 0009A8FC  EC 42 18 28 */	fsubs f2, f2, f3
/* 8009D9C0 0009A900  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8009D9C4 0009A904  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009D9C8 0009A908  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8009D9CC 0009A90C  EC 01 00 2A */	fadds f0, f1, f0
/* 8009D9D0 0009A910  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009D9D4 0009A914  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8009D9D8 0009A918  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8009D9DC 0009A91C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8009D9E0 0009A920  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8009D9E4 0009A924  EC 01 00 2A */	fadds f0, f1, f0
/* 8009D9E8 0009A928  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8009D9EC 0009A92C  38 00 00 01 */	li r0, 1
/* 8009D9F0 0009A930  90 1E 01 04 */	stw r0, 0x104(r30)
/* 8009D9F4 0009A934  48 00 00 34 */	b lbl_8009DA28
lbl_8009D9F8:
/* 8009D9F8 0009A938  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8009D9FC 0009A93C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009DA00 0009A940  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8009DA04 0009A944  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8009DA08 0009A948  48 00 00 20 */	b lbl_8009DA28
lbl_8009DA0C:
/* 8009DA0C 0009A94C  88 0D 8A 48 */	lbz r0, lbl_80450FC8-_SDA_BASE_(r13)
/* 8009DA10 0009A950  28 00 00 00 */	cmplwi r0, 0
/* 8009DA14 0009A954  41 82 00 14 */	beq lbl_8009DA28
/* 8009DA18 0009A958  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8009DA1C 0009A95C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009DA20 0009A960  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8009DA24 0009A964  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_8009DA28:
/* 8009DA28 0009A968  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009DA2C 0009A96C  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 8009DA30 0009A970  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8009DA34 0009A974  D0 1E 00 F8 */	stfs f0, 0xf8(r30)
lbl_8009DA38:
/* 8009DA38 0009A978  3B 9C 00 01 */	addi r28, r28, 1
/* 8009DA3C 0009A97C  28 1C 00 08 */	cmplwi r28, 8
/* 8009DA40 0009A980  3B BD 00 08 */	addi r29, r29, 8
/* 8009DA44 0009A984  41 80 FF 08 */	blt lbl_8009D94C
lbl_8009DA48:
/* 8009DA48 0009A988  39 61 00 20 */	addi r11, r1, 0x20
/* 8009DA4C 0009A98C  48 2C 47 D9 */	bl _restgpr_28
/* 8009DA50 0009A990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009DA54 0009A994  7C 08 03 A6 */	mtlr r0
/* 8009DA58 0009A998  38 21 00 20 */	addi r1, r1, 0x20
/* 8009DA5C 0009A99C  4E 80 00 20 */	blr 