/* 8009DD90 0009ACD0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8009DD94 0009ACD4  7C 08 02 A6 */	mflr r0
/* 8009DD98 0009ACD8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8009DD9C 0009ACDC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8009DDA0 0009ACE0  48 2C 44 35 */	bl _savegpr_27
/* 8009DDA4 0009ACE4  7C 7B 1B 78 */	mr r27, r3
/* 8009DDA8 0009ACE8  7C 9F 23 78 */	mr r31, r4
/* 8009DDAC 0009ACEC  38 61 00 10 */	addi r3, r1, 0x10
/* 8009DDB0 0009ACF0  38 80 00 00 */	li r4, 0
/* 8009DDB4 0009ACF4  38 A0 00 00 */	li r5, 0
/* 8009DDB8 0009ACF8  38 C0 00 00 */	li r6, 0
/* 8009DDBC 0009ACFC  48 1C 96 39 */	bl __ct__5csXyzFsss
/* 8009DDC0 0009AD00  3B 80 00 00 */	li r28, 0
/* 8009DDC4 0009AD04  80 DB 20 60 */	lwz r6, 0x2060(r27)
/* 8009DDC8 0009AD08  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8009DDCC 0009AD0C  57 FD 28 34 */	slwi r29, r31, 5
/* 8009DDD0 0009AD10  7C 60 EA 14 */	add r3, r0, r29
/* 8009DDD4 0009AD14  38 A1 00 54 */	addi r5, r1, 0x54
/* 8009DDD8 0009AD18  38 83 FF FC */	addi r4, r3, -4
/* 8009DDDC 0009AD1C  38 00 00 04 */	li r0, 4
/* 8009DDE0 0009AD20  7C 09 03 A6 */	mtctr r0
lbl_8009DDE4:
/* 8009DDE4 0009AD24  80 64 00 04 */	lwz r3, 4(r4)
/* 8009DDE8 0009AD28  84 04 00 08 */	lwzu r0, 8(r4)
/* 8009DDEC 0009AD2C  90 65 00 04 */	stw r3, 4(r5)
/* 8009DDF0 0009AD30  94 05 00 08 */	stwu r0, 8(r5)
/* 8009DDF4 0009AD34  42 00 FF F0 */	bdnz lbl_8009DDE4
/* 8009DDF8 0009AD38  80 06 00 20 */	lwz r0, 0x20(r6)
/* 8009DDFC 0009AD3C  57 FE 20 36 */	slwi r30, r31, 4
/* 8009DE00 0009AD40  7C 80 F2 14 */	add r4, r0, r30
/* 8009DE04 0009AD44  80 64 00 00 */	lwz r3, 0(r4)
/* 8009DE08 0009AD48  80 04 00 04 */	lwz r0, 4(r4)
/* 8009DE0C 0009AD4C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8009DE10 0009AD50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8009DE14 0009AD54  80 64 00 08 */	lwz r3, 8(r4)
/* 8009DE18 0009AD58  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8009DE1C 0009AD5C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8009DE20 0009AD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009DE24 0009AD64  38 61 00 08 */	addi r3, r1, 8
/* 8009DE28 0009AD68  38 80 00 00 */	li r4, 0
/* 8009DE2C 0009AD6C  38 A0 00 01 */	li r5, 1
/* 8009DE30 0009AD70  38 C0 00 02 */	li r6, 2
/* 8009DE34 0009AD74  48 1C 95 C1 */	bl __ct__5csXyzFsss
/* 8009DE38 0009AD78  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 8009DE3C 0009AD7C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8009DE40 0009AD80  41 82 02 1C */	beq lbl_8009E05C
/* 8009DE44 0009AD84  2C 1F 00 00 */	cmpwi r31, 0
/* 8009DE48 0009AD88  40 82 00 E0 */	bne lbl_8009DF28
/* 8009DE4C 0009AD8C  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009DE50 0009AD90  28 00 01 3D */	cmplwi r0, 0x13d
/* 8009DE54 0009AD94  40 82 00 1C */	bne lbl_8009DE70
/* 8009DE58 0009AD98  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DE5C 0009AD9C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DE60 0009ADA0  C0 02 92 C0 */	lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8009DE64 0009ADA4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8009DE68 0009ADA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009DE6C 0009ADAC  48 00 00 50 */	b lbl_8009DEBC
lbl_8009DE70:
/* 8009DE70 0009ADB0  88 9B 2F 99 */	lbz r4, 0x2f99(r27)
/* 8009DE74 0009ADB4  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 8009DE78 0009ADB8  41 82 00 44 */	beq lbl_8009DEBC
/* 8009DE7C 0009ADBC  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DE80 0009ADC0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DE84 0009ADC4  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8009DE88 0009ADC8  41 82 00 0C */	beq lbl_8009DE94
/* 8009DE8C 0009ADCC  C0 1B 35 90 */	lfs f0, 0x3590(r27)
/* 8009DE90 0009ADD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8009DE94:
/* 8009DE94 0009ADD4  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009DE98 0009ADD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009DE9C 0009ADDC  41 82 00 0C */	beq lbl_8009DEA8
/* 8009DEA0 0009ADE0  C0 1B 35 88 */	lfs f0, 0x3588(r27)
/* 8009DEA4 0009ADE4  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8009DEA8:
/* 8009DEA8 0009ADE8  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009DEAC 0009ADEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8009DEB0 0009ADF0  41 82 00 0C */	beq lbl_8009DEBC
/* 8009DEB4 0009ADF4  C0 1B 33 B0 */	lfs f0, 0x33b0(r27)
/* 8009DEB8 0009ADF8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8009DEBC:
/* 8009DEBC 0009ADFC  A8 9B 30 82 */	lha r4, 0x3082(r27)
/* 8009DEC0 0009AE00  A8 1B 30 80 */	lha r0, 0x3080(r27)
/* 8009DEC4 0009AE04  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009DEC8 0009AE08  38 60 00 00 */	li r3, 0
/* 8009DECC 0009AE0C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009DED0 0009AE10  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009DED4 0009AE14  38 00 00 02 */	li r0, 2
/* 8009DED8 0009AE18  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DEDC 0009AE1C  38 00 00 01 */	li r0, 1
/* 8009DEE0 0009AE20  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DEE4 0009AE24  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DEE8 0009AE28  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DEEC 0009AE2C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DEF0 0009AE30  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0
/* 8009DEF4 0009AE34  F0 01 00 78 */	psq_st f0, 120(r1), 0, 0
/* 8009DEF8 0009AE38  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009DEFC 0009AE3C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8009DF00 0009AE40  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009DF04 0009AE44  90 01 00 84 */	stw r0, 0x84(r1)
/* 8009DF08 0009AE48  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8009DF0C 0009AE4C  B0 01 00 88 */	sth r0, 0x88(r1)
/* 8009DF10 0009AE50  E0 03 00 14 */	psq_l f0, 20(r3), 0, 0
/* 8009DF14 0009AE54  F0 01 00 8C */	psq_st f0, 140(r1), 0, 0
/* 8009DF18 0009AE58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009DF1C 0009AE5C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8009DF20 0009AE60  63 9C 00 02 */	ori r28, r28, 2
/* 8009DF24 0009AE64  48 00 05 78 */	b lbl_8009E49C
lbl_8009DF28:
/* 8009DF28 0009AE68  2C 1F 00 03 */	cmpwi r31, 3
/* 8009DF2C 0009AE6C  40 82 00 3C */	bne lbl_8009DF68
/* 8009DF30 0009AE70  A8 9B 30 B0 */	lha r4, 0x30b0(r27)
/* 8009DF34 0009AE74  A8 7B 30 D6 */	lha r3, 0x30d6(r27)
/* 8009DF38 0009AE78  A8 1B 30 B2 */	lha r0, 0x30b2(r27)
/* 8009DF3C 0009AE7C  7C 03 02 14 */	add r0, r3, r0
/* 8009DF40 0009AE80  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009DF44 0009AE84  38 60 00 00 */	li r3, 0
/* 8009DF48 0009AE88  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009DF4C 0009AE8C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009DF50 0009AE90  38 00 00 02 */	li r0, 2
/* 8009DF54 0009AE94  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DF58 0009AE98  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009DF5C 0009AE9C  38 00 00 01 */	li r0, 1
/* 8009DF60 0009AEA0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009DF64 0009AEA4  48 00 05 38 */	b lbl_8009E49C
lbl_8009DF68:
/* 8009DF68 0009AEA8  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 8009DF6C 0009AEAC  40 82 00 34 */	bne lbl_8009DFA0
/* 8009DF70 0009AEB0  A8 1B 2F EC */	lha r0, 0x2fec(r27)
/* 8009DF74 0009AEB4  7C 00 00 D0 */	neg r0, r0
/* 8009DF78 0009AEB8  38 60 00 00 */	li r3, 0
/* 8009DF7C 0009AEBC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DF80 0009AEC0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009DF84 0009AEC4  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009DF88 0009AEC8  38 00 00 02 */	li r0, 2
/* 8009DF8C 0009AECC  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DF90 0009AED0  38 00 00 01 */	li r0, 1
/* 8009DF94 0009AED4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DF98 0009AED8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DF9C 0009AEDC  48 00 05 00 */	b lbl_8009E49C
lbl_8009DFA0:
/* 8009DFA0 0009AEE0  2C 1F 00 25 */	cmpwi r31, 0x25
/* 8009DFA4 0009AEE4  41 80 00 40 */	blt lbl_8009DFE4
/* 8009DFA8 0009AEE8  2C 1F 00 27 */	cmpwi r31, 0x27
/* 8009DFAC 0009AEEC  41 81 00 38 */	bgt lbl_8009DFE4
/* 8009DFB0 0009AEF0  57 E0 08 3C */	slwi r0, r31, 1
/* 8009DFB4 0009AEF4  7C 7B 02 14 */	add r3, r27, r0
/* 8009DFB8 0009AEF8  A8 03 30 4A */	lha r0, 0x304a(r3)
/* 8009DFBC 0009AEFC  38 60 00 00 */	li r3, 0
/* 8009DFC0 0009AF00  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DFC4 0009AF04  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009DFC8 0009AF08  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009DFCC 0009AF0C  38 00 00 02 */	li r0, 2
/* 8009DFD0 0009AF10  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DFD4 0009AF14  38 00 00 01 */	li r0, 1
/* 8009DFD8 0009AF18  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DFDC 0009AF1C  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DFE0 0009AF20  48 00 04 BC */	b lbl_8009E49C
lbl_8009DFE4:
/* 8009DFE4 0009AF24  2C 1F 00 02 */	cmpwi r31, 2
/* 8009DFE8 0009AF28  40 82 00 34 */	bne lbl_8009E01C
/* 8009DFEC 0009AF2C  A8 1B 2F EC */	lha r0, 0x2fec(r27)
/* 8009DFF0 0009AF30  7C 00 00 D0 */	neg r0, r0
/* 8009DFF4 0009AF34  38 60 00 00 */	li r3, 0
/* 8009DFF8 0009AF38  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DFFC 0009AF3C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E000 0009AF40  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009E004 0009AF44  38 00 00 02 */	li r0, 2
/* 8009E008 0009AF48  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E00C 0009AF4C  38 00 00 01 */	li r0, 1
/* 8009E010 0009AF50  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E014 0009AF54  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009E018 0009AF58  48 00 04 84 */	b lbl_8009E49C
lbl_8009E01C:
/* 8009E01C 0009AF5C  2C 1F 00 04 */	cmpwi r31, 4
/* 8009E020 0009AF60  40 82 04 7C */	bne lbl_8009E49C
/* 8009E024 0009AF64  A8 9B 31 28 */	lha r4, 0x3128(r27)
/* 8009E028 0009AF68  A8 1B 31 26 */	lha r0, 0x3126(r27)
/* 8009E02C 0009AF6C  7C 60 00 D0 */	neg r3, r0
/* 8009E030 0009AF70  A8 1B 31 24 */	lha r0, 0x3124(r27)
/* 8009E034 0009AF74  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E038 0009AF78  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E03C 0009AF7C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E040 0009AF80  38 00 00 02 */	li r0, 2
/* 8009E044 0009AF84  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E048 0009AF88  38 00 00 01 */	li r0, 1
/* 8009E04C 0009AF8C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E050 0009AF90  38 00 00 00 */	li r0, 0
/* 8009E054 0009AF94  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E058 0009AF98  48 00 04 44 */	b lbl_8009E49C
lbl_8009E05C:
/* 8009E05C 0009AF9C  2C 1F 00 04 */	cmpwi r31, 4
/* 8009E060 0009AFA0  40 82 00 3C */	bne lbl_8009E09C
/* 8009E064 0009AFA4  A8 9B 31 28 */	lha r4, 0x3128(r27)
/* 8009E068 0009AFA8  A8 1B 31 26 */	lha r0, 0x3126(r27)
/* 8009E06C 0009AFAC  7C 60 00 D0 */	neg r3, r0
/* 8009E070 0009AFB0  A8 1B 31 24 */	lha r0, 0x3124(r27)
/* 8009E074 0009AFB4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E078 0009AFB8  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E07C 0009AFBC  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E080 0009AFC0  38 00 00 02 */	li r0, 2
/* 8009E084 0009AFC4  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E088 0009AFC8  38 00 00 01 */	li r0, 1
/* 8009E08C 0009AFCC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E090 0009AFD0  38 00 00 00 */	li r0, 0
/* 8009E094 0009AFD4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E098 0009AFD8  48 00 04 04 */	b lbl_8009E49C
lbl_8009E09C:
/* 8009E09C 0009AFDC  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8009E0A0 0009AFE0  40 82 00 38 */	bne lbl_8009E0D8
/* 8009E0A4 0009AFE4  A8 1B 30 8A */	lha r0, 0x308a(r27)
/* 8009E0A8 0009AFE8  7C 80 00 D0 */	neg r4, r0
/* 8009E0AC 0009AFEC  A8 1B 30 88 */	lha r0, 0x3088(r27)
/* 8009E0B0 0009AFF0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E0B4 0009AFF4  38 60 00 00 */	li r3, 0
/* 8009E0B8 0009AFF8  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E0BC 0009AFFC  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E0C0 0009B000  38 00 00 02 */	li r0, 2
/* 8009E0C4 0009B004  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E0C8 0009B008  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009E0CC 0009B00C  38 00 00 01 */	li r0, 1
/* 8009E0D0 0009B010  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E0D4 0009B014  48 00 03 C8 */	b lbl_8009E49C
lbl_8009E0D8:
/* 8009E0D8 0009B018  2C 1F 00 01 */	cmpwi r31, 1
/* 8009E0DC 0009B01C  40 82 00 B0 */	bne lbl_8009E18C
/* 8009E0E0 0009B020  38 00 00 00 */	li r0, 0
/* 8009E0E4 0009B024  88 7B 2F AA */	lbz r3, 0x2faa(r27)
/* 8009E0E8 0009B028  28 03 00 01 */	cmplwi r3, 1
/* 8009E0EC 0009B02C  41 82 00 0C */	beq lbl_8009E0F8
/* 8009E0F0 0009B030  28 03 00 02 */	cmplwi r3, 2
/* 8009E0F4 0009B034  40 82 00 08 */	bne lbl_8009E0FC
lbl_8009E0F8:
/* 8009E0F8 0009B038  38 00 00 01 */	li r0, 1
lbl_8009E0FC:
/* 8009E0FC 0009B03C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009E100 0009B040  41 82 00 3C */	beq lbl_8009E13C
/* 8009E104 0009B044  7F 63 DB 78 */	mr r3, r27
/* 8009E108 0009B048  48 04 ED FD */	bl checkHorseLieAnime__9daAlink_cCFv
/* 8009E10C 0009B04C  2C 03 00 00 */	cmpwi r3, 0
/* 8009E110 0009B050  40 82 00 2C */	bne lbl_8009E13C
/* 8009E114 0009B054  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009E118 0009B058  28 00 00 4F */	cmplwi r0, 0x4f
/* 8009E11C 0009B05C  41 82 00 20 */	beq lbl_8009E13C
/* 8009E120 0009B060  28 00 00 53 */	cmplwi r0, 0x53
/* 8009E124 0009B064  41 82 00 18 */	beq lbl_8009E13C
/* 8009E128 0009B068  A8 7B 04 E4 */	lha r3, 0x4e4(r27)
/* 8009E12C 0009B06C  A8 1B 05 9C */	lha r0, 0x59c(r27)
/* 8009E130 0009B070  7C 03 00 50 */	subf r0, r3, r0
/* 8009E134 0009B074  7C 05 07 34 */	extsh r5, r0
/* 8009E138 0009B078  48 00 00 08 */	b lbl_8009E140
lbl_8009E13C:
/* 8009E13C 0009B07C  A8 BB 05 9C */	lha r5, 0x59c(r27)
lbl_8009E140:
/* 8009E140 0009B080  7C A0 07 35 */	extsh. r0, r5
/* 8009E144 0009B084  40 82 00 1C */	bne lbl_8009E160
/* 8009E148 0009B088  A8 1B 30 C8 */	lha r0, 0x30c8(r27)
/* 8009E14C 0009B08C  2C 00 00 00 */	cmpwi r0, 0
/* 8009E150 0009B090  40 82 00 10 */	bne lbl_8009E160
/* 8009E154 0009B094  A8 1B 05 A0 */	lha r0, 0x5a0(r27)
/* 8009E158 0009B098  2C 00 00 00 */	cmpwi r0, 0
/* 8009E15C 0009B09C  41 82 03 40 */	beq lbl_8009E49C
lbl_8009E160:
/* 8009E160 0009B0A0  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E164 0009B0A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E168 0009B0A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E16C 0009B0AC  38 83 00 30 */	addi r4, r3, 0x30
/* 8009E170 0009B0B0  7F 63 DB 78 */	mr r3, r27
/* 8009E174 0009B0B4  A8 DB 30 C8 */	lha r6, 0x30c8(r27)
/* 8009E178 0009B0B8  A8 FB 05 A0 */	lha r7, 0x5a0(r27)
/* 8009E17C 0009B0BC  39 00 00 01 */	li r8, 1
/* 8009E180 0009B0C0  39 20 00 00 */	li r9, 0
/* 8009E184 0009B0C4  4B FF FA E9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E188 0009B0C8  48 00 03 14 */	b lbl_8009E49C
lbl_8009E18C:
/* 8009E18C 0009B0CC  2C 1F 00 02 */	cmpwi r31, 2
/* 8009E190 0009B0D0  40 82 00 3C */	bne lbl_8009E1CC
/* 8009E194 0009B0D4  A8 DB 30 C8 */	lha r6, 0x30c8(r27)
/* 8009E198 0009B0D8  7C C0 07 35 */	extsh. r0, r6
/* 8009E19C 0009B0DC  41 82 03 00 */	beq lbl_8009E49C
/* 8009E1A0 0009B0E0  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E1A4 0009B0E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E1A8 0009B0E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E1AC 0009B0EC  38 83 00 60 */	addi r4, r3, 0x60
/* 8009E1B0 0009B0F0  7F 63 DB 78 */	mr r3, r27
/* 8009E1B4 0009B0F4  38 A0 00 00 */	li r5, 0
/* 8009E1B8 0009B0F8  38 E0 00 00 */	li r7, 0
/* 8009E1BC 0009B0FC  39 00 00 01 */	li r8, 1
/* 8009E1C0 0009B100  39 20 00 00 */	li r9, 0
/* 8009E1C4 0009B104  4B FF FA A9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E1C8 0009B108  48 00 02 D4 */	b lbl_8009E49C
lbl_8009E1CC:
/* 8009E1CC 0009B10C  2C 1F 00 00 */	cmpwi r31, 0
/* 8009E1D0 0009B110  40 82 01 24 */	bne lbl_8009E2F4
/* 8009E1D4 0009B114  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009E1D8 0009B118  28 00 01 3D */	cmplwi r0, 0x13d
/* 8009E1DC 0009B11C  41 82 00 0C */	beq lbl_8009E1E8
/* 8009E1E0 0009B120  28 00 00 E6 */	cmplwi r0, 0xe6
/* 8009E1E4 0009B124  40 82 00 1C */	bne lbl_8009E200
lbl_8009E1E8:
/* 8009E1E8 0009B128  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E1EC 0009B12C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E1F0 0009B130  C0 02 92 C0 */	lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8009E1F4 0009B134  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8009E1F8 0009B138  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009E1FC 0009B13C  48 00 00 50 */	b lbl_8009E24C
lbl_8009E200:
/* 8009E200 0009B140  88 9B 2F 99 */	lbz r4, 0x2f99(r27)
/* 8009E204 0009B144  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 8009E208 0009B148  41 82 00 44 */	beq lbl_8009E24C
/* 8009E20C 0009B14C  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E210 0009B150  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E214 0009B154  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8009E218 0009B158  41 82 00 0C */	beq lbl_8009E224
/* 8009E21C 0009B15C  C0 1B 35 90 */	lfs f0, 0x3590(r27)
/* 8009E220 0009B160  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8009E224:
/* 8009E224 0009B164  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E228 0009B168  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009E22C 0009B16C  41 82 00 0C */	beq lbl_8009E238
/* 8009E230 0009B170  C0 1B 35 88 */	lfs f0, 0x3588(r27)
/* 8009E234 0009B174  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8009E238:
/* 8009E238 0009B178  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E23C 0009B17C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8009E240 0009B180  41 82 00 0C */	beq lbl_8009E24C
/* 8009E244 0009B184  C0 1B 33 B0 */	lfs f0, 0x33b0(r27)
/* 8009E248 0009B188  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8009E24C:
/* 8009E24C 0009B18C  A8 9B 30 82 */	lha r4, 0x3082(r27)
/* 8009E250 0009B190  A8 1B 30 80 */	lha r0, 0x3080(r27)
/* 8009E254 0009B194  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E258 0009B198  38 60 00 00 */	li r3, 0
/* 8009E25C 0009B19C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E260 0009B1A0  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E264 0009B1A4  38 00 00 02 */	li r0, 2
/* 8009E268 0009B1A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E26C 0009B1AC  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009E270 0009B1B0  38 00 00 01 */	li r0, 1
/* 8009E274 0009B1B4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E278 0009B1B8  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E27C 0009B1BC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E280 0009B1C0  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0
/* 8009E284 0009B1C4  F0 01 00 78 */	psq_st f0, 120(r1), 0, 0
/* 8009E288 0009B1C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E28C 0009B1CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8009E290 0009B1D0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009E294 0009B1D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8009E298 0009B1D8  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8009E29C 0009B1DC  B0 01 00 88 */	sth r0, 0x88(r1)
/* 8009E2A0 0009B1E0  E0 03 00 14 */	psq_l f0, 20(r3), 0, 0
/* 8009E2A4 0009B1E4  F0 01 00 8C */	psq_st f0, 140(r1), 0, 0
/* 8009E2A8 0009B1E8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8009E2AC 0009B1EC  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8009E2B0 0009B1F0  63 9C 00 02 */	ori r28, r28, 2
/* 8009E2B4 0009B1F4  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E2B8 0009B1F8  28 00 00 60 */	cmplwi r0, 0x60
/* 8009E2BC 0009B1FC  40 82 01 E0 */	bne lbl_8009E49C
/* 8009E2C0 0009B200  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 8009E2C4 0009B204  80 7B 38 4C */	lwz r3, 0x384c(r27)
/* 8009E2C8 0009B208  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E2CC 0009B20C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009E2D0 0009B210  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8009E2D4 0009B214  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8009E2D8 0009B218  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E2DC 0009B21C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009E2E0 0009B220  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8009E2E4 0009B224  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E2E8 0009B228  EC 02 00 28 */	fsubs f0, f2, f0
/* 8009E2EC 0009B22C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8009E2F0 0009B230  48 00 01 AC */	b lbl_8009E49C
lbl_8009E2F4:
/* 8009E2F4 0009B234  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 8009E2F8 0009B238  40 82 00 38 */	bne lbl_8009E330
/* 8009E2FC 0009B23C  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E300 0009B240  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E304 0009B244  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E308 0009B248  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E30C 0009B24C  7C 83 02 14 */	add r4, r3, r0
/* 8009E310 0009B250  7F 63 DB 78 */	mr r3, r27
/* 8009E314 0009B254  A8 BB 29 0A */	lha r5, 0x290a(r27)
/* 8009E318 0009B258  38 C0 00 00 */	li r6, 0
/* 8009E31C 0009B25C  38 E0 00 00 */	li r7, 0
/* 8009E320 0009B260  39 00 00 01 */	li r8, 1
/* 8009E324 0009B264  39 20 00 00 */	li r9, 0
/* 8009E328 0009B268  4B FF F9 45 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E32C 0009B26C  48 00 01 70 */	b lbl_8009E49C
lbl_8009E330:
/* 8009E330 0009B270  2C 1F 00 1D */	cmpwi r31, 0x1d
/* 8009E334 0009B274  40 82 00 38 */	bne lbl_8009E36C
/* 8009E338 0009B278  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E33C 0009B27C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E340 0009B280  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E344 0009B284  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E348 0009B288  7C 83 02 14 */	add r4, r3, r0
/* 8009E34C 0009B28C  7F 63 DB 78 */	mr r3, r27
/* 8009E350 0009B290  A8 BB 29 AE */	lha r5, 0x29ae(r27)
/* 8009E354 0009B294  38 C0 00 00 */	li r6, 0
/* 8009E358 0009B298  38 E0 00 00 */	li r7, 0
/* 8009E35C 0009B29C  39 00 00 01 */	li r8, 1
/* 8009E360 0009B2A0  39 20 00 00 */	li r9, 0
/* 8009E364 0009B2A4  4B FF F9 09 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E368 0009B2A8  48 00 01 34 */	b lbl_8009E49C
lbl_8009E36C:
/* 8009E36C 0009B2AC  2C 1F 00 05 */	cmpwi r31, 5
/* 8009E370 0009B2B0  40 82 00 90 */	bne lbl_8009E400
/* 8009E374 0009B2B4  38 00 00 00 */	li r0, 0
/* 8009E378 0009B2B8  88 7B 2F AA */	lbz r3, 0x2faa(r27)
/* 8009E37C 0009B2BC  28 03 00 01 */	cmplwi r3, 1
/* 8009E380 0009B2C0  41 82 00 0C */	beq lbl_8009E38C
/* 8009E384 0009B2C4  28 03 00 02 */	cmplwi r3, 2
/* 8009E388 0009B2C8  40 82 00 08 */	bne lbl_8009E390
lbl_8009E38C:
/* 8009E38C 0009B2CC  38 00 00 01 */	li r0, 1
lbl_8009E390:
/* 8009E390 0009B2D0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009E394 0009B2D4  41 82 01 08 */	beq lbl_8009E49C
/* 8009E398 0009B2D8  7F 63 DB 78 */	mr r3, r27
/* 8009E39C 0009B2DC  48 04 06 4D */	bl checkBowAnime__9daAlink_cCFv
/* 8009E3A0 0009B2E0  2C 03 00 00 */	cmpwi r3, 0
/* 8009E3A4 0009B2E4  41 82 00 F8 */	beq lbl_8009E49C
/* 8009E3A8 0009B2E8  3B 80 00 01 */	li r28, 1
/* 8009E3AC 0009B2EC  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E3B0 0009B2F0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E3B4 0009B2F4  7C 60 F2 14 */	add r3, r0, r30
/* 8009E3B8 0009B2F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E3BC 0009B2FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E3C0 0009B300  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E3C4 0009B304  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E3C8 0009B308  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E3CC 0009B30C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E3D0 0009B310  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E3D4 0009B314  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E3D8 0009B318  38 60 00 00 */	li r3, 0
/* 8009E3DC 0009B31C  38 80 00 00 */	li r4, 0
/* 8009E3E0 0009B320  38 A0 13 88 */	li r5, 0x1388
/* 8009E3E4 0009B324  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E3E8 0009B328  48 29 B4 91 */	bl JMAEulerToQuat
/* 8009E3EC 0009B32C  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E3F0 0009B330  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E3F4 0009B334  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E3F8 0009B338  4B F6 E7 65 */	bl mDoMtx_QuatConcat
/* 8009E3FC 0009B33C  48 00 00 A0 */	b lbl_8009E49C
lbl_8009E400:
/* 8009E400 0009B340  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8009E404 0009B344  41 82 00 0C */	beq lbl_8009E410
/* 8009E408 0009B348  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8009E40C 0009B34C  40 82 00 90 */	bne lbl_8009E49C
lbl_8009E410:
/* 8009E410 0009B350  38 60 00 00 */	li r3, 0
/* 8009E414 0009B354  A0 1B 1F BC */	lhz r0, 0x1fbc(r27)
/* 8009E418 0009B358  28 00 00 5D */	cmplwi r0, 0x5d
/* 8009E41C 0009B35C  41 82 00 10 */	beq lbl_8009E42C
/* 8009E420 0009B360  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8009E424 0009B364  28 00 02 60 */	cmplwi r0, 0x260
/* 8009E428 0009B368  40 82 00 08 */	bne lbl_8009E430
lbl_8009E42C:
/* 8009E42C 0009B36C  38 60 00 01 */	li r3, 1
lbl_8009E430:
/* 8009E430 0009B370  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009E434 0009B374  40 82 00 2C */	bne lbl_8009E460
/* 8009E438 0009B378  7F 63 DB 78 */	mr r3, r27
/* 8009E43C 0009B37C  38 80 00 E0 */	li r4, 0xe0
/* 8009E440 0009B380  48 00 E1 19 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009E444 0009B384  2C 03 00 00 */	cmpwi r3, 0
/* 8009E448 0009B388  40 82 00 18 */	bne lbl_8009E460
/* 8009E44C 0009B38C  7F 63 DB 78 */	mr r3, r27
/* 8009E450 0009B390  38 80 00 E1 */	li r4, 0xe1
/* 8009E454 0009B394  48 00 E1 05 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009E458 0009B398  2C 03 00 00 */	cmpwi r3, 0
/* 8009E45C 0009B39C  41 82 00 40 */	beq lbl_8009E49C
lbl_8009E460:
/* 8009E460 0009B3A0  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8009E464 0009B3A4  40 82 00 20 */	bne lbl_8009E484
/* 8009E468 0009B3A8  A8 1B 31 60 */	lha r0, 0x3160(r27)
/* 8009E46C 0009B3AC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E470 0009B3B0  A8 1B 31 62 */	lha r0, 0x3162(r27)
/* 8009E474 0009B3B4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E478 0009B3B8  A8 1B 31 64 */	lha r0, 0x3164(r27)
/* 8009E47C 0009B3BC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8009E480 0009B3C0  48 00 00 1C */	b lbl_8009E49C
lbl_8009E484:
/* 8009E484 0009B3C4  A8 1B 31 5A */	lha r0, 0x315a(r27)
/* 8009E488 0009B3C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E48C 0009B3CC  A8 1B 31 5C */	lha r0, 0x315c(r27)
/* 8009E490 0009B3D0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E494 0009B3D4  A8 1B 31 5E */	lha r0, 0x315e(r27)
/* 8009E498 0009B3D8  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_8009E49C:
/* 8009E49C 0009B3DC  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8009E4A0 0009B3E0  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4A4 0009B3E4  40 82 00 1C */	bne lbl_8009E4C0
/* 8009E4A8 0009B3E8  A8 01 00 12 */	lha r0, 0x12(r1)
/* 8009E4AC 0009B3EC  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4B0 0009B3F0  40 82 00 10 */	bne lbl_8009E4C0
/* 8009E4B4 0009B3F4  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8009E4B8 0009B3F8  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4BC 0009B3FC  41 82 01 F4 */	beq lbl_8009E6B0
lbl_8009E4C0:
/* 8009E4C0 0009B400  63 9C 00 01 */	ori r28, r28, 1
/* 8009E4C4 0009B404  A8 A1 00 12 */	lha r5, 0x12(r1)
/* 8009E4C8 0009B408  7C A0 07 35 */	extsh. r0, r5
/* 8009E4CC 0009B40C  41 82 00 98 */	beq lbl_8009E564
/* 8009E4D0 0009B410  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E4D4 0009B414  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E4D8 0009B418  7C 60 F2 14 */	add r3, r0, r30
/* 8009E4DC 0009B41C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E4E0 0009B420  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E4E4 0009B424  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E4E8 0009B428  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E4EC 0009B42C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E4F0 0009B430  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E4F4 0009B434  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E4F8 0009B438  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E4FC 0009B43C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8009E500 0009B440  7C 60 07 35 */	extsh. r0, r3
/* 8009E504 0009B444  40 82 00 1C */	bne lbl_8009E520
/* 8009E508 0009B448  7C A3 2B 78 */	mr r3, r5
/* 8009E50C 0009B44C  38 80 00 00 */	li r4, 0
/* 8009E510 0009B450  38 A0 00 00 */	li r5, 0
/* 8009E514 0009B454  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E518 0009B458  48 29 B3 61 */	bl JMAEulerToQuat
/* 8009E51C 0009B45C  48 00 00 34 */	b lbl_8009E550
lbl_8009E520:
/* 8009E520 0009B460  2C 03 00 01 */	cmpwi r3, 1
/* 8009E524 0009B464  40 82 00 1C */	bne lbl_8009E540
/* 8009E528 0009B468  38 60 00 00 */	li r3, 0
/* 8009E52C 0009B46C  7C A4 2B 78 */	mr r4, r5
/* 8009E530 0009B470  38 A0 00 00 */	li r5, 0
/* 8009E534 0009B474  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E538 0009B478  48 29 B3 41 */	bl JMAEulerToQuat
/* 8009E53C 0009B47C  48 00 00 14 */	b lbl_8009E550
lbl_8009E540:
/* 8009E540 0009B480  38 60 00 00 */	li r3, 0
/* 8009E544 0009B484  38 80 00 00 */	li r4, 0
/* 8009E548 0009B488  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E54C 0009B48C  48 29 B3 2D */	bl JMAEulerToQuat
lbl_8009E550:
/* 8009E550 0009B490  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E554 0009B494  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E558 0009B498  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E55C 0009B49C  4B F6 E6 01 */	bl mDoMtx_QuatConcat
/* 8009E560 0009B4A0  48 00 00 30 */	b lbl_8009E590
lbl_8009E564:
/* 8009E564 0009B4A4  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E568 0009B4A8  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E56C 0009B4AC  7C 60 F2 14 */	add r3, r0, r30
/* 8009E570 0009B4B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E574 0009B4B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009E578 0009B4B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E57C 0009B4BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8009E580 0009B4C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E584 0009B4C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8009E588 0009B4C8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E58C 0009B4CC  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_8009E590:
/* 8009E590 0009B4D0  A8 A1 00 10 */	lha r5, 0x10(r1)
/* 8009E594 0009B4D4  7C A0 07 35 */	extsh. r0, r5
/* 8009E598 0009B4D8  41 82 00 88 */	beq lbl_8009E620
/* 8009E59C 0009B4DC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009E5A0 0009B4E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E5A4 0009B4E4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009E5A8 0009B4E8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E5AC 0009B4EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8009E5B0 0009B4F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E5B4 0009B4F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009E5B8 0009B4F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E5BC 0009B4FC  A8 61 00 08 */	lha r3, 8(r1)
/* 8009E5C0 0009B500  7C 60 07 35 */	extsh. r0, r3
/* 8009E5C4 0009B504  40 82 00 1C */	bne lbl_8009E5E0
/* 8009E5C8 0009B508  7C A3 2B 78 */	mr r3, r5
/* 8009E5CC 0009B50C  38 80 00 00 */	li r4, 0
/* 8009E5D0 0009B510  38 A0 00 00 */	li r5, 0
/* 8009E5D4 0009B514  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E5D8 0009B518  48 29 B2 A1 */	bl JMAEulerToQuat
/* 8009E5DC 0009B51C  48 00 00 34 */	b lbl_8009E610
lbl_8009E5E0:
/* 8009E5E0 0009B520  2C 03 00 01 */	cmpwi r3, 1
/* 8009E5E4 0009B524  40 82 00 1C */	bne lbl_8009E600
/* 8009E5E8 0009B528  38 60 00 00 */	li r3, 0
/* 8009E5EC 0009B52C  7C A4 2B 78 */	mr r4, r5
/* 8009E5F0 0009B530  38 A0 00 00 */	li r5, 0
/* 8009E5F4 0009B534  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E5F8 0009B538  48 29 B2 81 */	bl JMAEulerToQuat
/* 8009E5FC 0009B53C  48 00 00 14 */	b lbl_8009E610
lbl_8009E600:
/* 8009E600 0009B540  38 60 00 00 */	li r3, 0
/* 8009E604 0009B544  38 80 00 00 */	li r4, 0
/* 8009E608 0009B548  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E60C 0009B54C  48 29 B2 6D */	bl JMAEulerToQuat
lbl_8009E610:
/* 8009E610 0009B550  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E614 0009B554  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E618 0009B558  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E61C 0009B55C  4B F6 E5 41 */	bl mDoMtx_QuatConcat
lbl_8009E620:
/* 8009E620 0009B560  A8 A1 00 14 */	lha r5, 0x14(r1)
/* 8009E624 0009B564  7C A0 07 35 */	extsh. r0, r5
/* 8009E628 0009B568  41 82 00 88 */	beq lbl_8009E6B0
/* 8009E62C 0009B56C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009E630 0009B570  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E634 0009B574  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009E638 0009B578  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E63C 0009B57C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8009E640 0009B580  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E644 0009B584  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009E648 0009B588  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E64C 0009B58C  A8 61 00 0C */	lha r3, 0xc(r1)
/* 8009E650 0009B590  7C 60 07 35 */	extsh. r0, r3
/* 8009E654 0009B594  40 82 00 1C */	bne lbl_8009E670
/* 8009E658 0009B598  7C A3 2B 78 */	mr r3, r5
/* 8009E65C 0009B59C  38 80 00 00 */	li r4, 0
/* 8009E660 0009B5A0  38 A0 00 00 */	li r5, 0
/* 8009E664 0009B5A4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E668 0009B5A8  48 29 B2 11 */	bl JMAEulerToQuat
/* 8009E66C 0009B5AC  48 00 00 34 */	b lbl_8009E6A0
lbl_8009E670:
/* 8009E670 0009B5B0  2C 03 00 01 */	cmpwi r3, 1
/* 8009E674 0009B5B4  40 82 00 1C */	bne lbl_8009E690
/* 8009E678 0009B5B8  38 60 00 00 */	li r3, 0
/* 8009E67C 0009B5BC  7C A4 2B 78 */	mr r4, r5
/* 8009E680 0009B5C0  38 A0 00 00 */	li r5, 0
/* 8009E684 0009B5C4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E688 0009B5C8  48 29 B1 F1 */	bl JMAEulerToQuat
/* 8009E68C 0009B5CC  48 00 00 14 */	b lbl_8009E6A0
lbl_8009E690:
/* 8009E690 0009B5D0  38 60 00 00 */	li r3, 0
/* 8009E694 0009B5D4  38 80 00 00 */	li r4, 0
/* 8009E698 0009B5D8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E69C 0009B5DC  48 29 B1 DD */	bl JMAEulerToQuat
lbl_8009E6A0:
/* 8009E6A0 0009B5E0  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E6A4 0009B5E4  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E6A8 0009B5E8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E6AC 0009B5EC  4B F6 E4 B1 */	bl mDoMtx_QuatConcat
lbl_8009E6B0:
/* 8009E6B0 0009B5F0  2C 1C 00 00 */	cmpwi r28, 0
/* 8009E6B4 0009B5F4  41 82 00 E8 */	beq lbl_8009E79C
/* 8009E6B8 0009B5F8  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E6BC 0009B5FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E6C0 0009B600  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E6C4 0009B604  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E6C8 0009B608  7F E3 02 14 */	add r31, r3, r0
/* 8009E6CC 0009B60C  57 80 07 BD */	rlwinm. r0, r28, 0, 0x1e, 0x1e
/* 8009E6D0 0009B610  41 82 00 0C */	beq lbl_8009E6DC
/* 8009E6D4 0009B614  3B A1 00 78 */	addi r29, r1, 0x78
/* 8009E6D8 0009B618  48 00 00 14 */	b lbl_8009E6EC
lbl_8009E6DC:
/* 8009E6DC 0009B61C  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E6E0 0009B620  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8009E6E4 0009B624  7C 00 EA 14 */	add r0, r0, r29
/* 8009E6E8 0009B628  7C 1D 03 78 */	mr r29, r0
lbl_8009E6EC:
/* 8009E6EC 0009B62C  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 8009E6F0 0009B630  41 82 00 0C */	beq lbl_8009E6FC
/* 8009E6F4 0009B634  3B 61 00 28 */	addi r27, r1, 0x28
/* 8009E6F8 0009B638  48 00 00 14 */	b lbl_8009E70C
lbl_8009E6FC:
/* 8009E6FC 0009B63C  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E700 0009B640  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E704 0009B644  7C 00 F2 14 */	add r0, r0, r30
/* 8009E708 0009B648  7C 1B 03 78 */	mr r27, r0
lbl_8009E70C:
/* 8009E70C 0009B64C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009E710 0009B650  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009E714 0009B654  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8009E718 0009B658  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8009E71C 0009B65C  C0 61 00 74 */	lfs f3, 0x74(r1)
/* 8009E720 0009B660  48 2A 81 C9 */	bl PSMTXTrans
/* 8009E724 0009B664  38 61 00 18 */	addi r3, r1, 0x18
/* 8009E728 0009B668  4B F6 E8 55 */	bl quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8009E72C 0009B66C  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009E730 0009B670  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009E734 0009B674  7C 64 1B 78 */	mr r4, r3
/* 8009E738 0009B678  48 2A 7E 79 */	bl PSMTXInverse
/* 8009E73C 0009B67C  7F E3 FB 78 */	mr r3, r31
/* 8009E740 0009B680  3C 80 80 3E */	lis r4, lbl_803DD470@ha
/* 8009E744 0009B684  38 84 D4 70 */	addi r4, r4, lbl_803DD470@l
/* 8009E748 0009B688  3C A0 80 43 */	lis r5, lbl_80434BE4@ha
/* 8009E74C 0009B68C  38 A5 4B E4 */	addi r5, r5, lbl_80434BE4@l
/* 8009E750 0009B690  48 2A 7D 95 */	bl PSMTXConcat
/* 8009E754 0009B694  7F E3 FB 78 */	mr r3, r31
/* 8009E758 0009B698  7F 64 DB 78 */	mr r4, r27
/* 8009E75C 0009B69C  48 2A 82 8D */	bl PSMTXQuat
/* 8009E760 0009B6A0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8009E764 0009B6A4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8009E768 0009B6A8  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8009E76C 0009B6AC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8009E770 0009B6B0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8009E774 0009B6B4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8009E778 0009B6B8  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8009E77C 0009B6BC  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8009E780 0009B6C0  7F E4 FB 78 */	mr r4, r31
/* 8009E784 0009B6C4  7C 65 1B 78 */	mr r5, r3
/* 8009E788 0009B6C8  48 2A 7D 5D */	bl PSMTXConcat
/* 8009E78C 0009B6CC  3C 60 80 43 */	lis r3, lbl_80434BE4@ha
/* 8009E790 0009B6D0  38 63 4B E4 */	addi r3, r3, lbl_80434BE4@l
/* 8009E794 0009B6D4  7F E4 FB 78 */	mr r4, r31
/* 8009E798 0009B6D8  48 2A 7D 19 */	bl PSMTXCopy
lbl_8009E79C:
/* 8009E79C 0009B6DC  38 60 00 01 */	li r3, 1
/* 8009E7A0 0009B6E0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8009E7A4 0009B6E4  48 2C 3A 7D */	bl _restgpr_27
/* 8009E7A8 0009B6E8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8009E7AC 0009B6EC  7C 08 03 A6 */	mtlr r0
/* 8009E7B0 0009B6F0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8009E7B4 0009B6F4  4E 80 00 20 */	blr 