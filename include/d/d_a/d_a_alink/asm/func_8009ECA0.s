/* 8009ECA0 0009BBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009ECA4 0009BBE4  7C 08 02 A6 */	mflr r0
/* 8009ECA8 0009BBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009ECAC 0009BBEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8009ECB0 0009BBF0  48 2C 35 2D */	bl _savegpr_29
/* 8009ECB4 0009BBF4  7C 7F 1B 78 */	mr r31, r3
/* 8009ECB8 0009BBF8  7C 9E 23 78 */	mr r30, r4
/* 8009ECBC 0009BBFC  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 8009ECC0 0009BC00  28 03 00 00 */	cmplwi r3, 0
/* 8009ECC4 0009BC04  41 82 00 24 */	beq lbl_8009ECE8
/* 8009ECC8 0009BC08  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8009ECCC 0009BC0C  28 00 00 00 */	cmplwi r0, 0
/* 8009ECD0 0009BC10  41 82 00 18 */	beq lbl_8009ECE8
/* 8009ECD4 0009BC14  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8009ECD8 0009BC18  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8009ECDC 0009BC1C  41 82 01 D0 */	beq lbl_8009EEAC
/* 8009ECE0 0009BC20  2C 1E 00 06 */	cmpwi r30, 6
/* 8009ECE4 0009BC24  40 80 01 C8 */	bge lbl_8009EEAC
lbl_8009ECE8:
/* 8009ECE8 0009BC28  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8009ECEC 0009BC2C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8009ECF0 0009BC30  41 82 00 60 */	beq lbl_8009ED50
/* 8009ECF4 0009BC34  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8009ECF8 0009BC38  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8009ECFC 0009BC3C  3C 80 80 3E */	lis r4, lbl_803DD470@ha
/* 8009ED00 0009BC40  38 84 D4 70 */	addi r4, r4, lbl_803DD470@l
/* 8009ED04 0009BC44  48 2A 77 AD */	bl PSMTXCopy
/* 8009ED08 0009BC48  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009ED0C 0009BC4C  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009ED10 0009BC50  38 80 E6 9C */	li r4, -6500
/* 8009ED14 0009BC54  4B F6 D7 B9 */	bl mDoMtx_ZrotM
/* 8009ED18 0009BC58  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009ED1C 0009BC5C  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009ED20 0009BC60  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 8009ED24 0009BC64  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8009ED28 0009BC68  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8009ED2C 0009BC6C  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8009ED30 0009BC70  7C 84 02 14 */	add r4, r4, r0
/* 8009ED34 0009BC74  48 2A 77 7D */	bl PSMTXCopy
/* 8009ED38 0009BC78  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009ED3C 0009BC7C  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009ED40 0009BC80  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8009ED44 0009BC84  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8009ED48 0009BC88  48 2A 77 69 */	bl PSMTXCopy
/* 8009ED4C 0009BC8C  48 00 01 60 */	b lbl_8009EEAC
lbl_8009ED50:
/* 8009ED50 0009BC90  2C 1E 00 06 */	cmpwi r30, 6
/* 8009ED54 0009BC94  41 80 01 10 */	blt lbl_8009EE64
/* 8009ED58 0009BC98  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8009ED5C 0009BC9C  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8009ED60 0009BCA0  3C 80 80 3E */	lis r4, lbl_803DD470@ha
/* 8009ED64 0009BCA4  38 84 D4 70 */	addi r4, r4, lbl_803DD470@l
/* 8009ED68 0009BCA8  48 2A 77 49 */	bl PSMTXCopy
/* 8009ED6C 0009BCAC  2C 1E 00 06 */	cmpwi r30, 6
/* 8009ED70 0009BCB0  40 82 00 30 */	bne lbl_8009EDA0
/* 8009ED74 0009BCB4  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009ED78 0009BCB8  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009ED7C 0009BCBC  38 80 00 00 */	li r4, 0
/* 8009ED80 0009BCC0  A8 1F 30 4E */	lha r0, 0x304e(r31)
/* 8009ED84 0009BCC4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009ED88 0009BCC8  7C 05 07 34 */	extsh r5, r0
/* 8009ED8C 0009BCCC  A8 1F 30 3A */	lha r0, 0x303a(r31)
/* 8009ED90 0009BCD0  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009ED94 0009BCD4  7C 06 07 34 */	extsh r6, r0
/* 8009ED98 0009BCD8  4B F6 D3 CD */	bl mDoMtx_XYZrotM
/* 8009ED9C 0009BCDC  48 00 00 74 */	b lbl_8009EE10
lbl_8009EDA0:
/* 8009EDA0 0009BCE0  35 1E FF F9 */	addic. r8, r30, -7
/* 8009EDA4 0009BCE4  40 82 00 38 */	bne lbl_8009EDDC
/* 8009EDA8 0009BCE8  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EDAC 0009BCEC  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EDB0 0009BCF0  38 80 00 00 */	li r4, 0
/* 8009EDB4 0009BCF4  A8 1F 30 4E */	lha r0, 0x304e(r31)
/* 8009EDB8 0009BCF8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009EDBC 0009BCFC  7C 05 07 34 */	extsh r5, r0
/* 8009EDC0 0009BD00  A8 1F 30 3A */	lha r0, 0x303a(r31)
/* 8009EDC4 0009BD04  7C 06 0E 70 */	srawi r6, r0, 1
/* 8009EDC8 0009BD08  A8 1F 30 66 */	lha r0, 0x3066(r31)
/* 8009EDCC 0009BD0C  7C 06 02 14 */	add r0, r6, r0
/* 8009EDD0 0009BD10  7C 06 07 34 */	extsh r6, r0
/* 8009EDD4 0009BD14  4B F6 D3 91 */	bl mDoMtx_XYZrotM
/* 8009EDD8 0009BD18  48 00 00 38 */	b lbl_8009EE10
lbl_8009EDDC:
/* 8009EDDC 0009BD1C  57 C0 08 3C */	slwi r0, r30, 1
/* 8009EDE0 0009BD20  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EDE4 0009BD24  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EDE8 0009BD28  38 80 00 00 */	li r4, 0
/* 8009EDEC 0009BD2C  7C DF 02 14 */	add r6, r31, r0
/* 8009EDF0 0009BD30  A8 A6 30 40 */	lha r5, 0x3040(r6)
/* 8009EDF4 0009BD34  A8 E6 30 2C */	lha r7, 0x302c(r6)
/* 8009EDF8 0009BD38  55 00 08 3C */	slwi r0, r8, 1
/* 8009EDFC 0009BD3C  7C DF 02 14 */	add r6, r31, r0
/* 8009EE00 0009BD40  A8 06 30 66 */	lha r0, 0x3066(r6)
/* 8009EE04 0009BD44  7C 07 02 14 */	add r0, r7, r0
/* 8009EE08 0009BD48  7C 06 07 34 */	extsh r6, r0
/* 8009EE0C 0009BD4C  4B F6 D3 59 */	bl mDoMtx_XYZrotM
lbl_8009EE10:
/* 8009EE10 0009BD50  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8009EE14 0009BD54  28 00 01 4D */	cmplwi r0, 0x14d
/* 8009EE18 0009BD58  40 82 00 14 */	bne lbl_8009EE2C
/* 8009EE1C 0009BD5C  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 8009EE20 0009BD60  C0 42 92 B8 */	lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8009EE24 0009BD64  FC 60 10 90 */	fmr f3, f2
/* 8009EE28 0009BD68  4B F6 E0 11 */	bl scaleM__14mDoMtx_stack_cFfff
lbl_8009EE2C:
/* 8009EE2C 0009BD6C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EE30 0009BD70  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EE34 0009BD74  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 8009EE38 0009BD78  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8009EE3C 0009BD7C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8009EE40 0009BD80  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8009EE44 0009BD84  7C 84 02 14 */	add r4, r4, r0
/* 8009EE48 0009BD88  48 2A 76 69 */	bl PSMTXCopy
/* 8009EE4C 0009BD8C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EE50 0009BD90  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EE54 0009BD94  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8009EE58 0009BD98  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8009EE5C 0009BD9C  48 2A 76 55 */	bl PSMTXCopy
/* 8009EE60 0009BDA0  48 00 00 4C */	b lbl_8009EEAC
lbl_8009EE64:
/* 8009EE64 0009BDA4  AB BF 04 E6 */	lha r29, 0x4e6(r31)
/* 8009EE68 0009BDA8  A8 1F 30 62 */	lha r0, 0x3062(r31)
/* 8009EE6C 0009BDAC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8009EE70 0009BDB0  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 8009EE74 0009BDB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009EE78 0009BDB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009EE7C 0009BDBC  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8009EE80 0009BDC0  7C 83 02 14 */	add r4, r3, r0
/* 8009EE84 0009BDC4  57 C0 08 3C */	slwi r0, r30, 1
/* 8009EE88 0009BDC8  7F E3 FB 78 */	mr r3, r31
/* 8009EE8C 0009BDCC  7C FF 02 14 */	add r7, r31, r0
/* 8009EE90 0009BDD0  A8 A7 30 2C */	lha r5, 0x302c(r7)
/* 8009EE94 0009BDD4  38 C0 00 00 */	li r6, 0
/* 8009EE98 0009BDD8  A8 E7 30 40 */	lha r7, 0x3040(r7)
/* 8009EE9C 0009BDDC  39 00 00 00 */	li r8, 0
/* 8009EEA0 0009BDE0  39 20 00 00 */	li r9, 0
/* 8009EEA4 0009BDE4  4B FF ED C9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009EEA8 0009BDE8  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
lbl_8009EEAC:
/* 8009EEAC 0009BDEC  7F E3 FB 78 */	mr r3, r31
/* 8009EEB0 0009BDF0  48 02 0F 01 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 8009EEB4 0009BDF4  2C 03 00 00 */	cmpwi r3, 0
/* 8009EEB8 0009BDF8  41 82 00 64 */	beq lbl_8009EF1C
/* 8009EEBC 0009BDFC  2C 1E 00 06 */	cmpwi r30, 6
/* 8009EEC0 0009BE00  40 82 00 5C */	bne lbl_8009EF1C
/* 8009EEC4 0009BE04  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8009EEC8 0009BE08  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8009EECC 0009BE0C  3C 80 80 3E */	lis r4, lbl_803DD470@ha
/* 8009EED0 0009BE10  38 84 D4 70 */	addi r4, r4, lbl_803DD470@l
/* 8009EED4 0009BE14  48 2A 75 DD */	bl PSMTXCopy
/* 8009EED8 0009BE18  C0 22 94 DC */	lfs f1, lbl_80452EDC-_SDA2_BASE_(r2)
/* 8009EEDC 0009BE1C  C0 42 92 B8 */	lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8009EEE0 0009BE20  FC 60 10 90 */	fmr f3, f2
/* 8009EEE4 0009BE24  4B F6 DF 55 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8009EEE8 0009BE28  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EEEC 0009BE2C  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EEF0 0009BE30  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 8009EEF4 0009BE34  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8009EEF8 0009BE38  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8009EEFC 0009BE3C  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8009EF00 0009BE40  7C 84 02 14 */	add r4, r4, r0
/* 8009EF04 0009BE44  48 2A 75 AD */	bl PSMTXCopy
/* 8009EF08 0009BE48  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009EF0C 0009BE4C  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009EF10 0009BE50  3C 80 80 43 */	lis r4, lbl_80434BE4@ha
/* 8009EF14 0009BE54  38 84 4B E4 */	addi r4, r4, lbl_80434BE4@l
/* 8009EF18 0009BE58  48 2A 75 99 */	bl PSMTXCopy
lbl_8009EF1C:
/* 8009EF1C 0009BE5C  38 60 00 01 */	li r3, 1
/* 8009EF20 0009BE60  39 61 00 20 */	addi r11, r1, 0x20
/* 8009EF24 0009BE64  48 2C 33 05 */	bl _restgpr_29
/* 8009EF28 0009BE68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009EF2C 0009BE6C  7C 08 03 A6 */	mtlr r0
/* 8009EF30 0009BE70  38 21 00 20 */	addi r1, r1, 0x20
/* 8009EF34 0009BE74  4E 80 00 20 */	blr 