lbl_80012E3C:
/* 80012E3C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80012E40  7C 08 02 A6 */	mflr r0
/* 80012E44  90 01 01 74 */	stw r0, 0x174(r1)
/* 80012E48  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80012E4C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80012E50  39 61 01 60 */	addi r11, r1, 0x160
/* 80012E54  48 34 F3 5D */	bl _savegpr_18
/* 80012E58  7C 72 1B 78 */	mr r18, r3
/* 80012E5C  88 05 00 00 */	lbz r0, 0(r5)
/* 80012E60  98 03 00 08 */	stb r0, 8(r3)
/* 80012E64  88 05 00 01 */	lbz r0, 1(r5)
/* 80012E68  98 03 00 09 */	stb r0, 9(r3)
/* 80012E6C  88 05 00 02 */	lbz r0, 2(r5)
/* 80012E70  98 03 00 0A */	stb r0, 0xa(r3)
/* 80012E74  88 05 00 03 */	lbz r0, 3(r5)
/* 80012E78  98 03 00 0B */	stb r0, 0xb(r3)
/* 80012E7C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80012E80  2C 04 00 00 */	cmpwi r4, 0
/* 80012E84  40 80 00 10 */	bge lbl_80012E94
/* 80012E88  A0 12 00 12 */	lhz r0, 0x12(r18)
/* 80012E8C  B0 12 00 14 */	sth r0, 0x14(r18)
/* 80012E90  48 00 00 1C */	b lbl_80012EAC
lbl_80012E94:
/* 80012E94  A0 12 00 12 */	lhz r0, 0x12(r18)
/* 80012E98  7C 04 00 00 */	cmpw r4, r0
/* 80012E9C  40 81 00 0C */	ble lbl_80012EA8
/* 80012EA0  B0 12 00 14 */	sth r0, 0x14(r18)
/* 80012EA4  48 00 00 08 */	b lbl_80012EAC
lbl_80012EA8:
/* 80012EA8  B0 92 00 14 */	sth r4, 0x14(r18)
lbl_80012EAC:
/* 80012EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80012EB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80012EB4  83 E3 61 B0 */	lwz r31, 0x61b0(r3)
/* 80012EB8  83 D2 00 18 */	lwz r30, 0x18(r18)
/* 80012EBC  A0 12 00 14 */	lhz r0, 0x14(r18)
/* 80012EC0  54 00 08 3C */	slwi r0, r0, 1
/* 80012EC4  1F A0 00 0C */	mulli r29, r0, 0xc
/* 80012EC8  1F 80 00 03 */	mulli r28, r0, 3
/* 80012ECC  3A 80 00 00 */	li r20, 0
/* 80012ED0  C3 E2 81 30 */	lfs f31, lit_7404(r2)
/* 80012ED4  48 00 04 60 */	b lbl_80013334
lbl_80012ED8:
/* 80012ED8  83 7E 00 00 */	lwz r27, 0(r30)
/* 80012EDC  82 BE 00 04 */	lwz r21, 4(r30)
/* 80012EE0  88 12 00 16 */	lbz r0, 0x16(r18)
/* 80012EE4  54 00 10 3A */	slwi r0, r0, 2
/* 80012EE8  7C 7E 02 14 */	add r3, r30, r0
/* 80012EEC  83 23 00 08 */	lwz r25, 8(r3)
/* 80012EF0  82 C3 00 10 */	lwz r22, 0x10(r3)
/* 80012EF4  7E D8 B3 78 */	mr r24, r22
/* 80012EF8  3A F6 00 03 */	addi r23, r22, 3
/* 80012EFC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80012F00  38 9B 00 0C */	addi r4, r27, 0xc
/* 80012F04  7F 65 DB 78 */	mr r5, r27
/* 80012F08  48 25 3C 2D */	bl __mi__4cXyzCFRC3Vec
/* 80012F0C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80012F10  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80012F14  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80012F18  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80012F1C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80012F20  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80012F24  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80012F28  7F 64 DB 78 */	mr r4, r27
/* 80012F2C  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 80012F30  48 25 3C 05 */	bl __mi__4cXyzCFRC3Vec
/* 80012F34  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80012F38  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80012F3C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80012F40  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80012F44  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80012F48  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80012F4C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80012F50  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80012F54  38 A1 01 04 */	addi r5, r1, 0x104
/* 80012F58  48 25 3D 65 */	bl outprod__4cXyzCFRC3Vec
/* 80012F5C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80012F60  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80012F64  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80012F68  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80012F6C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80012F70  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80012F74  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80012F78  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80012F7C  48 25 3F CD */	bl normalizeZP__4cXyzFv
/* 80012F80  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80012F84  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80012F88  FC 00 00 1E */	fctiwz f0, f0
/* 80012F8C  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80012F90  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80012F94  98 16 00 00 */	stb r0, 0(r22)
/* 80012F98  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80012F9C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80012FA0  FC 00 00 1E */	fctiwz f0, f0
/* 80012FA4  D8 01 01 18 */	stfd f0, 0x118(r1)
/* 80012FA8  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 80012FAC  98 16 00 01 */	stb r0, 1(r22)
/* 80012FB0  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80012FB4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80012FB8  FC 00 00 1E */	fctiwz f0, f0
/* 80012FBC  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 80012FC0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80012FC4  98 16 00 02 */	stb r0, 2(r22)
/* 80012FC8  88 16 00 00 */	lbz r0, 0(r22)
/* 80012FCC  7C 00 00 D0 */	neg r0, r0
/* 80012FD0  98 17 00 00 */	stb r0, 0(r23)
/* 80012FD4  88 16 00 01 */	lbz r0, 1(r22)
/* 80012FD8  7C 00 00 D0 */	neg r0, r0
/* 80012FDC  98 17 00 01 */	stb r0, 1(r23)
/* 80012FE0  88 16 00 02 */	lbz r0, 2(r22)
/* 80012FE4  7C 00 00 D0 */	neg r0, r0
/* 80012FE8  98 17 00 02 */	stb r0, 2(r23)
/* 80012FEC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80012FF0  7C 64 1B 78 */	mr r4, r3
/* 80012FF4  C0 35 00 00 */	lfs f1, 0(r21)
/* 80012FF8  48 33 40 E1 */	bl PSVECScale
/* 80012FFC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80013000  7F 64 DB 78 */	mr r4, r27
/* 80013004  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80013008  48 25 3A DD */	bl __pl__4cXyzCFRC3Vec
/* 8001300C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80013010  D0 19 00 00 */	stfs f0, 0(r25)
/* 80013014  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80013018  D0 19 00 04 */	stfs f0, 4(r25)
/* 8001301C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80013020  D0 19 00 08 */	stfs f0, 8(r25)
/* 80013024  38 61 00 98 */	addi r3, r1, 0x98
/* 80013028  7F 64 DB 78 */	mr r4, r27
/* 8001302C  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80013030  48 25 3B 05 */	bl __mi__4cXyzCFRC3Vec
/* 80013034  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80013038  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 8001303C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80013040  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 80013044  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80013048  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 8001304C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80013050  38 61 00 8C */	addi r3, r1, 0x8c
/* 80013054  7F 64 DB 78 */	mr r4, r27
/* 80013058  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8001305C  3B 59 00 18 */	addi r26, r25, 0x18
/* 80013060  3A B5 00 04 */	addi r21, r21, 4
/* 80013064  48 25 3A 81 */	bl __pl__4cXyzCFRC3Vec
/* 80013068  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8001306C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80013070  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80013074  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80013078  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8001307C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80013080  38 61 00 80 */	addi r3, r1, 0x80
/* 80013084  7F 64 DB 78 */	mr r4, r27
/* 80013088  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8001308C  48 25 3A A9 */	bl __mi__4cXyzCFRC3Vec
/* 80013090  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80013094  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80013098  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8001309C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800130A0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800130A4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800130A8  A0 72 00 14 */	lhz r3, 0x14(r18)
/* 800130AC  3A 63 FF FE */	addi r19, r3, -2
/* 800130B0  48 00 01 FC */	b lbl_800132AC
lbl_800130B4:
/* 800130B4  38 61 00 74 */	addi r3, r1, 0x74
/* 800130B8  38 9B 00 0C */	addi r4, r27, 0xc
/* 800130BC  7F 65 DB 78 */	mr r5, r27
/* 800130C0  48 25 3A 75 */	bl __mi__4cXyzCFRC3Vec
/* 800130C4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800130C8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 800130CC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800130D0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800130D4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 800130D8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 800130DC  38 61 00 68 */	addi r3, r1, 0x68
/* 800130E0  7F 64 DB 78 */	mr r4, r27
/* 800130E4  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 800130E8  48 25 3A 4D */	bl __mi__4cXyzCFRC3Vec
/* 800130EC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800130F0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800130F4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800130F8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 800130FC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80013100  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80013104  38 61 00 5C */	addi r3, r1, 0x5c
/* 80013108  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8001310C  38 A1 01 04 */	addi r5, r1, 0x104
/* 80013110  48 25 3B AD */	bl outprod__4cXyzCFRC3Vec
/* 80013114  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80013118  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8001311C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80013120  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80013124  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80013128  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8001312C  38 61 00 50 */	addi r3, r1, 0x50
/* 80013130  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80013134  48 25 3E 15 */	bl normalizeZP__4cXyzFv
/* 80013138  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 8001313C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80013140  FC 00 00 1E */	fctiwz f0, f0
/* 80013144  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 80013148  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8001314C  98 18 00 06 */	stb r0, 6(r24)
/* 80013150  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80013154  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80013158  FC 00 00 1E */	fctiwz f0, f0
/* 8001315C  D8 01 01 18 */	stfd f0, 0x118(r1)
/* 80013160  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 80013164  98 18 00 07 */	stb r0, 7(r24)
/* 80013168  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 8001316C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80013170  FC 00 00 1E */	fctiwz f0, f0
/* 80013174  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80013178  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8001317C  98 18 00 08 */	stb r0, 8(r24)
/* 80013180  88 18 00 06 */	lbz r0, 6(r24)
/* 80013184  7C 00 00 D0 */	neg r0, r0
/* 80013188  98 17 00 06 */	stb r0, 6(r23)
/* 8001318C  88 18 00 07 */	lbz r0, 7(r24)
/* 80013190  7C 00 00 D0 */	neg r0, r0
/* 80013194  98 17 00 07 */	stb r0, 7(r23)
/* 80013198  88 18 00 08 */	lbz r0, 8(r24)
/* 8001319C  7C 00 00 D0 */	neg r0, r0
/* 800131A0  98 17 00 08 */	stb r0, 8(r23)
/* 800131A4  38 61 00 F8 */	addi r3, r1, 0xf8
/* 800131A8  7C 64 1B 78 */	mr r4, r3
/* 800131AC  C0 35 00 00 */	lfs f1, 0(r21)
/* 800131B0  3B 18 00 06 */	addi r24, r24, 6
/* 800131B4  3A F7 00 06 */	addi r23, r23, 6
/* 800131B8  48 33 3F 21 */	bl PSVECScale
/* 800131BC  38 61 00 44 */	addi r3, r1, 0x44
/* 800131C0  7F 64 DB 78 */	mr r4, r27
/* 800131C4  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 800131C8  48 25 39 1D */	bl __pl__4cXyzCFRC3Vec
/* 800131CC  38 61 00 EC */	addi r3, r1, 0xec
/* 800131D0  38 81 00 44 */	addi r4, r1, 0x44
/* 800131D4  7C 65 1B 78 */	mr r5, r3
/* 800131D8  48 33 3E B9 */	bl PSVECAdd
/* 800131DC  38 61 00 38 */	addi r3, r1, 0x38
/* 800131E0  7F 64 DB 78 */	mr r4, r27
/* 800131E4  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 800131E8  48 25 39 4D */	bl __mi__4cXyzCFRC3Vec
/* 800131EC  38 61 00 E0 */	addi r3, r1, 0xe0
/* 800131F0  38 81 00 38 */	addi r4, r1, 0x38
/* 800131F4  7C 65 1B 78 */	mr r5, r3
/* 800131F8  48 33 3E 99 */	bl PSVECAdd
/* 800131FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80013200  38 81 00 EC */	addi r4, r1, 0xec
/* 80013204  C0 22 81 2C */	lfs f1, lit_6819(r2)
/* 80013208  48 25 39 7D */	bl __ml__4cXyzCFf
/* 8001320C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80013210  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80013214  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80013218  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8001321C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80013220  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80013224  38 61 00 20 */	addi r3, r1, 0x20
/* 80013228  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8001322C  C0 22 81 2C */	lfs f1, lit_6819(r2)
/* 80013230  48 25 39 55 */	bl __ml__4cXyzCFf
/* 80013234  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80013238  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 8001323C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80013240  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 80013244  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80013248  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 8001324C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80013250  38 61 00 14 */	addi r3, r1, 0x14
/* 80013254  7F 64 DB 78 */	mr r4, r27
/* 80013258  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8001325C  3B 5A 00 18 */	addi r26, r26, 0x18
/* 80013260  3A B5 00 04 */	addi r21, r21, 4
/* 80013264  48 25 38 81 */	bl __pl__4cXyzCFRC3Vec
/* 80013268  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8001326C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80013270  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80013274  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80013278  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8001327C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80013280  38 61 00 08 */	addi r3, r1, 8
/* 80013284  7F 64 DB 78 */	mr r4, r27
/* 80013288  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8001328C  48 25 38 A9 */	bl __mi__4cXyzCFRC3Vec
/* 80013290  C0 01 00 08 */	lfs f0, 8(r1)
/* 80013294  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80013298  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001329C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800132A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800132A4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 800132A8  3A 73 FF FF */	addi r19, r19, -1
lbl_800132AC:
/* 800132AC  2C 13 00 00 */	cmpwi r19, 0
/* 800132B0  41 81 FE 04 */	bgt lbl_800130B4
/* 800132B4  88 18 00 00 */	lbz r0, 0(r24)
/* 800132B8  98 17 00 03 */	stb r0, 3(r23)
/* 800132BC  88 18 00 01 */	lbz r0, 1(r24)
/* 800132C0  98 17 00 04 */	stb r0, 4(r23)
/* 800132C4  88 18 00 02 */	lbz r0, 2(r24)
/* 800132C8  98 17 00 05 */	stb r0, 5(r23)
/* 800132CC  88 18 00 03 */	lbz r0, 3(r24)
/* 800132D0  98 17 00 06 */	stb r0, 6(r23)
/* 800132D4  88 18 00 04 */	lbz r0, 4(r24)
/* 800132D8  98 17 00 07 */	stb r0, 7(r23)
/* 800132DC  88 18 00 05 */	lbz r0, 5(r24)
/* 800132E0  98 17 00 08 */	stb r0, 8(r23)
/* 800132E4  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800132E8  D0 1A 00 00 */	stfs f0, 0(r26)
/* 800132EC  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 800132F0  D0 1A 00 04 */	stfs f0, 4(r26)
/* 800132F4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 800132F8  D0 1A 00 08 */	stfs f0, 8(r26)
/* 800132FC  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80013300  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 80013304  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80013308  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 8001330C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80013310  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 80013314  7F 23 CB 78 */	mr r3, r25
/* 80013318  7F A4 EB 78 */	mr r4, r29
/* 8001331C  48 32 83 1D */	bl DCStoreRangeNoSync
/* 80013320  7E C3 B3 78 */	mr r3, r22
/* 80013324  7F 84 E3 78 */	mr r4, r28
/* 80013328  48 32 83 11 */	bl DCStoreRangeNoSync
/* 8001332C  3B DE 00 20 */	addi r30, r30, 0x20
/* 80013330  3A 94 00 01 */	addi r20, r20, 1
lbl_80013334:
/* 80013334  A0 12 00 10 */	lhz r0, 0x10(r18)
/* 80013338  7C 14 00 00 */	cmpw r20, r0
/* 8001333C  41 80 FB 9C */	blt lbl_80012ED8
/* 80013340  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80013344  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80013348  39 61 01 60 */	addi r11, r1, 0x160
/* 8001334C  48 34 EE B1 */	bl _restgpr_18
/* 80013350  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80013354  7C 08 03 A6 */	mtlr r0
/* 80013358  38 21 01 70 */	addi r1, r1, 0x170
/* 8001335C  4E 80 00 20 */	blr 