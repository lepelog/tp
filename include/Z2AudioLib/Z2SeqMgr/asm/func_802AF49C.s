/* 802AF49C 002AC3DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AF4A0 002AC3E0  7C 08 02 A6 */	mflr r0
/* 802AF4A4 002AC3E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AF4A8 002AC3E8  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF4AC 002AC3EC  48 0B 2D 2D */	bl _savegpr_28
/* 802AF4B0 002AC3F0  7C 7D 1B 78 */	mr r29, r3
/* 802AF4B4 002AC3F4  7C 9E 23 78 */	mr r30, r4
/* 802AF4B8 002AC3F8  3C 1E 00 01 */	addis r0, r30, 1
/* 802AF4BC 002AC3FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AF4C0 002AC400  41 82 03 AC */	beq lbl_802AF86C
/* 802AF4C4 002AC404  3C BE FF 00 */	addis r5, r30, 0xff00
/* 802AF4C8 002AC408  38 A5 FF FC */	addi r5, r5, -4
/* 802AF4CC 002AC40C  28 05 00 A4 */	cmplwi r5, 0xa4
/* 802AF4D0 002AC410  41 81 01 58 */	bgt lbl_802AF628
/* 802AF4D4 002AC414  3C 80 80 3D */	lis r4, lbl_803C9DF8@ha
/* 802AF4D8 002AC418  38 84 9D F8 */	addi r4, r4, lbl_803C9DF8@l
/* 802AF4DC 002AC41C  54 A5 10 3A */	slwi r5, r5, 2
/* 802AF4E0 002AC420  7C 04 28 2E */	lwzx r0, r4, r5
/* 802AF4E4 002AC424  7C 09 03 A6 */	mtctr r0
/* 802AF4E8 002AC428  4E 80 04 20 */	bctr 
/* 802AF4EC 002AC42C  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF4F0 002AC430  28 03 00 00 */	cmplwi r3, 0
/* 802AF4F4 002AC434  41 82 00 10 */	beq lbl_802AF504
/* 802AF4F8 002AC438  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802AF4FC 002AC43C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802AF500 002AC440  48 00 00 08 */	b lbl_802AF508
lbl_802AF504:
/* 802AF504 002AC444  38 60 FF FF */	li r3, -1
lbl_802AF508:
/* 802AF508 002AC448  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802AF50C 002AC44C  28 00 00 6D */	cmplwi r0, 0x6d
/* 802AF510 002AC450  40 82 00 0C */	bne lbl_802AF51C
/* 802AF514 002AC454  7F A3 EB 78 */	mr r3, r29
/* 802AF518 002AC458  48 00 03 6D */	bl subBgmStop__8Z2SeqMgrFv
lbl_802AF51C:
/* 802AF51C 002AC45C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802AF520 002AC460  93 DD 00 10 */	stw r30, 0x10(r29)
/* 802AF524 002AC464  48 00 03 48 */	b lbl_802AF86C
/* 802AF528 002AC468  3B 80 00 00 */	li r28, 0
/* 802AF52C 002AC46C  3B E0 FF FF */	li r31, -1
/* 802AF530 002AC470  48 00 01 00 */	b lbl_802AF630
/* 802AF534 002AC474  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 802AF538 002AC478  3C 80 80 3A */	lis r4, lbl_8039BA08@ha
/* 802AF53C 002AC47C  38 84 BA 08 */	addi r4, r4, lbl_8039BA08@l
/* 802AF540 002AC480  38 84 02 6A */	addi r4, r4, 0x26a
/* 802AF544 002AC484  48 00 6C A5 */	bl setDemoName__11Z2StatusMgrFPc
/* 802AF548 002AC488  3B 80 00 00 */	li r28, 0
/* 802AF54C 002AC48C  8B ED 82 E2 */	lbz r31, lbl_80450862-_SDA_BASE_(r13)
/* 802AF550 002AC490  48 00 00 E0 */	b lbl_802AF630
/* 802AF554 002AC494  3B 80 00 00 */	li r28, 0
/* 802AF558 002AC498  3B E0 00 78 */	li r31, 0x78
/* 802AF55C 002AC49C  38 80 00 00 */	li r4, 0
/* 802AF560 002AC4A0  38 A0 00 00 */	li r5, 0
/* 802AF564 002AC4A4  4B FF FE A5 */	bl bgmStop__8Z2SeqMgrFUll
/* 802AF568 002AC4A8  48 00 00 C8 */	b lbl_802AF630
/* 802AF56C 002AC4AC  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF570 002AC4B0  28 03 00 00 */	cmplwi r3, 0
/* 802AF574 002AC4B4  41 82 00 0C */	beq lbl_802AF580
/* 802AF578 002AC4B8  38 80 00 00 */	li r4, 0
/* 802AF57C 002AC4BC  4B FF 2F 61 */	bl stop__8JAISoundFUl
lbl_802AF580:
/* 802AF580 002AC4C0  7F A3 EB 78 */	mr r3, r29
/* 802AF584 002AC4C4  38 80 00 01 */	li r4, 1
/* 802AF588 002AC4C8  48 00 4B DD */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802AF58C 002AC4CC  3B 80 00 00 */	li r28, 0
/* 802AF590 002AC4D0  3B E0 00 01 */	li r31, 1
/* 802AF594 002AC4D4  48 00 00 9C */	b lbl_802AF630
/* 802AF598 002AC4D8  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF59C 002AC4DC  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 802AF5A0 002AC4E0  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF5A4 002AC4E4  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 802AF5A8 002AC4E8  38 00 00 00 */	li r0, 0
/* 802AF5AC 002AC4EC  90 1D 00 80 */	stw r0, 0x80(r29)
/* 802AF5B0 002AC4F0  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 802AF5B4 002AC4F4  3B 80 00 00 */	li r28, 0
/* 802AF5B8 002AC4F8  3B E0 00 01 */	li r31, 1
/* 802AF5BC 002AC4FC  48 00 00 74 */	b lbl_802AF630
/* 802AF5C0 002AC500  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF5C4 002AC504  28 03 00 00 */	cmplwi r3, 0
/* 802AF5C8 002AC508  41 82 00 0C */	beq lbl_802AF5D4
/* 802AF5CC 002AC50C  38 80 00 00 */	li r4, 0
/* 802AF5D0 002AC510  4B FF 2F 0D */	bl stop__8JAISoundFUl
lbl_802AF5D4:
/* 802AF5D4 002AC514  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AF5D8 002AC518  28 03 00 00 */	cmplwi r3, 0
/* 802AF5DC 002AC51C  41 82 00 0C */	beq lbl_802AF5E8
/* 802AF5E0 002AC520  38 80 00 00 */	li r4, 0
/* 802AF5E4 002AC524  4B FF 2E F9 */	bl stop__8JAISoundFUl
lbl_802AF5E8:
/* 802AF5E8 002AC528  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF5EC 002AC52C  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 802AF5F0 002AC530  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF5F4 002AC534  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 802AF5F8 002AC538  38 00 00 00 */	li r0, 0
/* 802AF5FC 002AC53C  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802AF600 002AC540  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 802AF604 002AC544  3B 80 00 00 */	li r28, 0
/* 802AF608 002AC548  3B E0 00 01 */	li r31, 1
/* 802AF60C 002AC54C  48 00 00 24 */	b lbl_802AF630
/* 802AF610 002AC550  3B 80 00 00 */	li r28, 0
/* 802AF614 002AC554  3B E0 00 14 */	li r31, 0x14
/* 802AF618 002AC558  48 00 00 18 */	b lbl_802AF630
/* 802AF61C 002AC55C  3B 80 00 00 */	li r28, 0
/* 802AF620 002AC560  8B ED 82 E2 */	lbz r31, lbl_80450862-_SDA_BASE_(r13)
/* 802AF624 002AC564  48 00 00 0C */	b lbl_802AF630
lbl_802AF628:
/* 802AF628 002AC568  8B 8D 82 E1 */	lbz r28, lbl_80450861-_SDA_BASE_(r13)
/* 802AF62C 002AC56C  8B ED 82 E2 */	lbz r31, lbl_80450862-_SDA_BASE_(r13)
lbl_802AF630:
/* 802AF630 002AC570  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF634 002AC574  28 03 00 00 */	cmplwi r3, 0
/* 802AF638 002AC578  41 82 00 10 */	beq lbl_802AF648
/* 802AF63C 002AC57C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AF640 002AC580  90 01 00 08 */	stw r0, 8(r1)
/* 802AF644 002AC584  48 00 00 08 */	b lbl_802AF64C
lbl_802AF648:
/* 802AF648 002AC588  38 00 FF FF */	li r0, -1
lbl_802AF64C:
/* 802AF64C 002AC58C  7C 1E 00 40 */	cmplw r30, r0
/* 802AF650 002AC590  40 82 00 38 */	bne lbl_802AF688
/* 802AF654 002AC594  3C 1E FF 00 */	addis r0, r30, 0xff00
/* 802AF658 002AC598  28 00 00 24 */	cmplwi r0, 0x24
/* 802AF65C 002AC59C  41 82 00 0C */	beq lbl_802AF668
/* 802AF660 002AC5A0  28 00 00 06 */	cmplwi r0, 6
/* 802AF664 002AC5A4  40 82 00 18 */	bne lbl_802AF67C
lbl_802AF668:
/* 802AF668 002AC5A8  38 80 00 00 */	li r4, 0
/* 802AF66C 002AC5AC  4B FF 2E 71 */	bl stop__8JAISoundFUl
/* 802AF670 002AC5B0  38 7D 00 04 */	addi r3, r29, 4
/* 802AF674 002AC5B4  4B FF 2B 11 */	bl releaseSound__14JAISoundHandleFv
/* 802AF678 002AC5B8  48 00 00 28 */	b lbl_802AF6A0
lbl_802AF67C:
/* 802AF67C 002AC5BC  38 00 FF FF */	li r0, -1
/* 802AF680 002AC5C0  B0 1D 00 B8 */	sth r0, 0xb8(r29)
/* 802AF684 002AC5C4  48 00 01 E8 */	b lbl_802AF86C
lbl_802AF688:
/* 802AF688 002AC5C8  28 03 00 00 */	cmplwi r3, 0
/* 802AF68C 002AC5CC  41 82 00 14 */	beq lbl_802AF6A0
/* 802AF690 002AC5D0  7F A3 EB 78 */	mr r3, r29
/* 802AF694 002AC5D4  48 00 01 F1 */	bl subBgmStop__8Z2SeqMgrFv
/* 802AF698 002AC5D8  7F A3 EB 78 */	mr r3, r29
/* 802AF69C 002AC5DC  48 00 03 35 */	bl subBgmStopInner__8Z2SeqMgrFv
lbl_802AF6A0:
/* 802AF6A0 002AC5E0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802AF6A4 002AC5E4  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802AF6A8 002AC5E8  38 81 00 10 */	addi r4, r1, 0x10
/* 802AF6AC 002AC5EC  38 BD 00 04 */	addi r5, r29, 4
/* 802AF6B0 002AC5F0  38 C0 00 00 */	li r6, 0
/* 802AF6B4 002AC5F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF6B8 002AC5F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF6BC 002AC5FC  7D 89 03 A6 */	mtctr r12
/* 802AF6C0 002AC600  4E 80 04 21 */	bctrl 
/* 802AF6C4 002AC604  38 00 00 FF */	li r0, 0xff
/* 802AF6C8 002AC608  98 1D 00 BD */	stb r0, 0xbd(r29)
/* 802AF6CC 002AC60C  3C 60 01 00 */	lis r3, 0x0100006C@ha
/* 802AF6D0 002AC610  38 03 00 6C */	addi r0, r3, 0x0100006C@l
/* 802AF6D4 002AC614  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6D8 002AC618  41 82 00 68 */	beq lbl_802AF740
/* 802AF6DC 002AC61C  40 80 00 34 */	bge lbl_802AF710
/* 802AF6E0 002AC620  38 03 00 29 */	addi r0, r3, 0x29
/* 802AF6E4 002AC624  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6E8 002AC628  41 82 00 80 */	beq lbl_802AF768
/* 802AF6EC 002AC62C  40 80 00 14 */	bge lbl_802AF700
/* 802AF6F0 002AC630  38 03 00 04 */	addi r0, r3, 4
/* 802AF6F4 002AC634  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6F8 002AC638  41 82 00 38 */	beq lbl_802AF730
/* 802AF6FC 002AC63C  48 00 00 78 */	b lbl_802AF774
lbl_802AF700:
/* 802AF700 002AC640  38 03 00 39 */	addi r0, r3, 0x39
/* 802AF704 002AC644  7C 1E 00 00 */	cmpw r30, r0
/* 802AF708 002AC648  41 82 00 38 */	beq lbl_802AF740
/* 802AF70C 002AC64C  48 00 00 68 */	b lbl_802AF774
lbl_802AF710:
/* 802AF710 002AC650  38 03 00 A8 */	addi r0, r3, 0xa8
/* 802AF714 002AC654  7C 1E 00 00 */	cmpw r30, r0
/* 802AF718 002AC658  41 82 00 34 */	beq lbl_802AF74C
/* 802AF71C 002AC65C  40 80 00 58 */	bge lbl_802AF774
/* 802AF720 002AC660  38 03 00 96 */	addi r0, r3, 0x96
/* 802AF724 002AC664  7C 1E 00 00 */	cmpw r30, r0
/* 802AF728 002AC668  41 82 00 08 */	beq lbl_802AF730
/* 802AF72C 002AC66C  48 00 00 48 */	b lbl_802AF774
lbl_802AF730:
/* 802AF730 002AC670  7F A3 EB 78 */	mr r3, r29
/* 802AF734 002AC674  38 80 00 00 */	li r4, 0
/* 802AF738 002AC678  48 00 26 BD */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802AF73C 002AC67C  48 00 00 38 */	b lbl_802AF774
lbl_802AF740:
/* 802AF740 002AC680  7F A3 EB 78 */	mr r3, r29
/* 802AF744 002AC684  38 80 00 00 */	li r4, 0
/* 802AF748 002AC688  48 00 07 95 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_802AF74C:
/* 802AF74C 002AC68C  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF750 002AC690  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 802AF754 002AC694  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF758 002AC698  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 802AF75C 002AC69C  38 00 00 00 */	li r0, 0
/* 802AF760 002AC6A0  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802AF764 002AC6A4  D0 1D 00 6C */	stfs f0, 0x6c(r29)
lbl_802AF768:
/* 802AF768 002AC6A8  7F A3 EB 78 */	mr r3, r29
/* 802AF76C 002AC6AC  38 80 00 01 */	li r4, 1
/* 802AF770 002AC6B0  48 00 26 85 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_802AF774:
/* 802AF774 002AC6B4  2C 1C 00 00 */	cmpwi r28, 0
/* 802AF778 002AC6B8  41 82 00 6C */	beq lbl_802AF7E4
/* 802AF77C 002AC6BC  C0 22 BF 9C */	lfs f1, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF780 002AC6C0  D0 3D 00 24 */	stfs f1, 0x24(r29)
/* 802AF784 002AC6C4  28 1C 00 00 */	cmplwi r28, 0
/* 802AF788 002AC6C8  41 82 00 40 */	beq lbl_802AF7C8
/* 802AF78C 002AC6CC  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 802AF790 002AC6D0  93 9D 00 30 */	stw r28, 0x30(r29)
/* 802AF794 002AC6D4  C0 62 BF 98 */	lfs f3, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF798 002AC6D8  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF79C 002AC6DC  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802AF7A0 002AC6E0  C8 22 BF A8 */	lfd f1, lbl_804559A8-_SDA2_BASE_(r2)
/* 802AF7A4 002AC6E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF7A8 002AC6E8  3C 00 43 30 */	lis r0, 0x4330
/* 802AF7AC 002AC6EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF7B0 002AC6F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF7B4 002AC6F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF7B8 002AC6F8  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF7BC 002AC6FC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 802AF7C0 002AC700  D0 7D 00 2C */	stfs f3, 0x2c(r29)
/* 802AF7C4 002AC704  48 00 00 3C */	b lbl_802AF800
lbl_802AF7C8:
/* 802AF7C8 002AC708  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF7CC 002AC70C  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 802AF7D0 002AC710  D0 3D 00 28 */	stfs f1, 0x28(r29)
/* 802AF7D4 002AC714  38 00 00 00 */	li r0, 0
/* 802AF7D8 002AC718  90 1D 00 30 */	stw r0, 0x30(r29)
/* 802AF7DC 002AC71C  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 802AF7E0 002AC720  48 00 00 20 */	b lbl_802AF800
lbl_802AF7E4:
/* 802AF7E4 002AC724  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF7E8 002AC728  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 802AF7EC 002AC72C  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF7F0 002AC730  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 802AF7F4 002AC734  38 00 00 00 */	li r0, 0
/* 802AF7F8 002AC738  90 1D 00 30 */	stw r0, 0x30(r29)
/* 802AF7FC 002AC73C  D0 1D 00 2C */	stfs f0, 0x2c(r29)
lbl_802AF800:
/* 802AF800 002AC740  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF804 002AC744  41 80 00 60 */	blt lbl_802AF864
/* 802AF808 002AC748  28 1F 00 00 */	cmplwi r31, 0
/* 802AF80C 002AC74C  41 82 00 40 */	beq lbl_802AF84C
/* 802AF810 002AC750  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 802AF814 002AC754  93 FD 00 20 */	stw r31, 0x20(r29)
/* 802AF818 002AC758  C0 62 BF 9C */	lfs f3, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF81C 002AC75C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF820 002AC760  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802AF824 002AC764  C8 22 BF A8 */	lfd f1, lbl_804559A8-_SDA2_BASE_(r2)
/* 802AF828 002AC768  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF82C 002AC76C  3C 00 43 30 */	lis r0, 0x4330
/* 802AF830 002AC770  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF834 002AC774  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF838 002AC778  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF83C 002AC77C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF840 002AC780  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF844 002AC784  D0 7D 00 1C */	stfs f3, 0x1c(r29)
/* 802AF848 002AC788  48 00 00 1C */	b lbl_802AF864
lbl_802AF84C:
/* 802AF84C 002AC78C  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF850 002AC790  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802AF854 002AC794  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF858 002AC798  38 00 00 00 */	li r0, 0
/* 802AF85C 002AC79C  90 1D 00 20 */	stw r0, 0x20(r29)
/* 802AF860 002AC7A0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
lbl_802AF864:
/* 802AF864 002AC7A4  38 00 FF FF */	li r0, -1
/* 802AF868 002AC7A8  B0 1D 00 B8 */	sth r0, 0xb8(r29)
lbl_802AF86C:
/* 802AF86C 002AC7AC  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF870 002AC7B0  48 0B 29 B5 */	bl _restgpr_28
/* 802AF874 002AC7B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AF878 002AC7B8  7C 08 03 A6 */	mtlr r0
/* 802AF87C 002AC7BC  38 21 00 30 */	addi r1, r1, 0x30
/* 802AF880 002AC7C0  4E 80 00 20 */	blr 