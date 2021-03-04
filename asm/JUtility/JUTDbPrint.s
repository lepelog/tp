.include "macros.inc"

.section .text, "ax" # 802e0148


.global JUTDbPrint
JUTDbPrint:
/* 802E0148 002DD088  38 00 FF FF */	li r0, -1
/* 802E014C 002DD08C  90 03 00 08 */	stw r0, 8(r3)
/* 802E0150 002DD090  90 83 00 04 */	stw r4, 4(r3)
/* 802E0154 002DD094  38 00 00 00 */	li r0, 0
/* 802E0158 002DD098  90 03 00 00 */	stw r0, 0(r3)
/* 802E015C 002DD09C  28 05 00 00 */	cmplwi r5, 0
/* 802E0160 002DD0A0  41 82 00 08 */	beq lbl_802E0168
/* 802E0164 002DD0A4  48 00 00 08 */	b lbl_802E016C
lbl_802E0168:
/* 802E0168 002DD0A8  80 AD 8D F4 */	lwz r5, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_802E016C:
/* 802E016C 002DD0AC  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802E0170 002DD0B0  38 00 00 FF */	li r0, 0xff
/* 802E0174 002DD0B4  98 03 00 08 */	stb r0, 8(r3)
/* 802E0178 002DD0B8  98 03 00 09 */	stb r0, 9(r3)
/* 802E017C 002DD0BC  98 03 00 0A */	stb r0, 0xa(r3)
/* 802E0180 002DD0C0  98 03 00 0B */	stb r0, 0xb(r3)
/* 802E0184 002DD0C4  38 00 00 01 */	li r0, 1
/* 802E0188 002DD0C8  98 03 00 0C */	stb r0, 0xc(r3)
/* 802E018C 002DD0CC  4E 80 00 20 */	blr 

.global start__10JUTDbPrintFP7JUTFontP7JKRHeap
start__10JUTDbPrintFP7JUTFontP7JKRHeap:
/* 802E0190 002DD0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0194 002DD0D4  7C 08 02 A6 */	mflr r0
/* 802E0198 002DD0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E019C 002DD0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E01A0 002DD0E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802E01A4 002DD0E4  7C 7E 1B 78 */	mr r30, r3
/* 802E01A8 002DD0E8  7C 9F 23 78 */	mr r31, r4
/* 802E01AC 002DD0EC  80 0D 8F 48 */	lwz r0, lbl_804514C8-_SDA_BASE_(r13)
/* 802E01B0 002DD0F0  28 00 00 00 */	cmplwi r0, 0
/* 802E01B4 002DD0F4  40 82 00 34 */	bne lbl_802E01E8
/* 802E01B8 002DD0F8  28 1F 00 00 */	cmplwi r31, 0
/* 802E01BC 002DD0FC  40 82 00 08 */	bne lbl_802E01C4
/* 802E01C0 002DD100  83 ED 8D F4 */	lwz r31, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_802E01C4:
/* 802E01C4 002DD104  38 60 00 14 */	li r3, 0x14
/* 802E01C8 002DD108  4B FE EA 85 */	bl __nw__FUl
/* 802E01CC 002DD10C  7C 60 1B 79 */	or. r0, r3, r3
/* 802E01D0 002DD110  41 82 00 14 */	beq lbl_802E01E4
/* 802E01D4 002DD114  7F C4 F3 78 */	mr r4, r30
/* 802E01D8 002DD118  7F E5 FB 78 */	mr r5, r31
/* 802E01DC 002DD11C  4B FF FF 6D */	bl JUTDbPrint
/* 802E01E0 002DD120  7C 60 1B 78 */	mr r0, r3
lbl_802E01E4:
/* 802E01E4 002DD124  90 0D 8F 48 */	stw r0, lbl_804514C8-_SDA_BASE_(r13)
lbl_802E01E8:
/* 802E01E8 002DD128  80 6D 8F 48 */	lwz r3, lbl_804514C8-_SDA_BASE_(r13)
/* 802E01EC 002DD12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E01F0 002DD130  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E01F4 002DD134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E01F8 002DD138  7C 08 03 A6 */	mtlr r0
/* 802E01FC 002DD13C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0200 002DD140  4E 80 00 20 */	blr 

.global changeFont__10JUTDbPrintFP7JUTFont
changeFont__10JUTDbPrintFP7JUTFont:
/* 802E0204 002DD144  80 03 00 04 */	lwz r0, 4(r3)
/* 802E0208 002DD148  28 04 00 00 */	cmplwi r4, 0
/* 802E020C 002DD14C  41 82 00 08 */	beq lbl_802E0214
/* 802E0210 002DD150  90 83 00 04 */	stw r4, 4(r3)
lbl_802E0214:
/* 802E0214 002DD154  7C 03 03 78 */	mr r3, r0
/* 802E0218 002DD158  4E 80 00 20 */	blr 

.global enter__10JUTDbPrintFiiiPCci
enter__10JUTDbPrintFiiiPCci:
/* 802E021C 002DD15C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E0220 002DD160  7C 08 02 A6 */	mflr r0
/* 802E0224 002DD164  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E0228 002DD168  39 61 00 30 */	addi r11, r1, 0x30
/* 802E022C 002DD16C  48 08 1F A1 */	bl _savegpr_25
/* 802E0230 002DD170  7C 79 1B 78 */	mr r25, r3
/* 802E0234 002DD174  7C 9A 23 78 */	mr r26, r4
/* 802E0238 002DD178  7C BB 2B 78 */	mr r27, r5
/* 802E023C 002DD17C  7C DC 33 78 */	mr r28, r6
/* 802E0240 002DD180  7C FD 3B 78 */	mr r29, r7
/* 802E0244 002DD184  7D 1E 43 79 */	or. r30, r8, r8
/* 802E0248 002DD188  40 81 00 44 */	ble lbl_802E028C
/* 802E024C 002DD18C  38 7E 00 10 */	addi r3, r30, 0x10
/* 802E0250 002DD190  38 80 FF FC */	li r4, -4
/* 802E0254 002DD194  80 B9 00 10 */	lwz r5, 0x10(r25)
/* 802E0258 002DD198  4B FE E2 1D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802E025C 002DD19C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E0260 002DD1A0  41 82 00 2C */	beq lbl_802E028C
/* 802E0264 002DD1A4  B3 5F 00 04 */	sth r26, 4(r31)
/* 802E0268 002DD1A8  B3 7F 00 06 */	sth r27, 6(r31)
/* 802E026C 002DD1AC  B3 9F 00 08 */	sth r28, 8(r31)
/* 802E0270 002DD1B0  B3 DF 00 0A */	sth r30, 0xa(r31)
/* 802E0274 002DD1B4  38 7F 00 0C */	addi r3, r31, 0xc
/* 802E0278 002DD1B8  7F A4 EB 78 */	mr r4, r29
/* 802E027C 002DD1BC  48 08 88 B1 */	bl strcpy
/* 802E0280 002DD1C0  80 19 00 00 */	lwz r0, 0(r25)
/* 802E0284 002DD1C4  90 1F 00 00 */	stw r0, 0(r31)
/* 802E0288 002DD1C8  93 F9 00 00 */	stw r31, 0(r25)
lbl_802E028C:
/* 802E028C 002DD1CC  39 61 00 30 */	addi r11, r1, 0x30
/* 802E0290 002DD1D0  48 08 1F 89 */	bl _restgpr_25
/* 802E0294 002DD1D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E0298 002DD1D8  7C 08 03 A6 */	mtlr r0
/* 802E029C 002DD1DC  38 21 00 30 */	addi r1, r1, 0x30
/* 802E02A0 002DD1E0  4E 80 00 20 */	blr 

.global flush__10JUTDbPrintFv
flush__10JUTDbPrintFv:
/* 802E02A4 002DD1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E02A8 002DD1E8  7C 08 02 A6 */	mflr r0
/* 802E02AC 002DD1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E02B0 002DD1F0  80 8D 8F B8 */	lwz r4, lbl_80451538-_SDA_BASE_(r13)
/* 802E02B4 002DD1F4  80 84 00 04 */	lwz r4, 4(r4)
/* 802E02B8 002DD1F8  A0 E4 00 06 */	lhz r7, 6(r4)
/* 802E02BC 002DD1FC  A0 C4 00 04 */	lhz r6, 4(r4)
/* 802E02C0 002DD200  38 80 00 00 */	li r4, 0
/* 802E02C4 002DD204  38 A0 00 00 */	li r5, 0
/* 802E02C8 002DD208  48 00 00 15 */	bl flush__10JUTDbPrintFv_X1_
/* 802E02CC 002DD20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E02D0 002DD210  7C 08 03 A6 */	mtlr r0
/* 802E02D4 002DD214  38 21 00 10 */	addi r1, r1, 0x10
/* 802E02D8 002DD218  4E 80 00 20 */	blr 

.global flush__10JUTDbPrintFv_X1_
flush__10JUTDbPrintFv_X1_:
/* 802E02DC 002DD21C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802E02E0 002DD220  7C 08 02 A6 */	mflr r0
/* 802E02E4 002DD224  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E02E8 002DD228  39 61 01 10 */	addi r11, r1, 0x110
/* 802E02EC 002DD22C  48 08 1E ED */	bl _savegpr_28
/* 802E02F0 002DD230  7C 7C 1B 78 */	mr r28, r3
/* 802E02F4 002DD234  7F 9F E3 78 */	mr r31, r28
/* 802E02F8 002DD238  83 C3 00 00 */	lwz r30, 0(r3)
/* 802E02FC 002DD23C  80 03 00 04 */	lwz r0, 4(r3)
/* 802E0300 002DD240  28 00 00 00 */	cmplwi r0, 0
/* 802E0304 002DD244  41 82 01 24 */	beq lbl_802E0428
/* 802E0308 002DD248  28 1E 00 00 */	cmplwi r30, 0
/* 802E030C 002DD24C  41 82 01 1C */	beq lbl_802E0428
/* 802E0310 002DD250  38 61 00 0C */	addi r3, r1, 0xc
/* 802E0314 002DD254  C8 82 C6 10 */	lfd f4, lbl_80456010-_SDA2_BASE_(r2)
/* 802E0318 002DD258  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802E031C 002DD25C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802E0320 002DD260  3C 80 43 30 */	lis r4, 0x4330
/* 802E0324 002DD264  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 802E0328 002DD268  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 802E032C 002DD26C  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E0330 002DD270  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802E0334 002DD274  90 01 00 EC */	stw r0, 0xec(r1)
/* 802E0338 002DD278  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 802E033C 002DD27C  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802E0340 002DD280  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E0344 002DD284  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 802E0348 002DD288  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802E034C 002DD28C  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 802E0350 002DD290  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 802E0354 002DD294  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E0358 002DD298  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 802E035C 002DD29C  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802E0360 002DD2A0  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 802E0364 002DD2A4  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802E0368 002DD2A8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E036C 002DD2AC  C0 A2 C6 08 */	lfs f5, lbl_80456008-_SDA2_BASE_(r2)
/* 802E0370 002DD2B0  C0 C2 C6 0C */	lfs f6, lbl_8045600C-_SDA2_BASE_(r2)
/* 802E0374 002DD2B4  48 00 93 5D */	bl J2DOrthoGraph_X1_
/* 802E0378 002DD2B8  38 61 00 0C */	addi r3, r1, 0xc
/* 802E037C 002DD2BC  48 00 94 39 */	bl setPort__13J2DOrthoGraphFv
/* 802E0380 002DD2C0  80 7C 00 04 */	lwz r3, 4(r28)
/* 802E0384 002DD2C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0388 002DD2C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E038C 002DD2CC  7D 89 03 A6 */	mtctr r12
/* 802E0390 002DD2D0  4E 80 04 21 */	bctrl 
/* 802E0394 002DD2D4  80 1C 00 08 */	lwz r0, 8(r28)
/* 802E0398 002DD2D8  90 01 00 08 */	stw r0, 8(r1)
/* 802E039C 002DD2DC  80 7C 00 04 */	lwz r3, 4(r28)
/* 802E03A0 002DD2E0  38 81 00 08 */	addi r4, r1, 8
/* 802E03A4 002DD2E4  4B FF E9 CD */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E03A8 002DD2E8  48 00 00 60 */	b lbl_802E0408
lbl_802E03AC:
/* 802E03AC 002DD2EC  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 802E03B0 002DD2F0  28 00 00 00 */	cmplwi r0, 0
/* 802E03B4 002DD2F4  41 82 00 1C */	beq lbl_802E03D0
/* 802E03B8 002DD2F8  7F 83 E3 78 */	mr r3, r28
/* 802E03BC 002DD2FC  A8 9E 00 04 */	lha r4, 4(r30)
/* 802E03C0 002DD300  A8 BE 00 06 */	lha r5, 6(r30)
/* 802E03C4 002DD304  A8 DE 00 0A */	lha r6, 0xa(r30)
/* 802E03C8 002DD308  38 FE 00 0C */	addi r7, r30, 0xc
/* 802E03CC 002DD30C  48 00 00 75 */	bl drawString__10JUTDbPrintFiiiPCUc
lbl_802E03D0:
/* 802E03D0 002DD310  A8 7E 00 08 */	lha r3, 8(r30)
/* 802E03D4 002DD314  38 03 FF FF */	addi r0, r3, -1
/* 802E03D8 002DD318  B0 1E 00 08 */	sth r0, 8(r30)
/* 802E03DC 002DD31C  7C 00 07 35 */	extsh. r0, r0
/* 802E03E0 002DD320  41 81 00 20 */	bgt lbl_802E0400
/* 802E03E4 002DD324  83 BE 00 00 */	lwz r29, 0(r30)
/* 802E03E8 002DD328  7F C3 F3 78 */	mr r3, r30
/* 802E03EC 002DD32C  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 802E03F0 002DD330  4B FE E1 11 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802E03F4 002DD334  7F BE EB 78 */	mr r30, r29
/* 802E03F8 002DD338  93 BF 00 00 */	stw r29, 0(r31)
/* 802E03FC 002DD33C  48 00 00 0C */	b lbl_802E0408
lbl_802E0400:
/* 802E0400 002DD340  7F DF F3 78 */	mr r31, r30
/* 802E0404 002DD344  83 DE 00 00 */	lwz r30, 0(r30)
lbl_802E0408:
/* 802E0408 002DD348  28 1E 00 00 */	cmplwi r30, 0
/* 802E040C 002DD34C  40 82 FF A0 */	bne lbl_802E03AC
/* 802E0410 002DD350  3C 60 80 3D */	lis r3, lbl_803CC9E0@ha
/* 802E0414 002DD354  38 03 C9 E0 */	addi r0, r3, lbl_803CC9E0@l
/* 802E0418 002DD358  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E041C 002DD35C  3C 60 80 3D */	lis r3, lbl_803CC9B8@ha
/* 802E0420 002DD360  38 03 C9 B8 */	addi r0, r3, lbl_803CC9B8@l
/* 802E0424 002DD364  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802E0428:
/* 802E0428 002DD368  39 61 01 10 */	addi r11, r1, 0x110
/* 802E042C 002DD36C  48 08 1D F9 */	bl _restgpr_28
/* 802E0430 002DD370  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802E0434 002DD374  7C 08 03 A6 */	mtlr r0
/* 802E0438 002DD378  38 21 01 10 */	addi r1, r1, 0x110
/* 802E043C 002DD37C  4E 80 00 20 */	blr 

.global drawString__10JUTDbPrintFiiiPCUc
drawString__10JUTDbPrintFiiiPCUc:
/* 802E0440 002DD380  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E0444 002DD384  7C 08 02 A6 */	mflr r0
/* 802E0448 002DD388  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E044C 002DD38C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802E0450 002DD390  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 802E0454 002DD394  39 61 00 40 */	addi r11, r1, 0x40
/* 802E0458 002DD398  48 08 1D 7D */	bl _savegpr_27
/* 802E045C 002DD39C  7C 9B 23 78 */	mr r27, r4
/* 802E0460 002DD3A0  7C BC 2B 78 */	mr r28, r5
/* 802E0464 002DD3A4  7C DD 33 78 */	mr r29, r6
/* 802E0468 002DD3A8  7C FE 3B 78 */	mr r30, r7
/* 802E046C 002DD3AC  83 E3 00 04 */	lwz r31, 4(r3)
/* 802E0470 002DD3B0  7F E3 FB 78 */	mr r3, r31
/* 802E0474 002DD3B4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E0478 002DD3B8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E047C 002DD3BC  7D 89 03 A6 */	mtctr r12
/* 802E0480 002DD3C0  4E 80 04 21 */	bctrl 
/* 802E0484 002DD3C4  C8 22 C6 10 */	lfd f1, lbl_80456010-_SDA2_BASE_(r2)
/* 802E0488 002DD3C8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E048C 002DD3CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E0490 002DD3D0  3C 00 43 30 */	lis r0, 0x4330
/* 802E0494 002DD3D4  90 01 00 08 */	stw r0, 8(r1)
/* 802E0498 002DD3D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802E049C 002DD3DC  EF E0 08 28 */	fsubs f31, f0, f1
/* 802E04A0 002DD3E0  7F E3 FB 78 */	mr r3, r31
/* 802E04A4 002DD3E4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E04A8 002DD3E8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E04AC 002DD3EC  7D 89 03 A6 */	mtctr r12
/* 802E04B0 002DD3F0  4E 80 04 21 */	bctrl 
/* 802E04B4 002DD3F4  C8 42 C6 10 */	lfd f2, lbl_80456010-_SDA2_BASE_(r2)
/* 802E04B8 002DD3F8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E04BC 002DD3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E04C0 002DD400  3C 80 43 30 */	lis r4, 0x4330
/* 802E04C4 002DD404  90 81 00 10 */	stw r4, 0x10(r1)
/* 802E04C8 002DD408  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E04CC 002DD40C  EC 60 10 28 */	fsubs f3, f0, f2
/* 802E04D0 002DD410  7F E3 FB 78 */	mr r3, r31
/* 802E04D4 002DD414  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 802E04D8 002DD418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E04DC 002DD41C  90 81 00 18 */	stw r4, 0x18(r1)
/* 802E04E0 002DD420  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E04E4 002DD424  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E04E8 002DD428  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E04EC 002DD42C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E04F0 002DD430  90 81 00 20 */	stw r4, 0x20(r1)
/* 802E04F4 002DD434  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E04F8 002DD438  EC 40 10 28 */	fsubs f2, f0, f2
/* 802E04FC 002DD43C  FC 80 F8 90 */	fmr f4, f31
/* 802E0500 002DD440  7F C4 F3 78 */	mr r4, r30
/* 802E0504 002DD444  7F A5 EB 78 */	mr r5, r29
/* 802E0508 002DD448  38 C0 00 01 */	li r6, 1
/* 802E050C 002DD44C  4B FF E9 1D */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 802E0510 002DD450  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 802E0514 002DD454  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802E0518 002DD458  39 61 00 40 */	addi r11, r1, 0x40
/* 802E051C 002DD45C  48 08 1D 05 */	bl _restgpr_27
/* 802E0520 002DD460  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E0524 002DD464  7C 08 03 A6 */	mtlr r0
/* 802E0528 002DD468  38 21 00 50 */	addi r1, r1, 0x50
/* 802E052C 002DD46C  4E 80 00 20 */	blr 

.global JUTReport__FiiPCce
JUTReport__FiiPCce:
/* 802E0530 002DD470  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 802E0534 002DD474  7C 08 02 A6 */	mflr r0
/* 802E0538 002DD478  90 01 01 84 */	stw r0, 0x184(r1)
/* 802E053C 002DD47C  93 E1 01 7C */	stw r31, 0x17c(r1)
/* 802E0540 002DD480  93 C1 01 78 */	stw r30, 0x178(r1)
/* 802E0544 002DD484  7C 7E 1B 78 */	mr r30, r3
/* 802E0548 002DD488  7C 9F 23 78 */	mr r31, r4
/* 802E054C 002DD48C  40 86 00 24 */	bne cr1, lbl_802E0570
/* 802E0550 002DD490  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802E0554 002DD494  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802E0558 002DD498  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802E055C 002DD49C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802E0560 002DD4A0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802E0564 002DD4A4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802E0568 002DD4A8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802E056C 002DD4AC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802E0570:
/* 802E0570 002DD4B0  90 61 00 08 */	stw r3, 8(r1)
/* 802E0574 002DD4B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E0578 002DD4B8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E057C 002DD4BC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802E0580 002DD4C0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802E0584 002DD4C4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802E0588 002DD4C8  91 21 00 20 */	stw r9, 0x20(r1)
/* 802E058C 002DD4CC  91 41 00 24 */	stw r10, 0x24(r1)
/* 802E0590 002DD4D0  38 C1 00 68 */	addi r6, r1, 0x68
/* 802E0594 002DD4D4  3C 00 03 00 */	lis r0, 0x300
/* 802E0598 002DD4D8  90 01 00 68 */	stw r0, 0x68(r1)
/* 802E059C 002DD4DC  38 01 01 88 */	addi r0, r1, 0x188
/* 802E05A0 002DD4E0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E05A4 002DD4E4  38 01 00 08 */	addi r0, r1, 8
/* 802E05A8 002DD4E8  90 01 00 70 */	stw r0, 0x70(r1)
/* 802E05AC 002DD4EC  38 61 00 74 */	addi r3, r1, 0x74
/* 802E05B0 002DD4F0  38 80 01 00 */	li r4, 0x100
/* 802E05B4 002DD4F4  48 08 60 DD */	bl func_80366690
/* 802E05B8 002DD4F8  7C 60 1B 79 */	or. r0, r3, r3
/* 802E05BC 002DD4FC  41 80 00 2C */	blt lbl_802E05E8
/* 802E05C0 002DD500  80 6D 8F 48 */	lwz r3, lbl_804514C8-_SDA_BASE_(r13)
/* 802E05C4 002DD504  7F C4 F3 78 */	mr r4, r30
/* 802E05C8 002DD508  7F E5 FB 78 */	mr r5, r31
/* 802E05CC 002DD50C  38 C0 00 01 */	li r6, 1
/* 802E05D0 002DD510  38 E1 00 74 */	addi r7, r1, 0x74
/* 802E05D4 002DD514  2C 00 01 00 */	cmpwi r0, 0x100
/* 802E05D8 002DD518  39 00 00 FF */	li r8, 0xff
/* 802E05DC 002DD51C  40 80 00 08 */	bge lbl_802E05E4
/* 802E05E0 002DD520  7C 08 03 78 */	mr r8, r0
lbl_802E05E4:
/* 802E05E4 002DD524  4B FF FC 39 */	bl enter__10JUTDbPrintFiiiPCci
lbl_802E05E8:
/* 802E05E8 002DD528  83 E1 01 7C */	lwz r31, 0x17c(r1)
/* 802E05EC 002DD52C  83 C1 01 78 */	lwz r30, 0x178(r1)
/* 802E05F0 002DD530  80 01 01 84 */	lwz r0, 0x184(r1)
/* 802E05F4 002DD534  7C 08 03 A6 */	mtlr r0
/* 802E05F8 002DD538  38 21 01 80 */	addi r1, r1, 0x180
/* 802E05FC 002DD53C  4E 80 00 20 */	blr 

.global JUTReport__FiiiPCce
JUTReport__FiiiPCce:
/* 802E0600 002DD540  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 802E0604 002DD544  7C 08 02 A6 */	mflr r0
/* 802E0608 002DD548  90 01 01 94 */	stw r0, 0x194(r1)
/* 802E060C 002DD54C  39 61 01 90 */	addi r11, r1, 0x190
/* 802E0610 002DD550  48 08 1B CD */	bl _savegpr_29
/* 802E0614 002DD554  7C 7D 1B 78 */	mr r29, r3
/* 802E0618 002DD558  7C 9E 23 78 */	mr r30, r4
/* 802E061C 002DD55C  7C BF 2B 78 */	mr r31, r5
/* 802E0620 002DD560  40 86 00 24 */	bne cr1, lbl_802E0644
/* 802E0624 002DD564  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802E0628 002DD568  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802E062C 002DD56C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802E0630 002DD570  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802E0634 002DD574  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802E0638 002DD578  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802E063C 002DD57C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802E0640 002DD580  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802E0644:
/* 802E0644 002DD584  90 61 00 08 */	stw r3, 8(r1)
/* 802E0648 002DD588  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E064C 002DD58C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E0650 002DD590  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802E0654 002DD594  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802E0658 002DD598  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802E065C 002DD59C  91 21 00 20 */	stw r9, 0x20(r1)
/* 802E0660 002DD5A0  91 41 00 24 */	stw r10, 0x24(r1)
/* 802E0664 002DD5A4  38 E1 00 68 */	addi r7, r1, 0x68
/* 802E0668 002DD5A8  3C 00 04 00 */	lis r0, 0x400
/* 802E066C 002DD5AC  90 01 00 68 */	stw r0, 0x68(r1)
/* 802E0670 002DD5B0  38 01 01 98 */	addi r0, r1, 0x198
/* 802E0674 002DD5B4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E0678 002DD5B8  38 01 00 08 */	addi r0, r1, 8
/* 802E067C 002DD5BC  90 01 00 70 */	stw r0, 0x70(r1)
/* 802E0680 002DD5C0  38 61 00 74 */	addi r3, r1, 0x74
/* 802E0684 002DD5C4  38 80 01 00 */	li r4, 0x100
/* 802E0688 002DD5C8  7C C5 33 78 */	mr r5, r6
/* 802E068C 002DD5CC  7C E6 3B 78 */	mr r6, r7
/* 802E0690 002DD5D0  48 08 60 01 */	bl func_80366690
/* 802E0694 002DD5D4  7C 60 1B 79 */	or. r0, r3, r3
/* 802E0698 002DD5D8  41 80 00 2C */	blt lbl_802E06C4
/* 802E069C 002DD5DC  80 6D 8F 48 */	lwz r3, lbl_804514C8-_SDA_BASE_(r13)
/* 802E06A0 002DD5E0  7F A4 EB 78 */	mr r4, r29
/* 802E06A4 002DD5E4  7F C5 F3 78 */	mr r5, r30
/* 802E06A8 002DD5E8  7F E6 FB 78 */	mr r6, r31
/* 802E06AC 002DD5EC  38 E1 00 74 */	addi r7, r1, 0x74
/* 802E06B0 002DD5F0  2C 00 01 00 */	cmpwi r0, 0x100
/* 802E06B4 002DD5F4  39 00 00 FF */	li r8, 0xff
/* 802E06B8 002DD5F8  40 80 00 08 */	bge lbl_802E06C0
/* 802E06BC 002DD5FC  7C 08 03 78 */	mr r8, r0
lbl_802E06C0:
/* 802E06C0 002DD600  4B FF FB 5D */	bl enter__10JUTDbPrintFiiiPCci
lbl_802E06C4:
/* 802E06C4 002DD604  39 61 01 90 */	addi r11, r1, 0x190
/* 802E06C8 002DD608  48 08 1B 61 */	bl _restgpr_29
/* 802E06CC 002DD60C  80 01 01 94 */	lwz r0, 0x194(r1)
/* 802E06D0 002DD610  7C 08 03 A6 */	mtlr r0
/* 802E06D4 002DD614  38 21 01 90 */	addi r1, r1, 0x190
/* 802E06D8 002DD618  4E 80 00 20 */	blr 

