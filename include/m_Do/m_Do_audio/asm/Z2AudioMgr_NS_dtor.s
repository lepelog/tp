/* 800073C8 00004308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800073CC 0000430C  7C 08 02 A6 */	mflr r0
/* 800073D0 00004310  90 01 00 24 */	stw r0, 0x24(r1)
/* 800073D4 00004314  39 61 00 20 */	addi r11, r1, 0x20
/* 800073D8 00004318  48 35 AE 05 */	bl _savegpr_29
/* 800073DC 0000431C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800073E0 00004320  7C 9F 23 78 */	mr r31, r4
/* 800073E4 00004324  41 82 04 38 */	beq lbl_8000781C
/* 800073E8 00004328  3C 60 80 3D */	lis r3, lbl_803CBF38@ha
/* 800073EC 0000432C  38 03 BF 38 */	addi r0, r3, lbl_803CBF38@l
/* 800073F0 00004330  90 1E 05 14 */	stw r0, 0x514(r30)
/* 800073F4 00004334  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 800073F8 00004338  41 82 00 24 */	beq lbl_8000741C
/* 800073FC 0000433C  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 80007400 00004340  41 82 00 1C */	beq lbl_8000741C
/* 80007404 00004344  80 6D 85 C0 */	lwz r3, lbl_80450B40-_SDA_BASE_(r13)
/* 80007408 00004348  38 1E 13 70 */	addi r0, r30, 0x1370
/* 8000740C 0000434C  7C 03 00 40 */	cmplw r3, r0
/* 80007410 00004350  40 82 00 0C */	bne lbl_8000741C
/* 80007414 00004354  38 00 00 00 */	li r0, 0
/* 80007418 00004358  90 0D 85 C0 */	stw r0, lbl_80450B40-_SDA_BASE_(r13)
lbl_8000741C:
/* 8000741C 0000435C  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 80007420 00004360  41 82 00 98 */	beq lbl_800074B8
/* 80007424 00004364  34 7E 0F 38 */	addic. r3, r30, 0xf38
/* 80007428 00004368  41 82 00 54 */	beq lbl_8000747C
/* 8000742C 0000436C  3C 80 80 3D */	lis r4, lbl_803CBF24@ha
/* 80007430 00004370  38 04 BF 24 */	addi r0, r4, lbl_803CBF24@l
/* 80007434 00004374  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 80007438 00004378  28 03 00 00 */	cmplwi r3, 0
/* 8000743C 0000437C  41 82 00 40 */	beq lbl_8000747C
/* 80007440 00004380  3C 80 80 3D */	lis r4, lbl_803C9D80@ha
/* 80007444 00004384  38 04 9D 80 */	addi r0, r4, lbl_803C9D80@l
/* 80007448 00004388  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8000744C 0000438C  34 1E 0F 3C */	addic. r0, r30, 0xf3c
/* 80007450 00004390  41 82 00 24 */	beq lbl_80007474
/* 80007454 00004394  34 83 00 04 */	addic. r4, r3, 4
/* 80007458 00004398  41 82 00 08 */	beq lbl_80007460
/* 8000745C 0000439C  38 84 FF FC */	addi r4, r4, -4
lbl_80007460:
/* 80007460 000043A0  80 0D 85 F4 */	lwz r0, lbl_80450B74-_SDA_BASE_(r13)
/* 80007464 000043A4  7C 00 20 40 */	cmplw r0, r4
/* 80007468 000043A8  40 82 00 0C */	bne lbl_80007474
/* 8000746C 000043AC  38 00 00 00 */	li r0, 0
/* 80007470 000043B0  90 0D 85 F4 */	stw r0, lbl_80450B74-_SDA_BASE_(r13)
lbl_80007474:
/* 80007474 000043B4  38 80 00 00 */	li r4, 0
/* 80007478 000043B8  48 29 BB 11 */	bl __dt__15JAISoundStarterFv
lbl_8000747C:
/* 8000747C 000043BC  34 7E 0F 30 */	addic. r3, r30, 0xf30
/* 80007480 000043C0  41 82 00 08 */	beq lbl_80007488
/* 80007484 000043C4  48 29 AD 01 */	bl releaseSound__14JAISoundHandleFv
lbl_80007488:
/* 80007488 000043C8  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000748C 000043CC  41 82 00 0C */	beq lbl_80007498
/* 80007490 000043D0  38 7E 0F 2C */	addi r3, r30, 0xf2c
/* 80007494 000043D4  48 29 AC F1 */	bl releaseSound__14JAISoundHandleFv
lbl_80007498:
/* 80007498 000043D8  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000749C 000043DC  41 82 00 1C */	beq lbl_800074B8
/* 800074A0 000043E0  80 6D 85 F0 */	lwz r3, lbl_80450B70-_SDA_BASE_(r13)
/* 800074A4 000043E4  38 1E 0F 2C */	addi r0, r30, 0xf2c
/* 800074A8 000043E8  7C 03 00 40 */	cmplw r3, r0
/* 800074AC 000043EC  40 82 00 0C */	bne lbl_800074B8
/* 800074B0 000043F0  38 00 00 00 */	li r0, 0
/* 800074B4 000043F4  90 0D 85 F0 */	stw r0, lbl_80450B70-_SDA_BASE_(r13)
lbl_800074B8:
/* 800074B8 000043F8  38 7E 0D 4C */	addi r3, r30, 0xd4c
/* 800074BC 000043FC  38 80 FF FF */	li r4, -1
/* 800074C0 00004400  48 2B 5D 3D */	bl __dt__10Z2AudienceFv
/* 800074C4 00004404  34 1E 0D 40 */	addic. r0, r30, 0xd40
/* 800074C8 00004408  41 82 00 94 */	beq lbl_8000755C
/* 800074CC 0000440C  3C 60 80 3D */	lis r3, lbl_803CAC48@ha
/* 800074D0 00004410  38 63 AC 48 */	addi r3, r3, lbl_803CAC48@l
/* 800074D4 00004414  90 7E 0D 40 */	stw r3, 0xd40(r30)
/* 800074D8 00004418  38 03 00 24 */	addi r0, r3, 0x24
/* 800074DC 0000441C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 800074E0 00004420  38 03 00 34 */	addi r0, r3, 0x34
/* 800074E4 00004424  90 1E 0D 48 */	stw r0, 0xd48(r30)
/* 800074E8 00004428  34 1E 0D 4C */	addic. r0, r30, 0xd4c
/* 800074EC 0000442C  41 82 00 24 */	beq lbl_80007510
/* 800074F0 00004430  34 7E 0D 4C */	addic. r3, r30, 0xd4c
/* 800074F4 00004434  41 82 00 08 */	beq lbl_800074FC
/* 800074F8 00004438  38 63 FF F4 */	addi r3, r3, -12
lbl_800074FC:
/* 800074FC 0000443C  80 0D 85 CC */	lwz r0, lbl_80450B4C-_SDA_BASE_(r13)
/* 80007500 00004440  7C 00 18 40 */	cmplw r0, r3
/* 80007504 00004444  40 82 00 0C */	bne lbl_80007510
/* 80007508 00004448  38 00 00 00 */	li r0, 0
/* 8000750C 0000444C  90 0D 85 CC */	stw r0, lbl_80450B4C-_SDA_BASE_(r13)
lbl_80007510:
/* 80007510 00004450  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 80007514 00004454  38 80 00 00 */	li r4, 0
/* 80007518 00004458  48 29 C5 C1 */	bl __dt__16JAIStreamDataMgrFv
/* 8000751C 0000445C  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007520 00004460  41 82 00 30 */	beq lbl_80007550
/* 80007524 00004464  3C 60 80 3A */	lis r3, lbl_803A2F4C@ha
/* 80007528 00004468  38 03 2F 4C */	addi r0, r3, lbl_803A2F4C@l
/* 8000752C 0000446C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 80007530 00004470  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007534 00004474  41 82 00 1C */	beq lbl_80007550
/* 80007538 00004478  80 6D 85 D0 */	lwz r3, lbl_80450B50-_SDA_BASE_(r13)
/* 8000753C 0000447C  38 1E 0D 44 */	addi r0, r30, 0xd44
/* 80007540 00004480  7C 03 00 40 */	cmplw r3, r0
/* 80007544 00004484  40 82 00 0C */	bne lbl_80007550
/* 80007548 00004488  38 00 00 00 */	li r0, 0
/* 8000754C 0000448C  90 0D 85 D0 */	stw r0, lbl_80450B50-_SDA_BASE_(r13)
lbl_80007550:
/* 80007550 00004490  38 7E 0D 40 */	addi r3, r30, 0xd40
/* 80007554 00004494  38 80 00 00 */	li r4, 0
/* 80007558 00004498  48 29 B7 F9 */	bl __dt__12JAISoundInfoFv
lbl_8000755C:
/* 8000755C 0000449C  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007560 000044A0  41 82 01 04 */	beq lbl_80007664
/* 80007564 000044A4  3C 60 80 3D */	lis r3, lbl_803C9D70@ha
/* 80007568 000044A8  38 03 9D 70 */	addi r0, r3, lbl_803C9D70@l
/* 8000756C 000044AC  90 1E 05 30 */	stw r0, 0x530(r30)
/* 80007570 000044B0  37 BE 0C CC */	addic. r29, r30, 0xccc
/* 80007574 000044B4  41 82 00 30 */	beq lbl_800075A4
/* 80007578 000044B8  34 7D 00 58 */	addic. r3, r29, 0x58
/* 8000757C 000044BC  41 82 00 0C */	beq lbl_80007588
/* 80007580 000044C0  38 80 00 00 */	li r4, 0
/* 80007584 000044C4  48 2D 49 29 */	bl __dt__10JSUPtrListFv
lbl_80007588:
/* 80007588 000044C8  28 1D 00 00 */	cmplwi r29, 0
/* 8000758C 000044CC  41 82 00 18 */	beq lbl_800075A4
/* 80007590 000044D0  80 0D 85 E4 */	lwz r0, lbl_80450B64-_SDA_BASE_(r13)
/* 80007594 000044D4  7C 00 E8 40 */	cmplw r0, r29
/* 80007598 000044D8  40 82 00 0C */	bne lbl_800075A4
/* 8000759C 000044DC  38 00 00 00 */	li r0, 0
/* 800075A0 000044E0  90 0D 85 E4 */	stw r0, lbl_80450B64-_SDA_BASE_(r13)
lbl_800075A4:
/* 800075A4 000044E4  37 BE 0C 58 */	addic. r29, r30, 0xc58
/* 800075A8 000044E8  41 82 00 48 */	beq lbl_800075F0
/* 800075AC 000044EC  3C 60 80 3D */	lis r3, lbl_803C9958@ha
/* 800075B0 000044F0  38 03 99 58 */	addi r0, r3, lbl_803C9958@l
/* 800075B4 000044F4  90 1E 0C 58 */	stw r0, 0xc58(r30)
/* 800075B8 000044F8  34 7D 00 64 */	addic. r3, r29, 0x64
/* 800075BC 000044FC  41 82 00 0C */	beq lbl_800075C8
/* 800075C0 00004500  38 80 00 00 */	li r4, 0
/* 800075C4 00004504  48 2D 48 E9 */	bl __dt__10JSUPtrListFv
lbl_800075C8:
/* 800075C8 00004508  7F A3 EB 78 */	mr r3, r29
/* 800075CC 0000450C  38 80 00 00 */	li r4, 0
/* 800075D0 00004510  48 29 A1 A5 */	bl __dt__14JAISeqDataUserFv
/* 800075D4 00004514  28 1D 00 00 */	cmplwi r29, 0
/* 800075D8 00004518  41 82 00 18 */	beq lbl_800075F0
/* 800075DC 0000451C  80 0D 85 E8 */	lwz r0, lbl_80450B68-_SDA_BASE_(r13)
/* 800075E0 00004520  7C 00 E8 40 */	cmplw r0, r29
/* 800075E4 00004524  40 82 00 0C */	bne lbl_800075F0
/* 800075E8 00004528  38 00 00 00 */	li r0, 0
/* 800075EC 0000452C  90 0D 85 E8 */	stw r0, lbl_80450B68-_SDA_BASE_(r13)
lbl_800075F0:
/* 800075F0 00004530  37 BE 05 34 */	addic. r29, r30, 0x534
/* 800075F4 00004534  41 82 00 50 */	beq lbl_80007644
/* 800075F8 00004538  3C 60 80 3D */	lis r3, lbl_803C98B0@ha
/* 800075FC 0000453C  38 03 98 B0 */	addi r0, r3, lbl_803C98B0@l
/* 80007600 00004540  90 1E 05 34 */	stw r0, 0x534(r30)
/* 80007604 00004544  38 7E 05 48 */	addi r3, r30, 0x548
/* 80007608 00004548  3C 80 80 00 */	lis r4, __dt__16JAISeCategoryMgrFv@ha
/* 8000760C 0000454C  38 84 78 DC */	addi r4, r4, __dt__16JAISeCategoryMgrFv@l
/* 80007610 00004550  38 A0 00 6C */	li r5, 0x6c
/* 80007614 00004554  38 C0 00 10 */	li r6, 0x10
/* 80007618 00004558  48 35 A6 D1 */	bl func_80361CE8
/* 8000761C 0000455C  7F A3 EB 78 */	mr r3, r29
/* 80007620 00004560  38 80 00 00 */	li r4, 0
/* 80007624 00004564  48 29 A1 51 */	bl __dt__14JAISeqDataUserFv
/* 80007628 00004568  28 1D 00 00 */	cmplwi r29, 0
/* 8000762C 0000456C  41 82 00 18 */	beq lbl_80007644
/* 80007630 00004570  80 0D 85 EC */	lwz r0, lbl_80450B6C-_SDA_BASE_(r13)
/* 80007634 00004574  7C 00 E8 40 */	cmplw r0, r29
/* 80007638 00004578  40 82 00 0C */	bne lbl_80007644
/* 8000763C 0000457C  38 00 00 00 */	li r0, 0
/* 80007640 00004580  90 0D 85 EC */	stw r0, lbl_80450B6C-_SDA_BASE_(r13)
lbl_80007644:
/* 80007644 00004584  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007648 00004588  41 82 00 1C */	beq lbl_80007664
/* 8000764C 0000458C  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 80007650 00004590  38 1E 05 30 */	addi r0, r30, 0x530
/* 80007654 00004594  7C 03 00 40 */	cmplw r3, r0
/* 80007658 00004598  40 82 00 0C */	bne lbl_80007664
/* 8000765C 0000459C  38 00 00 00 */	li r0, 0
/* 80007660 000045A0  90 0D 85 E0 */	stw r0, lbl_80450B60-_SDA_BASE_(r13)
lbl_80007664:
/* 80007664 000045A4  34 1E 05 2C */	addic. r0, r30, 0x52c
/* 80007668 000045A8  41 82 00 44 */	beq lbl_800076AC
/* 8000766C 000045AC  3C 60 80 3D */	lis r3, lbl_803C9D80@ha
/* 80007670 000045B0  38 03 9D 80 */	addi r0, r3, lbl_803C9D80@l
/* 80007674 000045B4  90 1E 05 2C */	stw r0, 0x52c(r30)
/* 80007678 000045B8  34 1E 05 30 */	addic. r0, r30, 0x530
/* 8000767C 000045BC  41 82 00 24 */	beq lbl_800076A0
/* 80007680 000045C0  34 7E 05 30 */	addic. r3, r30, 0x530
/* 80007684 000045C4  41 82 00 08 */	beq lbl_8000768C
/* 80007688 000045C8  38 63 FF FC */	addi r3, r3, -4
lbl_8000768C:
/* 8000768C 000045CC  80 0D 85 F4 */	lwz r0, lbl_80450B74-_SDA_BASE_(r13)
/* 80007690 000045D0  7C 00 18 40 */	cmplw r0, r3
/* 80007694 000045D4  40 82 00 0C */	bne lbl_800076A0
/* 80007698 000045D8  38 00 00 00 */	li r0, 0
/* 8000769C 000045DC  90 0D 85 F4 */	stw r0, lbl_80450B74-_SDA_BASE_(r13)
lbl_800076A0:
/* 800076A0 000045E0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 800076A4 000045E4  38 80 00 00 */	li r4, 0
/* 800076A8 000045E8  48 29 B8 E1 */	bl __dt__15JAISoundStarterFv
lbl_800076AC:
/* 800076AC 000045EC  38 7E 05 1C */	addi r3, r30, 0x51c
/* 800076B0 000045F0  38 80 FF FF */	li r4, -1
/* 800076B4 000045F4  48 29 5A 49 */	bl __dt__15JASAudioReseterFv
/* 800076B8 000045F8  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076BC 000045FC  41 82 00 38 */	beq lbl_800076F4
/* 800076C0 00004600  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076C4 00004604  41 82 00 10 */	beq lbl_800076D4
/* 800076C8 00004608  38 7E 04 F4 */	addi r3, r30, 0x4f4
/* 800076CC 0000460C  38 80 00 00 */	li r4, 0
/* 800076D0 00004610  48 2D 47 DD */	bl __dt__10JSUPtrListFv
lbl_800076D4:
/* 800076D4 00004614  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076D8 00004618  41 82 00 1C */	beq lbl_800076F4
/* 800076DC 0000461C  80 6D 85 C8 */	lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 800076E0 00004620  38 1E 04 F4 */	addi r0, r30, 0x4f4
/* 800076E4 00004624  7C 03 00 40 */	cmplw r3, r0
/* 800076E8 00004628  40 82 00 0C */	bne lbl_800076F4
/* 800076EC 0000462C  38 00 00 00 */	li r0, 0
/* 800076F0 00004630  90 0D 85 C8 */	stw r0, lbl_80450B48-_SDA_BASE_(r13)
lbl_800076F4:
/* 800076F4 00004634  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 800076F8 00004638  41 82 00 24 */	beq lbl_8000771C
/* 800076FC 0000463C  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 80007700 00004640  41 82 00 1C */	beq lbl_8000771C
/* 80007704 00004644  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 80007708 00004648  38 1E 04 C4 */	addi r0, r30, 0x4c4
/* 8000770C 0000464C  7C 03 00 40 */	cmplw r3, r0
/* 80007710 00004650  40 82 00 0C */	bne lbl_8000771C
/* 80007714 00004654  38 00 00 00 */	li r0, 0
/* 80007718 00004658  90 0D 85 FC */	stw r0, lbl_80450B7C-_SDA_BASE_(r13)
lbl_8000771C:
/* 8000771C 0000465C  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007720 00004660  41 82 00 24 */	beq lbl_80007744
/* 80007724 00004664  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007728 00004668  41 82 00 1C */	beq lbl_80007744
/* 8000772C 0000466C  80 6D 86 00 */	lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 80007730 00004670  38 1E 04 A4 */	addi r0, r30, 0x4a4
/* 80007734 00004674  7C 03 00 40 */	cmplw r3, r0
/* 80007738 00004678  40 82 00 0C */	bne lbl_80007744
/* 8000773C 0000467C  38 00 00 00 */	li r0, 0
/* 80007740 00004680  90 0D 86 00 */	stw r0, lbl_80450B80-_SDA_BASE_(r13)
lbl_80007744:
/* 80007744 00004684  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007748 00004688  41 82 00 58 */	beq lbl_800077A0
/* 8000774C 0000468C  34 7E 03 DC */	addic. r3, r30, 0x3dc
/* 80007750 00004690  41 82 00 08 */	beq lbl_80007758
/* 80007754 00004694  48 29 AA 31 */	bl releaseSound__14JAISoundHandleFv
lbl_80007758:
/* 80007758 00004698  34 7E 03 D8 */	addic. r3, r30, 0x3d8
/* 8000775C 0000469C  41 82 00 08 */	beq lbl_80007764
/* 80007760 000046A0  48 29 AA 25 */	bl releaseSound__14JAISoundHandleFv
lbl_80007764:
/* 80007764 000046A4  34 7E 03 D4 */	addic. r3, r30, 0x3d4
/* 80007768 000046A8  41 82 00 08 */	beq lbl_80007770
/* 8000776C 000046AC  48 29 AA 19 */	bl releaseSound__14JAISoundHandleFv
lbl_80007770:
/* 80007770 000046B0  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007774 000046B4  41 82 00 0C */	beq lbl_80007780
/* 80007778 000046B8  38 7E 03 D0 */	addi r3, r30, 0x3d0
/* 8000777C 000046BC  48 29 AA 09 */	bl releaseSound__14JAISoundHandleFv
lbl_80007780:
/* 80007780 000046C0  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007784 000046C4  41 82 00 1C */	beq lbl_800077A0
/* 80007788 000046C8  80 6D 86 04 */	lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 8000778C 000046CC  38 1E 03 D0 */	addi r0, r30, 0x3d0
/* 80007790 000046D0  7C 03 00 40 */	cmplw r3, r0
/* 80007794 000046D4  40 82 00 0C */	bne lbl_800077A0
/* 80007798 000046D8  38 00 00 00 */	li r0, 0
/* 8000779C 000046DC  90 0D 86 04 */	stw r0, lbl_80450B84-_SDA_BASE_(r13)
lbl_800077A0:
/* 800077A0 000046E0  28 1E 00 00 */	cmplwi r30, 0
/* 800077A4 000046E4  41 82 00 68 */	beq lbl_8000780C
/* 800077A8 000046E8  38 7E 01 D4 */	addi r3, r30, 0x1d4
/* 800077AC 000046EC  3C 80 80 00 */	lis r4, __dt__12Z2MultiSeObjFv@ha
/* 800077B0 000046F0  38 84 78 88 */	addi r4, r4, __dt__12Z2MultiSeObjFv@l
/* 800077B4 000046F4  38 A0 00 24 */	li r5, 0x24
/* 800077B8 000046F8  38 C0 00 0A */	li r6, 0xa
/* 800077BC 000046FC  48 35 A5 2D */	bl func_80361CE8
/* 800077C0 00004700  38 7E 00 68 */	addi r3, r30, 0x68
/* 800077C4 00004704  3C 80 80 00 */	lis r4, __dt__12Z2MultiSeObjFv@ha
/* 800077C8 00004708  38 84 78 88 */	addi r4, r4, __dt__12Z2MultiSeObjFv@l
/* 800077CC 0000470C  38 A0 00 24 */	li r5, 0x24
/* 800077D0 00004710  38 C0 00 0A */	li r6, 0xa
/* 800077D4 00004714  48 35 A5 15 */	bl func_80361CE8
/* 800077D8 00004718  7F C3 F3 78 */	mr r3, r30
/* 800077DC 0000471C  3C 80 80 00 */	lis r4, __dt__14JAISoundHandleFv@ha
/* 800077E0 00004720  38 84 78 38 */	addi r4, r4, __dt__14JAISoundHandleFv@l
/* 800077E4 00004724  38 A0 00 04 */	li r5, 4
/* 800077E8 00004728  38 C0 00 18 */	li r6, 0x18
/* 800077EC 0000472C  48 35 A4 FD */	bl func_80361CE8
/* 800077F0 00004730  28 1E 00 00 */	cmplwi r30, 0
/* 800077F4 00004734  41 82 00 18 */	beq lbl_8000780C
/* 800077F8 00004738  80 0D 86 08 */	lwz r0, lbl_80450B88-_SDA_BASE_(r13)
/* 800077FC 0000473C  7C 00 F0 40 */	cmplw r0, r30
/* 80007800 00004740  40 82 00 0C */	bne lbl_8000780C
/* 80007804 00004744  38 00 00 00 */	li r0, 0
/* 80007808 00004748  90 0D 86 08 */	stw r0, lbl_80450B88-_SDA_BASE_(r13)
lbl_8000780C:
/* 8000780C 0000474C  7F E0 07 35 */	extsh. r0, r31
/* 80007810 00004750  40 81 00 0C */	ble lbl_8000781C
/* 80007814 00004754  7F C3 F3 78 */	mr r3, r30
/* 80007818 00004758  48 2C 75 25 */	bl __dl__FPv
lbl_8000781C:
/* 8000781C 0000475C  7F C3 F3 78 */	mr r3, r30
/* 80007820 00004760  39 61 00 20 */	addi r11, r1, 0x20
/* 80007824 00004764  48 35 AA 05 */	bl _restgpr_29
/* 80007828 00004768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000782C 0000476C  7C 08 03 A6 */	mtlr r0
/* 80007830 00004770  38 21 00 20 */	addi r1, r1, 0x20
/* 80007834 00004774  4E 80 00 20 */	blr 