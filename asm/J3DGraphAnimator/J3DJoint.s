.include "macros.inc"

.section .text, "ax" # 8032ec28


.global init__25J3DMtxCalcJ3DSysInitBasicFRC3VecRA3_A4_Cf
init__25J3DMtxCalcJ3DSysInitBasicFRC3VecRA3_A4_Cf:
/* 8032EC28 0032BB68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EC2C 0032BB6C  7C 08 02 A6 */	mflr r0
/* 8032EC30 0032BB70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EC34 0032BB74  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032EC38 0032BB78  3C A0 80 43 */	lis r5, lbl_80434C14@ha
/* 8032EC3C 0032BB7C  D4 25 4C 14 */	stfsu f1, lbl_80434C14@l(r5)
/* 8032EC40 0032BB80  C0 43 00 04 */	lfs f2, 4(r3)
/* 8032EC44 0032BB84  D0 45 00 04 */	stfs f2, 4(r5)
/* 8032EC48 0032BB88  C0 63 00 08 */	lfs f3, 8(r3)
/* 8032EC4C 0032BB8C  D0 65 00 08 */	stfs f3, 8(r5)
/* 8032EC50 0032BB90  3C 60 80 3A */	lis r3, lbl_803A2068@ha
/* 8032EC54 0032BB94  38 A3 20 68 */	addi r5, r3, lbl_803A2068@l
/* 8032EC58 0032BB98  80 65 00 00 */	lwz r3, 0(r5)
/* 8032EC5C 0032BB9C  80 05 00 04 */	lwz r0, 4(r5)
/* 8032EC60 0032BBA0  90 61 00 08 */	stw r3, 8(r1)
/* 8032EC64 0032BBA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032EC68 0032BBA8  80 05 00 08 */	lwz r0, 8(r5)
/* 8032EC6C 0032BBAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032EC70 0032BBB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8032EC74 0032BBB4  3C 60 80 43 */	lis r3, lbl_80434C20@ha
/* 8032EC78 0032BBB8  D4 03 4C 20 */	stfsu f0, lbl_80434C20@l(r3)
/* 8032EC7C 0032BBBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032EC80 0032BBC0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032EC84 0032BBC4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032EC88 0032BBC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032EC8C 0032BBCC  7C 83 23 78 */	mr r3, r4
/* 8032EC90 0032BBD0  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8032EC94 0032BBD4  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8032EC98 0032BBD8  48 00 AD ED */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EC9C 0032BBDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032ECA0 0032BBE0  7C 08 03 A6 */	mtlr r0
/* 8032ECA4 0032BBE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032ECA8 0032BBE8  4E 80 00 20 */	blr 

.global init__24J3DMtxCalcJ3DSysInitMayaFRC3VecRA3_A4_Cf
init__24J3DMtxCalcJ3DSysInitMayaFRC3VecRA3_A4_Cf:
/* 8032ECAC 0032BBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032ECB0 0032BBF0  7C 08 02 A6 */	mflr r0
/* 8032ECB4 0032BBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032ECB8 0032BBF8  3C A0 80 3A */	lis r5, lbl_803A2074@ha
/* 8032ECBC 0032BBFC  38 C5 20 74 */	addi r6, r5, lbl_803A2074@l
/* 8032ECC0 0032BC00  80 A6 00 00 */	lwz r5, 0(r6)
/* 8032ECC4 0032BC04  80 06 00 04 */	lwz r0, 4(r6)
/* 8032ECC8 0032BC08  90 A1 00 08 */	stw r5, 8(r1)
/* 8032ECCC 0032BC0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032ECD0 0032BC10  80 06 00 08 */	lwz r0, 8(r6)
/* 8032ECD4 0032BC14  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032ECD8 0032BC18  C0 01 00 08 */	lfs f0, 8(r1)
/* 8032ECDC 0032BC1C  3C A0 80 43 */	lis r5, lbl_80434C20@ha
/* 8032ECE0 0032BC20  D4 05 4C 20 */	stfsu f0, lbl_80434C20@l(r5)
/* 8032ECE4 0032BC24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032ECE8 0032BC28  D0 05 00 04 */	stfs f0, 4(r5)
/* 8032ECEC 0032BC2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032ECF0 0032BC30  D0 05 00 08 */	stfs f0, 8(r5)
/* 8032ECF4 0032BC34  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032ECF8 0032BC38  3C A0 80 43 */	lis r5, lbl_80434C14@ha
/* 8032ECFC 0032BC3C  D4 25 4C 14 */	stfsu f1, lbl_80434C14@l(r5)
/* 8032ED00 0032BC40  C0 43 00 04 */	lfs f2, 4(r3)
/* 8032ED04 0032BC44  D0 45 00 04 */	stfs f2, 4(r5)
/* 8032ED08 0032BC48  C0 63 00 08 */	lfs f3, 8(r3)
/* 8032ED0C 0032BC4C  D0 65 00 08 */	stfs f3, 8(r5)
/* 8032ED10 0032BC50  7C 83 23 78 */	mr r3, r4
/* 8032ED14 0032BC54  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8032ED18 0032BC58  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8032ED1C 0032BC5C  48 00 AD 69 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032ED20 0032BC60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032ED24 0032BC64  7C 08 03 A6 */	mtlr r0
/* 8032ED28 0032BC68  38 21 00 20 */	addi r1, r1, 0x20
/* 8032ED2C 0032BC6C  4E 80 00 20 */	blr 

.global calcTransform__28J3DMtxCalcCalcTransformBasicFRC16J3DTransformInfo
calcTransform__28J3DMtxCalcCalcTransformBasicFRC16J3DTransformInfo:
/* 8032ED30 0032BC70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032ED34 0032BC74  7C 08 02 A6 */	mflr r0
/* 8032ED38 0032BC78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032ED3C 0032BC7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032ED40 0032BC80  48 03 34 95 */	bl _savegpr_27
/* 8032ED44 0032BC84  7C 7B 1B 78 */	mr r27, r3
/* 8032ED48 0032BC88  83 8D 90 70 */	lwz r28, lbl_804515F0-_SDA_BASE_(r13)
/* 8032ED4C 0032BC8C  80 8D 90 74 */	lwz r4, lbl_804515F4-_SDA_BASE_(r13)
/* 8032ED50 0032BC90  A3 C4 00 14 */	lhz r30, 0x14(r4)
/* 8032ED54 0032BC94  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8032ED58 0032BC98  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8032ED5C 0032BC9C  7F A4 02 14 */	add r29, r4, r0
/* 8032ED60 0032BCA0  3C 80 80 43 */	lis r4, lbl_80434C14@ha
/* 8032ED64 0032BCA4  3B E4 4C 14 */	addi r31, r4, lbl_80434C14@l
/* 8032ED68 0032BCA8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8032ED6C 0032BCAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032ED70 0032BCB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED74 0032BCB4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8032ED78 0032BCB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8032ED7C 0032BCBC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032ED80 0032BCC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED84 0032BCC4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8032ED88 0032BCC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8032ED8C 0032BCCC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032ED90 0032BCD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED94 0032BCD4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8032ED98 0032BCD8  7F A4 EB 78 */	mr r4, r29
/* 8032ED9C 0032BCDC  4B FE 2B C9 */	bl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 8032EDA0 0032BCE0  C0 22 CA A0 */	lfs f1, lbl_804564A0-_SDA2_BASE_(r2)
/* 8032EDA4 0032BCE4  3C 60 80 43 */	lis r3, lbl_80434C14@ha
/* 8032EDA8 0032BCE8  C0 03 4C 14 */	lfs f0, lbl_80434C14@l(r3)
/* 8032EDAC 0032BCEC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDB0 0032BCF0  40 82 00 24 */	bne lbl_8032EDD4
/* 8032EDB4 0032BCF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032EDB8 0032BCF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDBC 0032BCFC  40 82 00 18 */	bne lbl_8032EDD4
/* 8032EDC0 0032BD00  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032EDC4 0032BD04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDC8 0032BD08  40 82 00 0C */	bne lbl_8032EDD4
/* 8032EDCC 0032BD0C  38 00 00 01 */	li r0, 1
/* 8032EDD0 0032BD10  48 00 00 08 */	b lbl_8032EDD8
lbl_8032EDD4:
/* 8032EDD4 0032BD14  38 00 00 00 */	li r0, 0
lbl_8032EDD8:
/* 8032EDD8 0032BD18  2C 00 00 00 */	cmpwi r0, 0
/* 8032EDDC 0032BD1C  40 82 00 2C */	bne lbl_8032EE08
/* 8032EDE0 0032BD20  38 00 00 00 */	li r0, 0
/* 8032EDE4 0032BD24  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EDE8 0032BD28  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032EDEC 0032BD2C  7F A3 EB 78 */	mr r3, r29
/* 8032EDF0 0032BD30  7F A4 EB 78 */	mr r4, r29
/* 8032EDF4 0032BD34  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8032EDF8 0032BD38  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8032EDFC 0032BD3C  C0 7B 00 08 */	lfs f3, 8(r27)
/* 8032EE00 0032BD40  48 00 AC 85 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EE04 0032BD44  48 00 00 10 */	b lbl_8032EE14
lbl_8032EE08:
/* 8032EE08 0032BD48  38 00 00 01 */	li r0, 1
/* 8032EE0C 0032BD4C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EE10 0032BD50  7C 03 F1 AE */	stbx r0, r3, r30
lbl_8032EE14:
/* 8032EE14 0032BD54  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EE18 0032BD58  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EE1C 0032BD5C  7F A4 EB 78 */	mr r4, r29
/* 8032EE20 0032BD60  7C 65 1B 78 */	mr r5, r3
/* 8032EE24 0032BD64  48 01 76 C1 */	bl PSMTXConcat
/* 8032EE28 0032BD68  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EE2C 0032BD6C  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EE30 0032BD70  7F A4 EB 78 */	mr r4, r29
/* 8032EE34 0032BD74  48 01 76 7D */	bl PSMTXCopy
/* 8032EE38 0032BD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EE3C 0032BD7C  48 03 33 E5 */	bl _restgpr_27
/* 8032EE40 0032BD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032EE44 0032BD84  7C 08 03 A6 */	mtlr r0
/* 8032EE48 0032BD88  38 21 00 20 */	addi r1, r1, 0x20
/* 8032EE4C 0032BD8C  4E 80 00 20 */	blr 

.global calcTransform__32J3DMtxCalcCalcTransformSoftimageFRC16J3DTransformInfo
calcTransform__32J3DMtxCalcCalcTransformSoftimageFRC16J3DTransformInfo:
/* 8032EE50 0032BD90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EE54 0032BD94  7C 08 02 A6 */	mflr r0
/* 8032EE58 0032BD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EE5C 0032BD9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EE60 0032BDA0  48 03 33 75 */	bl _savegpr_27
/* 8032EE64 0032BDA4  7C 7B 1B 78 */	mr r27, r3
/* 8032EE68 0032BDA8  83 8D 90 70 */	lwz r28, lbl_804515F0-_SDA_BASE_(r13)
/* 8032EE6C 0032BDAC  80 6D 90 74 */	lwz r3, lbl_804515F4-_SDA_BASE_(r13)
/* 8032EE70 0032BDB0  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 8032EE74 0032BDB4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8032EE78 0032BDB8  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 8032EE7C 0032BDBC  7F E3 02 14 */	add r31, r3, r0
/* 8032EE80 0032BDC0  A8 7B 00 0C */	lha r3, 0xc(r27)
/* 8032EE84 0032BDC4  A8 9B 00 0E */	lha r4, 0xe(r27)
/* 8032EE88 0032BDC8  A8 BB 00 10 */	lha r5, 0x10(r27)
/* 8032EE8C 0032BDCC  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8032EE90 0032BDD0  3C C0 80 43 */	lis r6, lbl_80434C14@ha
/* 8032EE94 0032BDD4  3B C6 4C 14 */	addi r30, r6, lbl_80434C14@l
/* 8032EE98 0032BDD8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8032EE9C 0032BDDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032EEA0 0032BDE0  C0 5B 00 18 */	lfs f2, 0x18(r27)
/* 8032EEA4 0032BDE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8032EEA8 0032BDE8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8032EEAC 0032BDEC  C0 7B 00 1C */	lfs f3, 0x1c(r27)
/* 8032EEB0 0032BDF0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8032EEB4 0032BDF4  EC 63 00 32 */	fmuls f3, f3, f0
/* 8032EEB8 0032BDF8  7F E6 FB 78 */	mr r6, r31
/* 8032EEBC 0032BDFC  4B FE 2B 69 */	bl J3DGetTranslateRotateMtx__FsssfffPA4_f
/* 8032EEC0 0032BE00  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EEC4 0032BE04  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EEC8 0032BE08  7F E4 FB 78 */	mr r4, r31
/* 8032EECC 0032BE0C  7C 65 1B 78 */	mr r5, r3
/* 8032EED0 0032BE10  48 01 76 15 */	bl PSMTXConcat
/* 8032EED4 0032BE14  3C 60 80 43 */	lis r3, lbl_80434C14@ha
/* 8032EED8 0032BE18  C4 23 4C 14 */	lfsu f1, lbl_80434C14@l(r3)
/* 8032EEDC 0032BE1C  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8032EEE0 0032BE20  EC 61 00 32 */	fmuls f3, f1, f0
/* 8032EEE4 0032BE24  D0 63 00 00 */	stfs f3, 0(r3)
/* 8032EEE8 0032BE28  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8032EEEC 0032BE2C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8032EEF0 0032BE30  EC 41 00 32 */	fmuls f2, f1, f0
/* 8032EEF4 0032BE34  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8032EEF8 0032BE38  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8032EEFC 0032BE3C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8032EF00 0032BE40  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032EF04 0032BE44  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8032EF08 0032BE48  C0 02 CA A0 */	lfs f0, lbl_804564A0-_SDA2_BASE_(r2)
/* 8032EF0C 0032BE4C  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8032EF10 0032BE50  40 82 00 1C */	bne lbl_8032EF2C
/* 8032EF14 0032BE54  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8032EF18 0032BE58  40 82 00 14 */	bne lbl_8032EF2C
/* 8032EF1C 0032BE5C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8032EF20 0032BE60  40 82 00 0C */	bne lbl_8032EF2C
/* 8032EF24 0032BE64  38 00 00 01 */	li r0, 1
/* 8032EF28 0032BE68  48 00 00 08 */	b lbl_8032EF30
lbl_8032EF2C:
/* 8032EF2C 0032BE6C  38 00 00 00 */	li r0, 0
lbl_8032EF30:
/* 8032EF30 0032BE70  2C 00 00 00 */	cmpwi r0, 0
/* 8032EF34 0032BE74  40 82 00 54 */	bne lbl_8032EF88
/* 8032EF38 0032BE78  38 00 00 00 */	li r0, 0
/* 8032EF3C 0032BE7C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EF40 0032BE80  7C 03 E9 AE */	stbx r0, r3, r29
/* 8032EF44 0032BE84  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EF48 0032BE88  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EF4C 0032BE8C  7F E4 FB 78 */	mr r4, r31
/* 8032EF50 0032BE90  3C A0 80 43 */	lis r5, lbl_80434C14@ha
/* 8032EF54 0032BE94  C0 25 4C 14 */	lfs f1, lbl_80434C14@l(r5)
/* 8032EF58 0032BE98  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8032EF5C 0032BE9C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8032EF60 0032BEA0  48 00 AB 25 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EF64 0032BEA4  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EF68 0032BEA8  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EF6C 0032BEAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032EF70 0032BEB0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8032EF74 0032BEB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8032EF78 0032BEB8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8032EF7C 0032BEBC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8032EF80 0032BEC0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8032EF84 0032BEC4  48 00 00 20 */	b lbl_8032EFA4
lbl_8032EF88:
/* 8032EF88 0032BEC8  38 00 00 01 */	li r0, 1
/* 8032EF8C 0032BECC  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EF90 0032BED0  7C 03 E9 AE */	stbx r0, r3, r29
/* 8032EF94 0032BED4  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032EF98 0032BED8  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032EF9C 0032BEDC  7F E4 FB 78 */	mr r4, r31
/* 8032EFA0 0032BEE0  48 01 75 11 */	bl PSMTXCopy
lbl_8032EFA4:
/* 8032EFA4 0032BEE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EFA8 0032BEE8  48 03 32 79 */	bl _restgpr_27
/* 8032EFAC 0032BEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032EFB0 0032BEF0  7C 08 03 A6 */	mtlr r0
/* 8032EFB4 0032BEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032EFB8 0032BEF8  4E 80 00 20 */	blr 

.global calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo:
/* 8032EFBC 0032BEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EFC0 0032BF00  7C 08 02 A6 */	mflr r0
/* 8032EFC4 0032BF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EFC8 0032BF08  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EFCC 0032BF0C  48 03 32 09 */	bl _savegpr_27
/* 8032EFD0 0032BF10  7C 7F 1B 78 */	mr r31, r3
/* 8032EFD4 0032BF14  83 8D 90 74 */	lwz r28, lbl_804515F4-_SDA_BASE_(r13)
/* 8032EFD8 0032BF18  83 6D 90 70 */	lwz r27, lbl_804515F0-_SDA_BASE_(r13)
/* 8032EFDC 0032BF1C  A3 DC 00 14 */	lhz r30, 0x14(r28)
/* 8032EFE0 0032BF20  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 8032EFE4 0032BF24  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8032EFE8 0032BF28  7F A4 02 14 */	add r29, r4, r0
/* 8032EFEC 0032BF2C  7F A4 EB 78 */	mr r4, r29
/* 8032EFF0 0032BF30  4B FE 29 75 */	bl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 8032EFF4 0032BF34  C0 22 CA A0 */	lfs f1, lbl_804564A0-_SDA2_BASE_(r2)
/* 8032EFF8 0032BF38  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8032EFFC 0032BF3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F000 0032BF40  40 82 00 2C */	bne lbl_8032F02C
/* 8032F004 0032BF44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032F008 0032BF48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F00C 0032BF4C  40 82 00 20 */	bne lbl_8032F02C
/* 8032F010 0032BF50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032F014 0032BF54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F018 0032BF58  40 82 00 14 */	bne lbl_8032F02C
/* 8032F01C 0032BF5C  38 00 00 01 */	li r0, 1
/* 8032F020 0032BF60  80 7B 00 04 */	lwz r3, 4(r27)
/* 8032F024 0032BF64  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032F028 0032BF68  48 00 00 28 */	b lbl_8032F050
lbl_8032F02C:
/* 8032F02C 0032BF6C  38 00 00 00 */	li r0, 0
/* 8032F030 0032BF70  80 7B 00 04 */	lwz r3, 4(r27)
/* 8032F034 0032BF74  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032F038 0032BF78  7F A3 EB 78 */	mr r3, r29
/* 8032F03C 0032BF7C  7F A4 EB 78 */	mr r4, r29
/* 8032F040 0032BF80  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8032F044 0032BF84  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8032F048 0032BF88  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8032F04C 0032BF8C  48 00 AA 39 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
lbl_8032F050:
/* 8032F050 0032BF90  88 1C 00 17 */	lbz r0, 0x17(r28)
/* 8032F054 0032BF94  28 00 00 01 */	cmplwi r0, 1
/* 8032F058 0032BF98  40 82 00 8C */	bne lbl_8032F0E4
/* 8032F05C 0032BF9C  3C 60 80 43 */	lis r3, lbl_80434C20@ha
/* 8032F060 0032BFA0  C4 03 4C 20 */	lfsu f0, lbl_80434C20@l(r3)
/* 8032F064 0032BFA4  EC 20 00 30 */	fres f1, f0
/* 8032F068 0032BFA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032F06C 0032BFAC  EC 40 00 30 */	fres f2, f0
/* 8032F070 0032BFB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032F074 0032BFB4  EC 60 00 30 */	fres f3, f0
/* 8032F078 0032BFB8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8032F07C 0032BFBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F080 0032BFC0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8032F084 0032BFC4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8032F088 0032BFC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F08C 0032BFCC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8032F090 0032BFD0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8032F094 0032BFD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F098 0032BFD8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8032F09C 0032BFDC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8032F0A0 0032BFE0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0A4 0032BFE4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8032F0A8 0032BFE8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8032F0AC 0032BFEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0B0 0032BFF0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8032F0B4 0032BFF4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8032F0B8 0032BFF8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0BC 0032BFFC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8032F0C0 0032C000  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8032F0C4 0032C004  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0C8 0032C008  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8032F0CC 0032C00C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8032F0D0 0032C010  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0D4 0032C014  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8032F0D8 0032C018  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8032F0DC 0032C01C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0E0 0032C020  D0 1D 00 28 */	stfs f0, 0x28(r29)
lbl_8032F0E4:
/* 8032F0E4 0032C024  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032F0E8 0032C028  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032F0EC 0032C02C  7F A4 EB 78 */	mr r4, r29
/* 8032F0F0 0032C030  7C 65 1B 78 */	mr r5, r3
/* 8032F0F4 0032C034  48 01 73 F1 */	bl PSMTXConcat
/* 8032F0F8 0032C038  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032F0FC 0032C03C  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032F100 0032C040  7F A4 EB 78 */	mr r4, r29
/* 8032F104 0032C044  48 01 73 AD */	bl PSMTXCopy
/* 8032F108 0032C048  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8032F10C 0032C04C  3C 60 80 43 */	lis r3, lbl_80434C20@ha
/* 8032F110 0032C050  D4 03 4C 20 */	stfsu f0, lbl_80434C20@l(r3)
/* 8032F114 0032C054  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032F118 0032C058  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032F11C 0032C05C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032F120 0032C060  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032F124 0032C064  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F128 0032C068  48 03 30 F9 */	bl _restgpr_27
/* 8032F12C 0032C06C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F130 0032C070  7C 08 03 A6 */	mtlr r0
/* 8032F134 0032C074  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F138 0032C078  4E 80 00 20 */	blr 

.global appendChild__8J3DJointFP8J3DJoint
appendChild__8J3DJointFP8J3DJoint:
/* 8032F13C 0032C07C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8032F140 0032C080  28 00 00 00 */	cmplwi r0, 0
/* 8032F144 0032C084  40 82 00 0C */	bne lbl_8032F150
/* 8032F148 0032C088  90 83 00 0C */	stw r4, 0xc(r3)
/* 8032F14C 0032C08C  4E 80 00 20 */	blr 
lbl_8032F150:
/* 8032F150 0032C090  7C 03 03 78 */	mr r3, r0
/* 8032F154 0032C094  48 00 00 08 */	b lbl_8032F15C
lbl_8032F158:
/* 8032F158 0032C098  7C 03 03 78 */	mr r3, r0
lbl_8032F15C:
/* 8032F15C 0032C09C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8032F160 0032C0A0  28 00 00 00 */	cmplwi r0, 0
/* 8032F164 0032C0A4  40 82 FF F4 */	bne lbl_8032F158
/* 8032F168 0032C0A8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8032F16C 0032C0AC  4E 80 00 20 */	blr 

.global __ct__8J3DJointFv
__ct__8J3DJointFv:
/* 8032F170 0032C0B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F174 0032C0B4  38 80 00 00 */	li r4, 0
/* 8032F178 0032C0B8  90 83 00 00 */	stw r4, 0(r3)
/* 8032F17C 0032C0BC  90 83 00 04 */	stw r4, 4(r3)
/* 8032F180 0032C0C0  90 83 00 08 */	stw r4, 8(r3)
/* 8032F184 0032C0C4  90 83 00 0C */	stw r4, 0xc(r3)
/* 8032F188 0032C0C8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8032F18C 0032C0CC  B0 83 00 14 */	sth r4, 0x14(r3)
/* 8032F190 0032C0D0  38 00 00 01 */	li r0, 1
/* 8032F194 0032C0D4  98 03 00 16 */	stb r0, 0x16(r3)
/* 8032F198 0032C0D8  98 83 00 17 */	stb r4, 0x17(r3)
/* 8032F19C 0032C0DC  38 C3 00 14 */	addi r6, r3, 0x14
/* 8032F1A0 0032C0E0  3C 80 80 3A */	lis r4, lbl_803A1E30@ha
/* 8032F1A4 0032C0E4  38 84 1E 30 */	addi r4, r4, lbl_803A1E30@l
/* 8032F1A8 0032C0E8  38 A4 FF FC */	addi r5, r4, -4
/* 8032F1AC 0032C0EC  38 00 00 04 */	li r0, 4
/* 8032F1B0 0032C0F0  7C 09 03 A6 */	mtctr r0
lbl_8032F1B4:
/* 8032F1B4 0032C0F4  80 85 00 04 */	lwz r4, 4(r5)
/* 8032F1B8 0032C0F8  84 05 00 08 */	lwzu r0, 8(r5)
/* 8032F1BC 0032C0FC  90 86 00 04 */	stw r4, 4(r6)
/* 8032F1C0 0032C100  94 06 00 08 */	stwu r0, 8(r6)
/* 8032F1C4 0032C104  42 00 FF F0 */	bdnz lbl_8032F1B4
/* 8032F1C8 0032C108  C0 02 CA A4 */	lfs f0, lbl_804564A4-_SDA2_BASE_(r2)
/* 8032F1CC 0032C10C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8032F1D0 0032C110  38 00 00 00 */	li r0, 0
/* 8032F1D4 0032C114  90 03 00 54 */	stw r0, 0x54(r3)
/* 8032F1D8 0032C118  90 03 00 58 */	stw r0, 0x58(r3)
/* 8032F1DC 0032C11C  3C 80 80 3A */	lis r4, lbl_803A2080@ha
/* 8032F1E0 0032C120  38 A4 20 80 */	addi r5, r4, lbl_803A2080@l
/* 8032F1E4 0032C124  80 85 00 00 */	lwz r4, 0(r5)
/* 8032F1E8 0032C128  80 05 00 04 */	lwz r0, 4(r5)
/* 8032F1EC 0032C12C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8032F1F0 0032C130  90 01 00 18 */	stw r0, 0x18(r1)
/* 8032F1F4 0032C134  80 05 00 08 */	lwz r0, 8(r5)
/* 8032F1F8 0032C138  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8032F1FC 0032C13C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8032F200 0032C140  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8032F204 0032C144  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8032F208 0032C148  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8032F20C 0032C14C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8032F210 0032C150  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8032F214 0032C154  3C 80 80 3A */	lis r4, lbl_803A208C@ha
/* 8032F218 0032C158  38 A4 20 8C */	addi r5, r4, lbl_803A208C@l
/* 8032F21C 0032C15C  80 85 00 00 */	lwz r4, 0(r5)
/* 8032F220 0032C160  80 05 00 04 */	lwz r0, 4(r5)
/* 8032F224 0032C164  90 81 00 08 */	stw r4, 8(r1)
/* 8032F228 0032C168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032F22C 0032C16C  80 05 00 08 */	lwz r0, 8(r5)
/* 8032F230 0032C170  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F234 0032C174  C0 01 00 08 */	lfs f0, 8(r1)
/* 8032F238 0032C178  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8032F23C 0032C17C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032F240 0032C180  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8032F244 0032C184  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032F248 0032C188  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8032F24C 0032C18C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F250 0032C190  4E 80 00 20 */	blr 

.global entryIn__8J3DJointFv
entryIn__8J3DJointFv:
/* 8032F254 0032C194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F258 0032C198  7C 08 02 A6 */	mflr r0
/* 8032F25C 0032C19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F260 0032C1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F264 0032C1A4  48 03 2F 71 */	bl _savegpr_27
/* 8032F268 0032C1A8  3C 80 80 43 */	lis r4, lbl_80434AC8@ha
/* 8032F26C 0032C1AC  3B E4 4A C8 */	addi r31, r4, lbl_80434AC8@l
/* 8032F270 0032C1B0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8032F274 0032C1B4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8032F278 0032C1B8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8032F27C 0032C1BC  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8032F280 0032C1C0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8032F284 0032C1C4  7F C4 02 14 */	add r30, r4, r0
/* 8032F288 0032C1C8  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 8032F28C 0032C1CC  93 C4 00 1C */	stw r30, 0x1c(r4)
/* 8032F290 0032C1D0  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8032F294 0032C1D4  93 C4 00 1C */	stw r30, 0x1c(r4)
/* 8032F298 0032C1D8  83 83 00 58 */	lwz r28, 0x58(r3)
/* 8032F29C 0032C1DC  48 00 01 3C */	b lbl_8032F3D8
lbl_8032F2A0:
/* 8032F2A0 0032C1E0  80 9C 00 08 */	lwz r4, 8(r28)
/* 8032F2A4 0032C1E4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8032F2A8 0032C1E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8032F2AC 0032C1EC  41 82 00 0C */	beq lbl_8032F2B8
/* 8032F2B0 0032C1F0  83 9C 00 04 */	lwz r28, 4(r28)
/* 8032F2B4 0032C1F4  48 00 01 24 */	b lbl_8032F3D8
lbl_8032F2B8:
/* 8032F2B8 0032C1F8  A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 8032F2BC 0032C1FC  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 8032F2C0 0032C200  80 65 00 C0 */	lwz r3, 0xc0(r5)
/* 8032F2C4 0032C204  54 00 32 B2 */	rlwinm r0, r0, 6, 0xa, 0x19
/* 8032F2C8 0032C208  7F A3 02 14 */	add r29, r3, r0
/* 8032F2CC 0032C20C  A0 04 00 08 */	lhz r0, 8(r4)
/* 8032F2D0 0032C210  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 8032F2D4 0032C214  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 8032F2D8 0032C218  7F 63 02 14 */	add r27, r3, r0
/* 8032F2DC 0032C21C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8032F2E0 0032C220  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8032F2E4 0032C224  40 82 00 68 */	bne lbl_8032F34C
/* 8032F2E8 0032C228  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 8032F2EC 0032C22C  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F2F0 0032C230  7C 03 00 40 */	cmplw r3, r0
/* 8032F2F4 0032C234  40 80 00 0C */	bge lbl_8032F300
/* 8032F2F8 0032C238  7C 60 1B 78 */	mr r0, r3
/* 8032F2FC 0032C23C  48 00 00 08 */	b lbl_8032F304
lbl_8032F300:
/* 8032F300 0032C240  38 00 00 00 */	li r0, 0
lbl_8032F304:
/* 8032F304 0032C244  28 00 00 00 */	cmplwi r0, 0
/* 8032F308 0032C248  41 82 00 2C */	beq lbl_8032F334
/* 8032F30C 0032C24C  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F310 0032C250  7C 03 00 40 */	cmplw r3, r0
/* 8032F314 0032C254  40 80 00 08 */	bge lbl_8032F31C
/* 8032F318 0032C258  48 00 00 08 */	b lbl_8032F320
lbl_8032F31C:
/* 8032F31C 0032C25C  38 60 00 00 */	li r3, 0
lbl_8032F320:
/* 8032F320 0032C260  7F 84 E3 78 */	mr r4, r28
/* 8032F324 0032C264  81 83 00 00 */	lwz r12, 0(r3)
/* 8032F328 0032C268  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8032F32C 0032C26C  7D 89 03 A6 */	mtctr r12
/* 8032F330 0032C270  4E 80 04 21 */	bctrl 
lbl_8032F334:
/* 8032F334 0032C274  7F 83 E3 78 */	mr r3, r28
/* 8032F338 0032C278  7F C4 F3 78 */	mr r4, r30
/* 8032F33C 0032C27C  81 9C 00 00 */	lwz r12, 0(r28)
/* 8032F340 0032C280  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032F344 0032C284  7D 89 03 A6 */	mtctr r12
/* 8032F348 0032C288  4E 80 04 21 */	bctrl 
lbl_8032F34C:
/* 8032F34C 0032C28C  7F 83 E3 78 */	mr r3, r28
/* 8032F350 0032C290  4B FE 77 61 */	bl setCurrentMtx__11J3DMaterialFv
/* 8032F354 0032C294  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 8032F358 0032C298  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F35C 0032C29C  7C 03 00 40 */	cmplw r3, r0
/* 8032F360 0032C2A0  40 80 00 08 */	bge lbl_8032F368
/* 8032F364 0032C2A4  48 00 00 08 */	b lbl_8032F36C
lbl_8032F368:
/* 8032F368 0032C2A8  38 60 00 00 */	li r3, 0
lbl_8032F36C:
/* 8032F36C 0032C2AC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8032F370 0032C2B0  93 7D 00 2C */	stw r27, 0x2c(r29)
/* 8032F374 0032C2B4  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8032F378 0032C2B8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8032F37C 0032C2BC  7C 00 00 34 */	cntlzw r0, r0
/* 8032F380 0032C2C0  54 04 ED BA */	rlwinm r4, r0, 0x1d, 0x16, 0x1d
/* 8032F384 0032C2C4  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 8032F388 0032C2C8  38 03 4A C8 */	addi r0, r3, lbl_80434AC8@l
/* 8032F38C 0032C2CC  7C 60 22 14 */	add r3, r0, r4
/* 8032F390 0032C2D0  80 83 00 48 */	lwz r4, 0x48(r3)
/* 8032F394 0032C2D4  7F A3 EB 78 */	mr r3, r29
/* 8032F398 0032C2D8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8032F39C 0032C2DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032F3A0 0032C2E0  7D 89 03 A6 */	mtctr r12
/* 8032F3A4 0032C2E4  4E 80 04 21 */	bctrl 
/* 8032F3A8 0032C2E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8032F3AC 0032C2EC  41 82 00 28 */	beq lbl_8032F3D4
/* 8032F3B0 0032C2F0  93 BF 00 3C */	stw r29, 0x3c(r31)
/* 8032F3B4 0032C2F4  80 6D 90 60 */	lwz r3, lbl_804515E0-_SDA_BASE_(r13)
/* 8032F3B8 0032C2F8  38 03 00 01 */	addi r0, r3, 1
/* 8032F3BC 0032C2FC  90 0D 90 60 */	stw r0, lbl_804515E0-_SDA_BASE_(r13)
/* 8032F3C0 0032C300  7F 83 E3 78 */	mr r3, r28
/* 8032F3C4 0032C304  81 9C 00 00 */	lwz r12, 0(r28)
/* 8032F3C8 0032C308  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8032F3CC 0032C30C  7D 89 03 A6 */	mtctr r12
/* 8032F3D0 0032C310  4E 80 04 21 */	bctrl 
lbl_8032F3D4:
/* 8032F3D4 0032C314  83 9C 00 04 */	lwz r28, 4(r28)
lbl_8032F3D8:
/* 8032F3D8 0032C318  28 1C 00 00 */	cmplwi r28, 0
/* 8032F3DC 0032C31C  40 82 FE C4 */	bne lbl_8032F2A0
/* 8032F3E0 0032C320  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F3E4 0032C324  48 03 2E 3D */	bl _restgpr_27
/* 8032F3E8 0032C328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F3EC 0032C32C  7C 08 03 A6 */	mtlr r0
/* 8032F3F0 0032C330  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F3F4 0032C334  4E 80 00 20 */	blr 

.global recursiveCalc__8J3DJointFv
recursiveCalc__8J3DJointFv:
/* 8032F3F8 0032C338  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8032F3FC 0032C33C  7C 08 02 A6 */	mflr r0
/* 8032F400 0032C340  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8032F404 0032C344  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8032F408 0032C348  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8032F40C 0032C34C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8032F410 0032C350  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8032F414 0032C354  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8032F418 0032C358  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8032F41C 0032C35C  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8032F420 0032C360  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 8032F424 0032C364  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 8032F428 0032C368  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 8032F42C 0032C36C  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 8032F430 0032C370  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 8032F434 0032C374  39 61 00 50 */	addi r11, r1, 0x50
/* 8032F438 0032C378  48 03 2D 9D */	bl _savegpr_27
/* 8032F43C 0032C37C  7C 7E 1B 78 */	mr r30, r3
/* 8032F440 0032C380  3B E0 00 00 */	li r31, 0
/* 8032F444 0032C384  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8032F448 0032C388  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8032F44C 0032C38C  38 81 00 08 */	addi r4, r1, 8
/* 8032F450 0032C390  48 01 70 61 */	bl PSMTXCopy
/* 8032F454 0032C394  3C 60 80 43 */	lis r3, lbl_80434C14@ha
/* 8032F458 0032C398  3B 83 4C 14 */	addi r28, r3, lbl_80434C14@l
/* 8032F45C 0032C39C  C3 FC 00 00 */	lfs f31, 0(r28)
/* 8032F460 0032C3A0  C3 DC 00 04 */	lfs f30, 4(r28)
/* 8032F464 0032C3A4  C3 BC 00 08 */	lfs f29, 8(r28)
/* 8032F468 0032C3A8  3C 60 80 43 */	lis r3, lbl_80434C20@ha
/* 8032F46C 0032C3AC  3B A3 4C 20 */	addi r29, r3, lbl_80434C20@l
/* 8032F470 0032C3B0  C3 9D 00 00 */	lfs f28, 0(r29)
/* 8032F474 0032C3B4  C3 7D 00 04 */	lfs f27, 4(r29)
/* 8032F478 0032C3B8  C3 5D 00 08 */	lfs f26, 8(r29)
/* 8032F47C 0032C3BC  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8032F480 0032C3C0  28 03 00 00 */	cmplwi r3, 0
/* 8032F484 0032C3C4  41 82 00 24 */	beq lbl_8032F4A8
/* 8032F488 0032C3C8  83 ED 90 78 */	lwz r31, lbl_804515F8-_SDA_BASE_(r13)
/* 8032F48C 0032C3CC  90 6D 90 78 */	stw r3, lbl_804515F8-_SDA_BASE_(r13)
/* 8032F490 0032C3D0  93 CD 90 74 */	stw r30, lbl_804515F4-_SDA_BASE_(r13)
/* 8032F494 0032C3D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8032F498 0032C3D8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8032F49C 0032C3DC  7D 89 03 A6 */	mtctr r12
/* 8032F4A0 0032C3E0  4E 80 04 21 */	bctrl 
/* 8032F4A4 0032C3E4  48 00 00 24 */	b lbl_8032F4C8
lbl_8032F4A8:
/* 8032F4A8 0032C3E8  80 6D 90 78 */	lwz r3, lbl_804515F8-_SDA_BASE_(r13)
/* 8032F4AC 0032C3EC  28 03 00 00 */	cmplwi r3, 0
/* 8032F4B0 0032C3F0  41 82 00 18 */	beq lbl_8032F4C8
/* 8032F4B4 0032C3F4  93 CD 90 74 */	stw r30, lbl_804515F4-_SDA_BASE_(r13)
/* 8032F4B8 0032C3F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8032F4BC 0032C3FC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8032F4C0 0032C400  7D 89 03 A6 */	mtctr r12
/* 8032F4C4 0032C404  4E 80 04 21 */	bctrl 
lbl_8032F4C8:
/* 8032F4C8 0032C408  83 7E 00 04 */	lwz r27, 4(r30)
/* 8032F4CC 0032C40C  28 1B 00 00 */	cmplwi r27, 0
/* 8032F4D0 0032C410  41 82 00 18 */	beq lbl_8032F4E8
/* 8032F4D4 0032C414  7F C3 F3 78 */	mr r3, r30
/* 8032F4D8 0032C418  38 80 00 00 */	li r4, 0
/* 8032F4DC 0032C41C  7F 6C DB 78 */	mr r12, r27
/* 8032F4E0 0032C420  7D 89 03 A6 */	mtctr r12
/* 8032F4E4 0032C424  4E 80 04 21 */	bctrl 
lbl_8032F4E8:
/* 8032F4E8 0032C428  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8032F4EC 0032C42C  28 03 00 00 */	cmplwi r3, 0
/* 8032F4F0 0032C430  41 82 00 08 */	beq lbl_8032F4F8
/* 8032F4F4 0032C434  4B FF FF 05 */	bl recursiveCalc__8J3DJointFv
lbl_8032F4F8:
/* 8032F4F8 0032C438  38 61 00 08 */	addi r3, r1, 8
/* 8032F4FC 0032C43C  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8032F500 0032C440  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8032F504 0032C444  48 01 6F AD */	bl PSMTXCopy
/* 8032F508 0032C448  3C 60 80 43 */	lis r3, lbl_80434C14@ha
/* 8032F50C 0032C44C  D3 E3 4C 14 */	stfs f31, lbl_80434C14@l(r3)
/* 8032F510 0032C450  D3 DC 00 04 */	stfs f30, 4(r28)
/* 8032F514 0032C454  D3 BC 00 08 */	stfs f29, 8(r28)
/* 8032F518 0032C458  3C 60 80 43 */	lis r3, lbl_80434C20@ha
/* 8032F51C 0032C45C  D3 83 4C 20 */	stfs f28, lbl_80434C20@l(r3)
/* 8032F520 0032C460  D3 7D 00 04 */	stfs f27, 4(r29)
/* 8032F524 0032C464  D3 5D 00 08 */	stfs f26, 8(r29)
/* 8032F528 0032C468  28 1F 00 00 */	cmplwi r31, 0
/* 8032F52C 0032C46C  41 82 00 08 */	beq lbl_8032F534
/* 8032F530 0032C470  93 ED 90 78 */	stw r31, lbl_804515F8-_SDA_BASE_(r13)
lbl_8032F534:
/* 8032F534 0032C474  28 1B 00 00 */	cmplwi r27, 0
/* 8032F538 0032C478  41 82 00 18 */	beq lbl_8032F550
/* 8032F53C 0032C47C  7F C3 F3 78 */	mr r3, r30
/* 8032F540 0032C480  38 80 00 01 */	li r4, 1
/* 8032F544 0032C484  7F 6C DB 78 */	mr r12, r27
/* 8032F548 0032C488  7D 89 03 A6 */	mtctr r12
/* 8032F54C 0032C48C  4E 80 04 21 */	bctrl 
lbl_8032F550:
/* 8032F550 0032C490  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8032F554 0032C494  28 03 00 00 */	cmplwi r3, 0
/* 8032F558 0032C498  41 82 00 08 */	beq lbl_8032F560
/* 8032F55C 0032C49C  4B FF FE 9D */	bl recursiveCalc__8J3DJointFv
lbl_8032F560:
/* 8032F560 0032C4A0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8032F564 0032C4A4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8032F568 0032C4A8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8032F56C 0032C4AC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8032F570 0032C4B0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8032F574 0032C4B4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8032F578 0032C4B8  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 8032F57C 0032C4BC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8032F580 0032C4C0  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 8032F584 0032C4C4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8032F588 0032C4C8  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 8032F58C 0032C4CC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8032F590 0032C4D0  39 61 00 50 */	addi r11, r1, 0x50
/* 8032F594 0032C4D4  48 03 2C 8D */	bl _restgpr_27
/* 8032F598 0032C4D8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8032F59C 0032C4DC  7C 08 03 A6 */	mtlr r0
/* 8032F5A0 0032C4E0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8032F5A4 0032C4E4  4E 80 00 20 */	blr 

