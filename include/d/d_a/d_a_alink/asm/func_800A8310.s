/* 800A8310 000A5250  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800A8314 000A5254  7C 08 02 A6 */ mflr r0
/* 800A8318 000A5258  90 01 00 14 */ stw r0, 0x14(r1)
/* 800A831C 000A525C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800A8320 000A5260  93 C1 00 08 */ stw r30, 8(r1)
/* 800A8324 000A5264  7C 7E 1B 78 */ mr r30, r3
/* 800A8328 000A5268  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 800A832C 000A526C  3B E3 D6 58 */ addi r31, r3, lbl_8038D658@l
/* 800A8330 000A5270  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800A8334 000A5274  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A8338 000A5278  41 82 01 04 */ beq lbl_800A843C
/* 800A833C 000A527C  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8340 000A5280  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A8344 000A5284  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8348 000A5288  38 63 00 C0 */ addi r3, r3, 0xc0
/* 800A834C 000A528C  38 9F 49 1C */ addi r4, r31, 0x491c
/* 800A8350 000A5290  38 BE 05 38 */ addi r5, r30, 0x538
/* 800A8354 000A5294  48 29 EA 19 */ bl PSMTXMultVec
/* 800A8358 000A5298  C0 1E 05 38 */ lfs f0, 0x538(r30)
/* 800A835C 000A529C  D0 1E 37 68 */ stfs f0, 0x3768(r30)
/* 800A8360 000A52A0  C0 1E 05 3C */ lfs f0, 0x53c(r30)
/* 800A8364 000A52A4  D0 1E 37 6C */ stfs f0, 0x376c(r30)
/* 800A8368 000A52A8  C0 1E 05 40 */ lfs f0, 0x540(r30)
/* 800A836C 000A52AC  D0 1E 37 70 */ stfs f0, 0x3770(r30)
/* 800A8370 000A52B0  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8374 000A52B4  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A8378 000A52B8  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A837C 000A52BC  38 63 00 C0 */ addi r3, r3, 0xc0
/* 800A8380 000A52C0  38 9F 49 10 */ addi r4, r31, 0x4910
/* 800A8384 000A52C4  38 BE 34 E0 */ addi r5, r30, 0x34e0
/* 800A8388 000A52C8  48 29 E9 E5 */ bl PSMTXMultVec
/* 800A838C 000A52CC  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8390 000A52D0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A8394 000A52D4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8398 000A52D8  38 63 00 C0 */ addi r3, r3, 0xc0
/* 800A839C 000A52DC  38 9F 49 28 */ addi r4, r31, 0x4928
/* 800A83A0 000A52E0  38 BE 05 A4 */ addi r5, r30, 0x5a4
/* 800A83A4 000A52E4  48 29 E9 C9 */ bl PSMTXMultVec
/* 800A83A8 000A52E8  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A83AC 000A52EC  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A83B0 000A52F0  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A83B4 000A52F4  C0 03 03 9C */ lfs f0, 0x39c(r3)
/* 800A83B8 000A52F8  D0 1E 05 C8 */ stfs f0, 0x5c8(r30)
/* 800A83BC 000A52FC  C0 03 03 AC */ lfs f0, 0x3ac(r3)
/* 800A83C0 000A5300  D0 1E 05 CC */ stfs f0, 0x5cc(r30)
/* 800A83C4 000A5304  C0 03 03 BC */ lfs f0, 0x3bc(r3)
/* 800A83C8 000A5308  D0 1E 05 D0 */ stfs f0, 0x5d0(r30)
/* 800A83CC 000A530C  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A83D0 000A5310  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A83D4 000A5314  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A83D8 000A5318  C0 03 04 8C */ lfs f0, 0x48c(r3)
/* 800A83DC 000A531C  D0 1E 05 D4 */ stfs f0, 0x5d4(r30)
/* 800A83E0 000A5320  C0 03 04 9C */ lfs f0, 0x49c(r3)
/* 800A83E4 000A5324  D0 1E 05 D8 */ stfs f0, 0x5d8(r30)
/* 800A83E8 000A5328  C0 03 04 AC */ lfs f0, 0x4ac(r3)
/* 800A83EC 000A532C  D0 1E 05 DC */ stfs f0, 0x5dc(r30)
/* 800A83F0 000A5330  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A83F4 000A5334  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A83F8 000A5338  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A83FC 000A533C  C0 03 05 DC */ lfs f0, 0x5dc(r3)
/* 800A8400 000A5340  D0 1E 05 E0 */ stfs f0, 0x5e0(r30)
/* 800A8404 000A5344  C0 03 05 EC */ lfs f0, 0x5ec(r3)
/* 800A8408 000A5348  D0 1E 05 E4 */ stfs f0, 0x5e4(r30)
/* 800A840C 000A534C  C0 03 05 FC */ lfs f0, 0x5fc(r3)
/* 800A8410 000A5350  D0 1E 05 E8 */ stfs f0, 0x5e8(r30)
/* 800A8414 000A5354  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8418 000A5358  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A841C 000A535C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8420 000A5360  C0 03 06 CC */ lfs f0, 0x6cc(r3)
/* 800A8424 000A5364  D0 1E 05 EC */ stfs f0, 0x5ec(r30)
/* 800A8428 000A5368  C0 03 06 DC */ lfs f0, 0x6dc(r3)
/* 800A842C 000A536C  D0 1E 05 F0 */ stfs f0, 0x5f0(r30)
/* 800A8430 000A5370  C0 03 06 EC */ lfs f0, 0x6ec(r3)
/* 800A8434 000A5374  D0 1E 05 F4 */ stfs f0, 0x5f4(r30)
/* 800A8438 000A5378  48 00 02 7C */ b lbl_800A86B4
lbl_800A843C:
/* 800A843C 000A537C  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8440 000A5380  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A8444 000A5384  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8448 000A5388  A0 1E 30 B4 */ lhz r0, 0x30b4(r30)
/* 800A844C 000A538C  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A8450 000A5390  7C 63 02 14 */ add r3, r3, r0
/* 800A8454 000A5394  38 9F 48 F8 */ addi r4, r31, 0x48f8
/* 800A8458 000A5398  38 BE 05 38 */ addi r5, r30, 0x538
/* 800A845C 000A539C  48 29 E9 11 */ bl PSMTXMultVec
/* 800A8460 000A53A0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800A8464 000A53A4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800A8468 000A53A8  80 83 5F 18 */ lwz r4, 0x5f18(r3)
/* 800A846C 000A53AC  54 80 04 A5 */ rlwinm. r0, r4, 0, 0x12, 0x12
/* 800A8470 000A53B0  41 82 01 24 */ beq lbl_800A8594
/* 800A8474 000A53B4  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 800A8478 000A53B8  74 00 02 01 */ andis. r0, r0, 0x201
/* 800A847C 000A53BC  40 82 01 18 */ bne lbl_800A8594
/* 800A8480 000A53C0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800A8484 000A53C4  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A8488 000A53C8  41 82 00 10 */ beq lbl_800A8498
/* 800A848C 000A53CC  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800A8490 000A53D0  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800A8494 000A53D4  40 82 01 00 */ bne lbl_800A8594
lbl_800A8498:
/* 800A8498 000A53D8  54 80 01 09 */ rlwinm. r0, r4, 0, 4, 4
/* 800A849C 000A53DC  40 82 00 F8 */ bne lbl_800A8594
/* 800A84A0 000A53E0  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A84A4 000A53E4  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A84A8 000A53E8  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 800A84AC 000A53EC  C0 5E 38 38 */ lfs f2, 0x3838(r30)
/* 800A84B0 000A53F0  C0 7E 04 D8 */ lfs f3, 0x4d8(r30)
/* 800A84B4 000A53F4  48 29 E4 35 */ bl PSMTXTrans
/* 800A84B8 000A53F8  7F C3 F3 78 */ mr r3, r30
/* 800A84BC 000A53FC  48 03 9F 41 */ bl concatMagneBootMtx__9daAlink_cFv
/* 800A84C0 000A5400  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A84C4 000A5404  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A84C8 000A5408  A8 9E 31 0A */ lha r4, 0x310a(r30)
/* 800A84CC 000A540C  A8 BE 31 0C */ lha r5, 0x310c(r30)
/* 800A84D0 000A5410  38 C0 00 00 */ li r6, 0
/* 800A84D4 000A5414  4B F6 3D CD */ bl mDoMtx_ZXYrotM
/* 800A84D8 000A5418  7F C3 F3 78 */ mr r3, r30
/* 800A84DC 000A541C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800A84E0 000A5420  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800A84E4 000A5424  7D 89 03 A6 */ mtctr r12
/* 800A84E8 000A5428  4E 80 04 21 */ bctrl
/* 800A84EC 000A542C  28 03 00 00 */ cmplwi r3, 0
/* 800A84F0 000A5430  41 82 00 1C */ beq lbl_800A850C
/* 800A84F4 000A5434  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A84F8 000A5438  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A84FC 000A543C  38 9F 49 58 */ addi r4, r31, 0x4958
/* 800A8500 000A5440  38 BE 37 68 */ addi r5, r30, 0x3768
/* 800A8504 000A5444  48 29 E8 69 */ bl PSMTXMultVec
/* 800A8508 000A5448  48 00 00 A4 */ b lbl_800A85AC
lbl_800A850C:
/* 800A850C 000A544C  7F C3 F3 78 */ mr r3, r30
/* 800A8510 000A5450  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800A8514 000A5454  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800A8518 000A5458  7D 89 03 A6 */ mtctr r12
/* 800A851C 000A545C  4E 80 04 21 */ bctrl
/* 800A8520 000A5460  28 03 00 00 */ cmplwi r3, 0
/* 800A8524 000A5464  41 82 00 1C */ beq lbl_800A8540
/* 800A8528 000A5468  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A852C 000A546C  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A8530 000A5470  38 9F 49 40 */ addi r4, r31, 0x4940
/* 800A8534 000A5474  38 BE 37 68 */ addi r5, r30, 0x3768
/* 800A8538 000A5478  48 29 E8 35 */ bl PSMTXMultVec
/* 800A853C 000A547C  48 00 00 70 */ b lbl_800A85AC
lbl_800A8540:
/* 800A8540 000A5480  38 00 00 00 */ li r0, 0
/* 800A8544 000A5484  88 7E 2F AA */ lbz r3, 0x2faa(r30)
/* 800A8548 000A5488  28 03 00 01 */ cmplwi r3, 1
/* 800A854C 000A548C  41 82 00 0C */ beq lbl_800A8558
/* 800A8550 000A5490  28 03 00 02 */ cmplwi r3, 2
/* 800A8554 000A5494  40 82 00 08 */ bne lbl_800A855C
lbl_800A8558:
/* 800A8558 000A5498  38 00 00 01 */ li r0, 1
lbl_800A855C:
/* 800A855C 000A549C  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 800A8560 000A54A0  41 82 00 1C */ beq lbl_800A857C
/* 800A8564 000A54A4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A8568 000A54A8  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A856C 000A54AC  38 9F 49 4C */ addi r4, r31, 0x494c
/* 800A8570 000A54B0  38 BE 37 68 */ addi r5, r30, 0x3768
/* 800A8574 000A54B4  48 29 E7 F9 */ bl PSMTXMultVec
/* 800A8578 000A54B8  48 00 00 34 */ b lbl_800A85AC
lbl_800A857C:
/* 800A857C 000A54BC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A8580 000A54C0  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A8584 000A54C4  38 9F 49 34 */ addi r4, r31, 0x4934
/* 800A8588 000A54C8  38 BE 37 68 */ addi r5, r30, 0x3768
/* 800A858C 000A54CC  48 29 E7 E1 */ bl PSMTXMultVec
/* 800A8590 000A54D0  48 00 00 1C */ b lbl_800A85AC
lbl_800A8594:
/* 800A8594 000A54D4  C0 1E 05 38 */ lfs f0, 0x538(r30)
/* 800A8598 000A54D8  D0 1E 37 68 */ stfs f0, 0x3768(r30)
/* 800A859C 000A54DC  C0 1E 05 3C */ lfs f0, 0x53c(r30)
/* 800A85A0 000A54E0  D0 1E 37 6C */ stfs f0, 0x376c(r30)
/* 800A85A4 000A54E4  C0 1E 05 40 */ lfs f0, 0x540(r30)
/* 800A85A8 000A54E8  D0 1E 37 70 */ stfs f0, 0x3770(r30)
lbl_800A85AC:
/* 800A85AC 000A54EC  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A85B0 000A54F0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A85B4 000A54F4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A85B8 000A54F8  A0 1E 30 B4 */ lhz r0, 0x30b4(r30)
/* 800A85BC 000A54FC  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A85C0 000A5500  7C 63 02 14 */ add r3, r3, r0
/* 800A85C4 000A5504  38 9F 48 EC */ addi r4, r31, 0x48ec
/* 800A85C8 000A5508  38 BE 34 E0 */ addi r5, r30, 0x34e0
/* 800A85CC 000A550C  48 29 E7 A1 */ bl PSMTXMultVec
/* 800A85D0 000A5510  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A85D4 000A5514  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A85D8 000A5518  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A85DC 000A551C  A0 1E 30 B4 */ lhz r0, 0x30b4(r30)
/* 800A85E0 000A5520  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A85E4 000A5524  7C 63 02 14 */ add r3, r3, r0
/* 800A85E8 000A5528  38 9F 49 04 */ addi r4, r31, 0x4904
/* 800A85EC 000A552C  38 BE 05 A4 */ addi r5, r30, 0x5a4
/* 800A85F0 000A5530  48 29 E7 7D */ bl PSMTXMultVec
/* 800A85F4 000A5534  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A85F8 000A5538  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A85FC 000A553C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8600 000A5540  A0 1E 30 B8 */ lhz r0, 0x30b8(r30)
/* 800A8604 000A5544  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A8608 000A5548  7C 63 02 14 */ add r3, r3, r0
/* 800A860C 000A554C  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800A8610 000A5550  D0 1E 05 C8 */ stfs f0, 0x5c8(r30)
/* 800A8614 000A5554  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800A8618 000A5558  D0 1E 05 CC */ stfs f0, 0x5cc(r30)
/* 800A861C 000A555C  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800A8620 000A5560  D0 1E 05 D0 */ stfs f0, 0x5d0(r30)
/* 800A8624 000A5564  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8628 000A5568  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A862C 000A556C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8630 000A5570  A0 1E 30 BA */ lhz r0, 0x30ba(r30)
/* 800A8634 000A5574  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A8638 000A5578  7C 63 02 14 */ add r3, r3, r0
/* 800A863C 000A557C  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800A8640 000A5580  D0 1E 05 D4 */ stfs f0, 0x5d4(r30)
/* 800A8644 000A5584  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800A8648 000A5588  D0 1E 05 D8 */ stfs f0, 0x5d8(r30)
/* 800A864C 000A558C  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800A8650 000A5590  D0 1E 05 DC */ stfs f0, 0x5dc(r30)
/* 800A8654 000A5594  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8658 000A5598  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A865C 000A559C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8660 000A55A0  A0 1E 30 BC */ lhz r0, 0x30bc(r30)
/* 800A8664 000A55A4  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A8668 000A55A8  7C 63 02 14 */ add r3, r3, r0
/* 800A866C 000A55AC  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800A8670 000A55B0  D0 1E 05 E0 */ stfs f0, 0x5e0(r30)
/* 800A8674 000A55B4  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800A8678 000A55B8  D0 1E 05 E4 */ stfs f0, 0x5e4(r30)
/* 800A867C 000A55BC  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800A8680 000A55C0  D0 1E 05 E8 */ stfs f0, 0x5e8(r30)
/* 800A8684 000A55C4  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A8688 000A55C8  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A868C 000A55CC  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A8690 000A55D0  A0 1E 30 BE */ lhz r0, 0x30be(r30)
/* 800A8694 000A55D4  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800A8698 000A55D8  7C 63 02 14 */ add r3, r3, r0
/* 800A869C 000A55DC  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800A86A0 000A55E0  D0 1E 05 EC */ stfs f0, 0x5ec(r30)
/* 800A86A4 000A55E4  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800A86A8 000A55E8  D0 1E 05 F0 */ stfs f0, 0x5f0(r30)
/* 800A86AC 000A55EC  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800A86B0 000A55F0  D0 1E 05 F4 */ stfs f0, 0x5f4(r30)
lbl_800A86B4:
/* 800A86B4 000A55F4  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800A86B8 000A55F8  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A86BC 000A55FC  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A86C0 000A5600  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800A86C4 000A5604  D0 1E 38 34 */ stfs f0, 0x3834(r30)
/* 800A86C8 000A5608  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800A86CC 000A560C  D0 1E 38 38 */ stfs f0, 0x3838(r30)
/* 800A86D0 000A5610  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800A86D4 000A5614  D0 1E 38 3C */ stfs f0, 0x383c(r30)
/* 800A86D8 000A5618  C0 1E 05 A4 */ lfs f0, 0x5a4(r30)
/* 800A86DC 000A561C  D0 1E 05 B0 */ stfs f0, 0x5b0(r30)
/* 800A86E0 000A5620  C0 1E 05 A8 */ lfs f0, 0x5a8(r30)
/* 800A86E4 000A5624  D0 1E 05 B4 */ stfs f0, 0x5b4(r30)
/* 800A86E8 000A5628  C0 1E 05 AC */ lfs f0, 0x5ac(r30)
/* 800A86EC 000A562C  D0 1E 05 B8 */ stfs f0, 0x5b8(r30)
/* 800A86F0 000A5630  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800A86F4 000A5634  D0 1E 05 F8 */ stfs f0, 0x5f8(r30)
/* 800A86F8 000A5638  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800A86FC 000A563C  D0 1E 05 FC */ stfs f0, 0x5fc(r30)
/* 800A8700 000A5640  C0 1E 04 D8 */ lfs f0, 0x4d8(r30)
/* 800A8704 000A5644  D0 1E 06 00 */ stfs f0, 0x600(r30)
/* 800A8708 000A5648  88 7E 2F 99 */ lbz r3, 0x2f99(r30)
/* 800A870C 000A564C  54 60 07 7F */ clrlwi. r0, r3, 0x1d
/* 800A8710 000A5650  41 82 00 B0 */ beq lbl_800A87C0
/* 800A8714 000A5654  54 60 07 7B */ rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800A8718 000A5658  41 82 00 14 */ beq lbl_800A872C
/* 800A871C 000A565C  C0 3E 34 DC */ lfs f1, 0x34dc(r30)
/* 800A8720 000A5660  C0 1E 35 90 */ lfs f0, 0x3590(r30)
/* 800A8724 000A5664  EC 81 00 28 */ fsubs f4, f1, f0
/* 800A8728 000A5668  48 00 00 08 */ b lbl_800A8730
lbl_800A872C:
/* 800A872C 000A566C  C0 82 92 C0 */ lfs f4, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800A8730:
/* 800A8730 000A5670  54 60 07 FF */ clrlwi. r0, r3, 0x1f
/* 800A8734 000A5674  41 82 00 14 */ beq lbl_800A8748
/* 800A8738 000A5678  C0 3E 34 D4 */ lfs f1, 0x34d4(r30)
/* 800A873C 000A567C  C0 1E 35 88 */ lfs f0, 0x3588(r30)
/* 800A8740 000A5680  EC A1 00 28 */ fsubs f5, f1, f0
/* 800A8744 000A5684  48 00 00 08 */ b lbl_800A874C
lbl_800A8748:
/* 800A8748 000A5688  C0 A2 92 C0 */ lfs f5, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800A874C:
/* 800A874C 000A568C  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800A8750 000A5690  41 82 00 14 */ beq lbl_800A8764
/* 800A8754 000A5694  C0 3E 33 B0 */ lfs f1, 0x33b0(r30)
/* 800A8758 000A5698  C0 1E 35 8C */ lfs f0, 0x358c(r30)
/* 800A875C 000A569C  EC 41 00 28 */ fsubs f2, f1, f0
/* 800A8760 000A56A0  48 00 00 08 */ b lbl_800A8768
lbl_800A8764:
/* 800A8764 000A56A4  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800A8768:
/* 800A8768 000A56A8  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800A876C 000A56AC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A8770 000A56B0  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800A8774 000A56B4  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800A8778 000A56B8  7C E3 04 2E */ lfsx f7, r3, r0
/* 800A877C 000A56BC  7C 63 02 14 */ add r3, r3, r0
/* 800A8780 000A56C0  C0 C3 00 04 */ lfs f6, 4(r3)
/* 800A8784 000A56C4  C0 3E 04 D8 */ lfs f1, 0x4d8(r30)
/* 800A8788 000A56C8  EC 04 01 B2 */ fmuls f0, f4, f6
/* 800A878C 000A56CC  EC 21 00 28 */ fsubs f1, f1, f0
/* 800A8790 000A56D0  EC 05 01 F2 */ fmuls f0, f5, f7
/* 800A8794 000A56D4  EC 61 00 2A */ fadds f3, f1, f0
/* 800A8798 000A56D8  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800A879C 000A56DC  EC 40 10 28 */ fsubs f2, f0, f2
/* 800A87A0 000A56E0  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 800A87A4 000A56E4  EC 04 01 F2 */ fmuls f0, f4, f7
/* 800A87A8 000A56E8  EC 21 00 28 */ fsubs f1, f1, f0
/* 800A87AC 000A56EC  EC 05 01 B2 */ fmuls f0, f5, f6
/* 800A87B0 000A56F0  EC 01 00 28 */ fsubs f0, f1, f0
/* 800A87B4 000A56F4  D0 1E 05 F8 */ stfs f0, 0x5f8(r30)
/* 800A87B8 000A56F8  D0 5E 05 FC */ stfs f2, 0x5fc(r30)
/* 800A87BC 000A56FC  D0 7E 06 00 */ stfs f3, 0x600(r30)
lbl_800A87C0:
/* 800A87C0 000A5700  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800A87C4 000A5704  83 C1 00 08 */ lwz r30, 8(r1)
/* 800A87C8 000A5708  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800A87CC 000A570C  7C 08 03 A6 */ mtlr r0
/* 800A87D0 000A5710  38 21 00 10 */ addi r1, r1, 0x10
/* 800A87D4 000A5714  4E 80 00 20 */ blr