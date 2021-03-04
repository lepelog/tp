.include "macros.inc"

.section .text, "ax" # 8029d2f4


.global JASDSPChannel
JASDSPChannel:
/* 8029D2F4 0029A234  38 00 00 01 */	li r0, 1
/* 8029D2F8 0029A238  90 03 00 00 */	stw r0, 0(r3)
/* 8029D2FC 0029A23C  38 00 FF FF */	li r0, -1
/* 8029D300 0029A240  B0 03 00 04 */	sth r0, 4(r3)
/* 8029D304 0029A244  38 00 00 00 */	li r0, 0
/* 8029D308 0029A248  90 03 00 08 */	stw r0, 8(r3)
/* 8029D30C 0029A24C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8029D310 0029A250  90 03 00 10 */	stw r0, 0x10(r3)
/* 8029D314 0029A254  90 03 00 14 */	stw r0, 0x14(r3)
/* 8029D318 0029A258  90 03 00 18 */	stw r0, 0x18(r3)
/* 8029D31C 0029A25C  4E 80 00 20 */	blr 

.global free__13JASDSPChannelFv
free__13JASDSPChannelFv:
/* 8029D320 0029A260  38 00 00 00 */	li r0, 0
/* 8029D324 0029A264  90 03 00 10 */	stw r0, 0x10(r3)
/* 8029D328 0029A268  90 03 00 14 */	stw r0, 0x14(r3)
/* 8029D32C 0029A26C  4E 80 00 20 */	blr 

.global start__13JASDSPChannelFv
start__13JASDSPChannelFv:
/* 8029D330 0029A270  80 03 00 08 */	lwz r0, 8(r3)
/* 8029D334 0029A274  60 00 00 01 */	ori r0, r0, 1
/* 8029D338 0029A278  90 03 00 08 */	stw r0, 8(r3)
/* 8029D33C 0029A27C  4E 80 00 20 */	blr 

.global drop__13JASDSPChannelFv
drop__13JASDSPChannelFv:
/* 8029D340 0029A280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D344 0029A284  7C 08 02 A6 */	mflr r0
/* 8029D348 0029A288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D34C 0029A28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D350 0029A290  7C 7F 1B 78 */	mr r31, r3
/* 8029D354 0029A294  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8029D358 0029A298  28 0C 00 00 */	cmplwi r12, 0
/* 8029D35C 0029A29C  41 82 00 18 */	beq lbl_8029D374
/* 8029D360 0029A2A0  38 60 00 03 */	li r3, 3
/* 8029D364 0029A2A4  38 80 00 00 */	li r4, 0
/* 8029D368 0029A2A8  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D36C 0029A2AC  7D 89 03 A6 */	mtctr r12
/* 8029D370 0029A2B0  4E 80 04 21 */	bctrl 
lbl_8029D374:
/* 8029D374 0029A2B4  38 00 00 00 */	li r0, 0
/* 8029D378 0029A2B8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8029D37C 0029A2BC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8029D380 0029A2C0  38 00 FF FF */	li r0, -1
/* 8029D384 0029A2C4  B0 1F 00 04 */	sth r0, 4(r31)
/* 8029D388 0029A2C8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8029D38C 0029A2CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8029D390 0029A2D0  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D394 0029A2D4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029D398 0029A2D8  2C 00 00 00 */	cmpwi r0, 0
/* 8029D39C 0029A2DC  40 82 00 18 */	bne lbl_8029D3B4
/* 8029D3A0 0029A2E0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8029D3A4 0029A2E4  60 00 00 02 */	ori r0, r0, 2
/* 8029D3A8 0029A2E8  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D3AC 0029A2EC  38 00 00 02 */	li r0, 2
/* 8029D3B0 0029A2F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8029D3B4:
/* 8029D3B4 0029A2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D3B8 0029A2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D3BC 0029A2FC  7C 08 03 A6 */	mtlr r0
/* 8029D3C0 0029A300  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D3C4 0029A304  4E 80 00 20 */	blr 

.global initAll__13JASDSPChannelFv
initAll__13JASDSPChannelFv:
/* 8029D3C8 0029A308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D3CC 0029A30C  7C 08 02 A6 */	mflr r0
/* 8029D3D0 0029A310  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D3D4 0029A314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D3D8 0029A318  93 C1 00 08 */	stw r30, 8(r1)
/* 8029D3DC 0029A31C  38 60 07 10 */	li r3, 0x710
/* 8029D3E0 0029A320  80 8D 8C 90 */	lwz r4, lbl_80451210-_SDA_BASE_(r13)
/* 8029D3E4 0029A324  38 A0 00 20 */	li r5, 0x20
/* 8029D3E8 0029A328  48 03 19 29 */	bl __nwa__FUlP7JKRHeapi
.global JASDSPChannel
/* 8029D3EC 0029A32C  3C 80 80 2A */	lis r4, JASDSPChannel@ha
.global JASDSPChannel
/* 8029D3F0 0029A330  38 84 D2 F4 */	addi r4, r4, JASDSPChannel@l
/* 8029D3F4 0029A334  38 A0 00 00 */	li r5, 0
/* 8029D3F8 0029A338  38 C0 00 1C */	li r6, 0x1c
/* 8029D3FC 0029A33C  38 E0 00 40 */	li r7, 0x40
/* 8029D400 0029A340  48 0C 4B 15 */	bl func_80361F14
/* 8029D404 0029A344  90 6D 8D 60 */	stw r3, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D408 0029A348  3B C0 00 00 */	li r30, 0
/* 8029D40C 0029A34C  3B E0 00 00 */	li r31, 0
lbl_8029D410:
/* 8029D410 0029A350  7F C3 F3 78 */	mr r3, r30
/* 8029D414 0029A354  48 00 06 25 */	bl getDSPHandle__6JASDspFi
/* 8029D418 0029A358  80 8D 8D 60 */	lwz r4, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D41C 0029A35C  38 1F 00 18 */	addi r0, r31, 0x18
/* 8029D420 0029A360  7C 64 01 2E */	stwx r3, r4, r0
/* 8029D424 0029A364  3B DE 00 01 */	addi r30, r30, 1
/* 8029D428 0029A368  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8029D42C 0029A36C  3B FF 00 1C */	addi r31, r31, 0x1c
/* 8029D430 0029A370  41 80 FF E0 */	blt lbl_8029D410
/* 8029D434 0029A374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D438 0029A378  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029D43C 0029A37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D440 0029A380  7C 08 03 A6 */	mtlr r0
/* 8029D444 0029A384  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D448 0029A388  4E 80 00 20 */	blr 

.global alloc__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPv
alloc__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPv:
/* 8029D44C 0029A38C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D450 0029A390  7C 08 02 A6 */	mflr r0
/* 8029D454 0029A394  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D458 0029A398  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D45C 0029A39C  48 0C 4D 7D */	bl _savegpr_28
/* 8029D460 0029A3A0  7C 7C 1B 78 */	mr r28, r3
/* 8029D464 0029A3A4  7C 9D 23 78 */	mr r29, r4
/* 8029D468 0029A3A8  7C BE 2B 78 */	mr r30, r5
/* 8029D46C 0029A3AC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8029D470 0029A3B0  48 00 00 D1 */	bl getLowestChannel__13JASDSPChannelFi
/* 8029D474 0029A3B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029D478 0029A3B8  40 82 00 0C */	bne lbl_8029D484
/* 8029D47C 0029A3BC  38 60 00 00 */	li r3, 0
/* 8029D480 0029A3C0  48 00 00 24 */	b lbl_8029D4A4
lbl_8029D484:
/* 8029D484 0029A3C4  4B FF FE BD */	bl drop__13JASDSPChannelFv
/* 8029D488 0029A3C8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8029D48C 0029A3CC  B0 1F 00 04 */	sth r0, 4(r31)
/* 8029D490 0029A3D0  38 00 00 00 */	li r0, 0
/* 8029D494 0029A3D4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D498 0029A3D8  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8029D49C 0029A3DC  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8029D4A0 0029A3E0  7F E3 FB 78 */	mr r3, r31
lbl_8029D4A4:
/* 8029D4A4 0029A3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D4A8 0029A3E8  48 0C 4D 7D */	bl _restgpr_28
/* 8029D4AC 0029A3EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D4B0 0029A3F0  7C 08 03 A6 */	mtlr r0
/* 8029D4B4 0029A3F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D4B8 0029A3F8  4E 80 00 20 */	blr 

.global alloc__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPvForce
alloc__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPvForce:
/* 8029D4BC 0029A3FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D4C0 0029A400  7C 08 02 A6 */	mflr r0
/* 8029D4C4 0029A404  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D4C8 0029A408  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D4CC 0029A40C  48 0C 4D 0D */	bl _savegpr_28
/* 8029D4D0 0029A410  7C 7C 1B 78 */	mr r28, r3
/* 8029D4D4 0029A414  7C 9D 23 78 */	mr r29, r4
/* 8029D4D8 0029A418  7C BE 2B 78 */	mr r30, r5
/* 8029D4DC 0029A41C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8029D4E0 0029A420  48 00 00 61 */	bl getLowestChannel__13JASDSPChannelFi
/* 8029D4E4 0029A424  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029D4E8 0029A428  40 82 00 0C */	bne lbl_8029D4F4
/* 8029D4EC 0029A42C  38 60 00 00 */	li r3, 0
/* 8029D4F0 0029A430  48 00 00 2C */	b lbl_8029D51C
lbl_8029D4F4:
/* 8029D4F4 0029A434  38 00 00 01 */	li r0, 1
/* 8029D4F8 0029A438  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D4FC 0029A43C  4B FF FE 45 */	bl drop__13JASDSPChannelFv
/* 8029D500 0029A440  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8029D504 0029A444  B0 1F 00 04 */	sth r0, 4(r31)
/* 8029D508 0029A448  38 00 00 00 */	li r0, 0
/* 8029D50C 0029A44C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D510 0029A450  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8029D514 0029A454  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8029D518 0029A458  7F E3 FB 78 */	mr r3, r31
lbl_8029D51C:
/* 8029D51C 0029A45C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D520 0029A460  48 0C 4D 05 */	bl _restgpr_28
/* 8029D524 0029A464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D528 0029A468  7C 08 03 A6 */	mtlr r0
/* 8029D52C 0029A46C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D530 0029A470  4E 80 00 20 */	blr 

.global setPriority__13JASDSPChannelFUc
setPriority__13JASDSPChannelFUc:
/* 8029D534 0029A474  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8029D538 0029A478  B0 03 00 04 */	sth r0, 4(r3)
/* 8029D53C 0029A47C  4E 80 00 20 */	blr 

.global getLowestChannel__13JASDSPChannelFi
getLowestChannel__13JASDSPChannelFi:
/* 8029D540 0029A480  38 C0 00 FF */	li r6, 0xff
/* 8029D544 0029A484  38 E0 FF FF */	li r7, -1
/* 8029D548 0029A488  39 00 00 00 */	li r8, 0
/* 8029D54C 0029A48C  39 20 00 00 */	li r9, 0
/* 8029D550 0029A490  38 80 00 00 */	li r4, 0
/* 8029D554 0029A494  80 AD 8D 60 */	lwz r5, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D558 0029A498  38 00 00 40 */	li r0, 0x40
/* 8029D55C 0029A49C  7C 09 03 A6 */	mtctr r0
lbl_8029D560:
/* 8029D560 0029A4A0  7D 45 22 14 */	add r10, r5, r4
/* 8029D564 0029A4A4  A9 6A 00 04 */	lha r11, 4(r10)
/* 8029D568 0029A4A8  7D 60 07 35 */	extsh. r0, r11
/* 8029D56C 0029A4AC  40 80 00 0C */	bge lbl_8029D578
/* 8029D570 0029A4B0  7D 43 53 78 */	mr r3, r10
/* 8029D574 0029A4B4  4E 80 00 20 */	blr 
lbl_8029D578:
/* 8029D578 0029A4B8  7C 0B 18 00 */	cmpw r11, r3
/* 8029D57C 0029A4BC  41 81 00 2C */	bgt lbl_8029D5A8
/* 8029D580 0029A4C0  7C C0 07 34 */	extsh r0, r6
/* 8029D584 0029A4C4  7C 0B 00 00 */	cmpw r11, r0
/* 8029D588 0029A4C8  41 81 00 20 */	bgt lbl_8029D5A8
/* 8029D58C 0029A4CC  40 82 00 10 */	bne lbl_8029D59C
/* 8029D590 0029A4D0  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 8029D594 0029A4D4  7C 00 40 40 */	cmplw r0, r8
/* 8029D598 0029A4D8  40 81 00 10 */	ble lbl_8029D5A8
lbl_8029D59C:
/* 8029D59C 0029A4DC  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 8029D5A0 0029A4E0  7D 27 4B 78 */	mr r7, r9
/* 8029D5A4 0029A4E4  7D 66 5B 78 */	mr r6, r11
lbl_8029D5A8:
/* 8029D5A8 0029A4E8  39 29 00 01 */	addi r9, r9, 1
/* 8029D5AC 0029A4EC  38 84 00 1C */	addi r4, r4, 0x1c
/* 8029D5B0 0029A4F0  42 00 FF B0 */	bdnz lbl_8029D560
/* 8029D5B4 0029A4F4  2C 07 00 00 */	cmpwi r7, 0
/* 8029D5B8 0029A4F8  40 80 00 0C */	bge lbl_8029D5C4
/* 8029D5BC 0029A4FC  38 60 00 00 */	li r3, 0
/* 8029D5C0 0029A500  4E 80 00 20 */	blr 
lbl_8029D5C4:
/* 8029D5C4 0029A504  1C 07 00 1C */	mulli r0, r7, 0x1c
/* 8029D5C8 0029A508  7C 65 02 14 */	add r3, r5, r0
/* 8029D5CC 0029A50C  4E 80 00 20 */	blr 

.global getLowestActiveChannel__13JASDSPChannelFv
getLowestActiveChannel__13JASDSPChannelFv:
/* 8029D5D0 0029A510  38 A0 00 FF */	li r5, 0xff
/* 8029D5D4 0029A514  38 C0 FF FF */	li r6, -1
/* 8029D5D8 0029A518  38 E0 00 00 */	li r7, 0
/* 8029D5DC 0029A51C  39 00 00 00 */	li r8, 0
/* 8029D5E0 0029A520  38 60 00 00 */	li r3, 0
/* 8029D5E4 0029A524  80 8D 8D 60 */	lwz r4, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D5E8 0029A528  38 00 00 40 */	li r0, 0x40
/* 8029D5EC 0029A52C  7C 09 03 A6 */	mtctr r0
lbl_8029D5F0:
/* 8029D5F0 0029A530  7D 24 1A 14 */	add r9, r4, r3
/* 8029D5F4 0029A534  80 09 00 00 */	lwz r0, 0(r9)
/* 8029D5F8 0029A538  2C 00 00 00 */	cmpwi r0, 0
/* 8029D5FC 0029A53C  40 82 00 38 */	bne lbl_8029D634
/* 8029D600 0029A540  A9 49 00 04 */	lha r10, 4(r9)
/* 8029D604 0029A544  2C 0A 00 7F */	cmpwi r10, 0x7f
/* 8029D608 0029A548  40 80 00 2C */	bge lbl_8029D634
/* 8029D60C 0029A54C  7C A0 07 34 */	extsh r0, r5
/* 8029D610 0029A550  7C 0A 00 00 */	cmpw r10, r0
/* 8029D614 0029A554  41 81 00 20 */	bgt lbl_8029D634
/* 8029D618 0029A558  40 82 00 10 */	bne lbl_8029D628
/* 8029D61C 0029A55C  80 09 00 0C */	lwz r0, 0xc(r9)
/* 8029D620 0029A560  7C 00 38 40 */	cmplw r0, r7
/* 8029D624 0029A564  40 81 00 10 */	ble lbl_8029D634
lbl_8029D628:
/* 8029D628 0029A568  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 8029D62C 0029A56C  7D 06 43 78 */	mr r6, r8
/* 8029D630 0029A570  7D 45 53 78 */	mr r5, r10
lbl_8029D634:
/* 8029D634 0029A574  39 08 00 01 */	addi r8, r8, 1
/* 8029D638 0029A578  38 63 00 1C */	addi r3, r3, 0x1c
/* 8029D63C 0029A57C  42 00 FF B4 */	bdnz lbl_8029D5F0
/* 8029D640 0029A580  2C 06 00 00 */	cmpwi r6, 0
/* 8029D644 0029A584  40 80 00 0C */	bge lbl_8029D650
/* 8029D648 0029A588  38 60 00 00 */	li r3, 0
/* 8029D64C 0029A58C  4E 80 00 20 */	blr 
lbl_8029D650:
/* 8029D650 0029A590  1C 06 00 1C */	mulli r0, r6, 0x1c
/* 8029D654 0029A594  7C 64 02 14 */	add r3, r4, r0
/* 8029D658 0029A598  4E 80 00 20 */	blr 

.global updateProc__13JASDSPChannelFv
updateProc__13JASDSPChannelFv:
/* 8029D65C 0029A59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D660 0029A5A0  7C 08 02 A6 */	mflr r0
/* 8029D664 0029A5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D668 0029A5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D66C 0029A5AC  7C 7F 1B 78 */	mr r31, r3
/* 8029D670 0029A5B0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8029D674 0029A5B4  48 00 07 09 */	bl isFinish__Q26JASDsp8TChannelCFv
/* 8029D678 0029A5B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029D67C 0029A5BC  41 82 00 70 */	beq lbl_8029D6EC
/* 8029D680 0029A5C0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8029D684 0029A5C4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8029D688 0029A5C8  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D68C 0029A5CC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029D690 0029A5D0  2C 00 00 00 */	cmpwi r0, 0
/* 8029D694 0029A5D4  40 82 00 3C */	bne lbl_8029D6D0
/* 8029D698 0029A5D8  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D69C 0029A5DC  28 0C 00 00 */	cmplwi r12, 0
/* 8029D6A0 0029A5E0  41 82 00 1C */	beq lbl_8029D6BC
/* 8029D6A4 0029A5E4  38 60 00 02 */	li r3, 2
/* 8029D6A8 0029A5E8  38 80 00 00 */	li r4, 0
/* 8029D6AC 0029A5EC  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D6B0 0029A5F0  7D 89 03 A6 */	mtctr r12
/* 8029D6B4 0029A5F4  4E 80 04 21 */	bctrl 
/* 8029D6B8 0029A5F8  48 00 00 08 */	b lbl_8029D6C0
lbl_8029D6BC:
/* 8029D6BC 0029A5FC  38 60 FF FF */	li r3, -1
lbl_8029D6C0:
/* 8029D6C0 0029A600  2C 03 00 00 */	cmpwi r3, 0
/* 8029D6C4 0029A604  40 80 00 0C */	bge lbl_8029D6D0
/* 8029D6C8 0029A608  38 00 FF FF */	li r0, -1
/* 8029D6CC 0029A60C  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D6D0:
/* 8029D6D0 0029A610  38 00 00 01 */	li r0, 1
/* 8029D6D4 0029A614  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D6D8 0029A618  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D6DC 0029A61C  48 00 06 75 */	bl replyFinishRequest__Q26JASDsp8TChannelFv
/* 8029D6E0 0029A620  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D6E4 0029A624  48 00 08 A9 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D6E8 0029A628  48 00 01 A0 */	b lbl_8029D888
lbl_8029D6EC:
/* 8029D6EC 0029A62C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029D6F0 0029A630  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8029D6F4 0029A634  41 82 00 20 */	beq lbl_8029D714
/* 8029D6F8 0029A638  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 8029D6FC 0029A63C  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D700 0029A640  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D704 0029A644  48 00 06 5D */	bl forceStop__Q26JASDsp8TChannelFv
/* 8029D708 0029A648  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D70C 0029A64C  48 00 08 81 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D710 0029A650  48 00 01 78 */	b lbl_8029D888
lbl_8029D714:
/* 8029D714 0029A654  80 9F 00 00 */	lwz r4, 0(r31)
/* 8029D718 0029A658  2C 04 00 02 */	cmpwi r4, 2
/* 8029D71C 0029A65C  41 82 01 6C */	beq lbl_8029D888
/* 8029D720 0029A660  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8029D724 0029A664  41 82 00 B4 */	beq lbl_8029D7D8
/* 8029D728 0029A668  2C 04 00 01 */	cmpwi r4, 1
/* 8029D72C 0029A66C  40 82 00 AC */	bne lbl_8029D7D8
/* 8029D730 0029A670  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 8029D734 0029A674  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D738 0029A678  38 00 00 00 */	li r0, 0
/* 8029D73C 0029A67C  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D740 0029A680  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D744 0029A684  48 00 05 61 */	bl init__Q26JASDsp8TChannelFv
/* 8029D748 0029A688  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D74C 0029A68C  28 0C 00 00 */	cmplwi r12, 0
/* 8029D750 0029A690  41 82 00 1C */	beq lbl_8029D76C
/* 8029D754 0029A694  38 60 00 01 */	li r3, 1
/* 8029D758 0029A698  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8029D75C 0029A69C  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D760 0029A6A0  7D 89 03 A6 */	mtctr r12
/* 8029D764 0029A6A4  4E 80 04 21 */	bctrl 
/* 8029D768 0029A6A8  48 00 00 08 */	b lbl_8029D770
lbl_8029D76C:
/* 8029D76C 0029A6AC  38 60 00 00 */	li r3, 0
lbl_8029D770:
/* 8029D770 0029A6B0  2C 03 00 00 */	cmpwi r3, 0
/* 8029D774 0029A6B4  40 80 00 50 */	bge lbl_8029D7C4
/* 8029D778 0029A6B8  38 00 00 01 */	li r0, 1
/* 8029D77C 0029A6BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D780 0029A6C0  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D784 0029A6C4  28 0C 00 00 */	cmplwi r12, 0
/* 8029D788 0029A6C8  41 82 00 1C */	beq lbl_8029D7A4
/* 8029D78C 0029A6CC  38 60 00 02 */	li r3, 2
/* 8029D790 0029A6D0  38 80 00 00 */	li r4, 0
/* 8029D794 0029A6D4  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D798 0029A6D8  7D 89 03 A6 */	mtctr r12
/* 8029D79C 0029A6DC  4E 80 04 21 */	bctrl 
/* 8029D7A0 0029A6E0  48 00 00 08 */	b lbl_8029D7A8
lbl_8029D7A4:
/* 8029D7A4 0029A6E4  38 60 FF FF */	li r3, -1
lbl_8029D7A8:
/* 8029D7A8 0029A6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8029D7AC 0029A6EC  40 80 00 0C */	bge lbl_8029D7B8
/* 8029D7B0 0029A6F0  38 00 FF FF */	li r0, -1
/* 8029D7B4 0029A6F4  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D7B8:
/* 8029D7B8 0029A6F8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7BC 0029A6FC  48 00 07 D1 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D7C0 0029A700  48 00 00 C8 */	b lbl_8029D888
lbl_8029D7C4:
/* 8029D7C4 0029A704  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7C8 0029A708  48 00 05 19 */	bl playStart__Q26JASDsp8TChannelFv
/* 8029D7CC 0029A70C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7D0 0029A710  48 00 07 BD */	bl flush__Q26JASDsp8TChannelFv
/* 8029D7D4 0029A714  48 00 00 B4 */	b lbl_8029D888
lbl_8029D7D8:
/* 8029D7D8 0029A718  2C 04 00 01 */	cmpwi r4, 1
/* 8029D7DC 0029A71C  41 82 00 AC */	beq lbl_8029D888
/* 8029D7E0 0029A720  38 80 00 00 */	li r4, 0
/* 8029D7E4 0029A724  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D7E8 0029A728  28 0C 00 00 */	cmplwi r12, 0
/* 8029D7EC 0029A72C  41 82 00 20 */	beq lbl_8029D80C
/* 8029D7F0 0029A730  38 60 00 00 */	li r3, 0
/* 8029D7F4 0029A734  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8029D7F8 0029A738  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D7FC 0029A73C  7D 89 03 A6 */	mtctr r12
/* 8029D800 0029A740  4E 80 04 21 */	bctrl 
/* 8029D804 0029A744  38 80 00 01 */	li r4, 1
/* 8029D808 0029A748  48 00 00 08 */	b lbl_8029D810
lbl_8029D80C:
/* 8029D80C 0029A74C  38 60 00 00 */	li r3, 0
lbl_8029D810:
/* 8029D810 0029A750  2C 03 00 00 */	cmpwi r3, 0
/* 8029D814 0029A754  40 80 00 58 */	bge lbl_8029D86C
/* 8029D818 0029A758  38 00 00 01 */	li r0, 1
/* 8029D81C 0029A75C  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D820 0029A760  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D824 0029A764  28 0C 00 00 */	cmplwi r12, 0
/* 8029D828 0029A768  41 82 00 1C */	beq lbl_8029D844
/* 8029D82C 0029A76C  38 60 00 02 */	li r3, 2
/* 8029D830 0029A770  38 80 00 00 */	li r4, 0
/* 8029D834 0029A774  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D838 0029A778  7D 89 03 A6 */	mtctr r12
/* 8029D83C 0029A77C  4E 80 04 21 */	bctrl 
/* 8029D840 0029A780  48 00 00 08 */	b lbl_8029D848
lbl_8029D844:
/* 8029D844 0029A784  38 60 FF FF */	li r3, -1
lbl_8029D848:
/* 8029D848 0029A788  2C 03 00 00 */	cmpwi r3, 0
/* 8029D84C 0029A78C  40 80 00 0C */	bge lbl_8029D858
/* 8029D850 0029A790  38 00 FF FF */	li r0, -1
/* 8029D854 0029A794  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D858:
/* 8029D858 0029A798  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D85C 0029A79C  48 00 04 E9 */	bl playStop__Q26JASDsp8TChannelFv
/* 8029D860 0029A7A0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D864 0029A7A4  48 00 07 29 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D868 0029A7A8  48 00 00 20 */	b lbl_8029D888
lbl_8029D86C:
/* 8029D86C 0029A7AC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8029D870 0029A7B0  38 03 00 01 */	addi r0, r3, 1
/* 8029D874 0029A7B4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D878 0029A7B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8029D87C 0029A7BC  41 82 00 0C */	beq lbl_8029D888
/* 8029D880 0029A7C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D884 0029A7C4  48 00 07 09 */	bl flush__Q26JASDsp8TChannelFv
lbl_8029D888:
/* 8029D888 0029A7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D88C 0029A7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D890 0029A7D0  7C 08 03 A6 */	mtlr r0
/* 8029D894 0029A7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D898 0029A7D8  4E 80 00 20 */	blr 

.global updateAll__13JASDSPChannelFv
updateAll__13JASDSPChannelFv:
/* 8029D89C 0029A7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D8A0 0029A7E0  7C 08 02 A6 */	mflr r0
/* 8029D8A4 0029A7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D8A8 0029A7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D8AC 0029A7EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8029D8B0 0029A7F0  3B C0 00 00 */	li r30, 0
/* 8029D8B4 0029A7F4  3B E0 00 00 */	li r31, 0
lbl_8029D8B8:
/* 8029D8B8 0029A7F8  57 C0 07 3F */	clrlwi. r0, r30, 0x1c
/* 8029D8BC 0029A7FC  40 82 00 18 */	bne lbl_8029D8D4
/* 8029D8C0 0029A800  28 1E 00 00 */	cmplwi r30, 0
/* 8029D8C4 0029A804  41 82 00 10 */	beq lbl_8029D8D4
/* 8029D8C8 0029A808  38 1E FF FF */	addi r0, r30, -1
/* 8029D8CC 0029A80C  54 03 E1 3E */	srwi r3, r0, 4
/* 8029D8D0 0029A810  48 00 00 D5 */	bl releaseHalt__6JASDspFUl
lbl_8029D8D4:
/* 8029D8D4 0029A814  80 0D 8D 60 */	lwz r0, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D8D8 0029A818  7C 60 FA 14 */	add r3, r0, r31
/* 8029D8DC 0029A81C  4B FF FD 81 */	bl updateProc__13JASDSPChannelFv
/* 8029D8E0 0029A820  3B DE 00 01 */	addi r30, r30, 1
/* 8029D8E4 0029A824  28 1E 00 40 */	cmplwi r30, 0x40
/* 8029D8E8 0029A828  3B FF 00 1C */	addi r31, r31, 0x1c
/* 8029D8EC 0029A82C  41 80 FF CC */	blt lbl_8029D8B8
/* 8029D8F0 0029A830  38 60 00 03 */	li r3, 3
/* 8029D8F4 0029A834  48 00 00 B1 */	bl releaseHalt__6JASDspFUl
/* 8029D8F8 0029A838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D8FC 0029A83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029D900 0029A840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D904 0029A844  7C 08 03 A6 */	mtlr r0
/* 8029D908 0029A848  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D90C 0029A84C  4E 80 00 20 */	blr 

.global killActiveChannel__13JASDSPChannelFv
killActiveChannel__13JASDSPChannelFv:
/* 8029D910 0029A850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D914 0029A854  7C 08 02 A6 */	mflr r0
/* 8029D918 0029A858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D91C 0029A85C  4B FF FC B5 */	bl getLowestActiveChannel__13JASDSPChannelFv
/* 8029D920 0029A860  28 03 00 00 */	cmplwi r3, 0
/* 8029D924 0029A864  40 82 00 0C */	bne lbl_8029D930
/* 8029D928 0029A868  38 60 00 00 */	li r3, 0
/* 8029D92C 0029A86C  48 00 00 0C */	b lbl_8029D938
lbl_8029D930:
/* 8029D930 0029A870  4B FF FA 11 */	bl drop__13JASDSPChannelFv
/* 8029D934 0029A874  38 60 00 01 */	li r3, 1
lbl_8029D938:
/* 8029D938 0029A878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D93C 0029A87C  7C 08 03 A6 */	mtlr r0
/* 8029D940 0029A880  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D944 0029A884  4E 80 00 20 */	blr 

.global getHandle__13JASDSPChannelFUl
getHandle__13JASDSPChannelFUl:
/* 8029D948 0029A888  80 8D 8D 60 */	lwz r4, lbl_804512E0-_SDA_BASE_(r13)
/* 8029D94C 0029A88C  1C 03 00 1C */	mulli r0, r3, 0x1c
/* 8029D950 0029A890  7C 64 02 14 */	add r3, r4, r0
/* 8029D954 0029A894  4E 80 00 20 */	blr 

