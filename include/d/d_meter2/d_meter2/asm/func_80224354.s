/* 80224354 00221294  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80224358 00221298  7C 08 02 A6 */ mflr r0
/* 8022435C 0022129C  90 01 00 34 */ stw r0, 0x34(r1)
/* 80224360 002212A0  39 61 00 30 */ addi r11, r1, 0x30
/* 80224364 002212A4  48 13 DE 71 */ bl _savegpr_27
/* 80224368 002212A8  7C 7E 1B 78 */ mr r30, r3
/* 8022436C 002212AC  3C 60 80 43 */ lis r3, lbl_8042E86C@ha
/* 80224370 002212B0  38 63 E8 6C */ addi r3, r3, lbl_8042E86C@l
/* 80224374 002212B4  4B FD 5A A9 */ bl getArrowFlag__9dMw_HIO_cFv
/* 80224378 002212B8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8022437C 002212BC  40 82 00 18 */ bne lbl_80224394
/* 80224380 002212C0  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80224384 002212C4  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80224388 002212C8  88 03 00 DD */ lbz r0, 0xdd(r3)
/* 8022438C 002212CC  28 00 00 01 */ cmplwi r0, 1
/* 80224390 002212D0  40 82 00 44 */ bne lbl_802243D4
lbl_80224394:
/* 80224394 002212D4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224398 002212D8  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 8022439C 002212DC  88 04 00 EC */ lbz r0, 0xec(r4)
/* 802243A0 002212E0  88 64 00 F8 */ lbz r3, 0xf8(r4)
/* 802243A4 002212E4  7C 03 00 40 */ cmplw r3, r0
/* 802243A8 002212E8  41 82 00 10 */ beq lbl_802243B8
/* 802243AC 002212EC  A8 04 5D F4 */ lha r0, 0x5df4(r4)
/* 802243B0 002212F0  7C 00 1A 14 */ add r0, r0, r3
/* 802243B4 002212F4  B0 04 5D F4 */ sth r0, 0x5df4(r4)
lbl_802243B8:
/* 802243B8 002212F8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802243BC 002212FC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802243C0 00221300  A8 03 5D F4 */ lha r0, 0x5df4(r3)
/* 802243C4 00221304  2C 00 00 00 */ cmpwi r0, 0
/* 802243C8 00221308  40 80 00 0C */ bge lbl_802243D4
/* 802243CC 0022130C  38 00 00 00 */ li r0, 0
/* 802243D0 00221310  B0 03 5D F4 */ sth r0, 0x5df4(r3)
lbl_802243D4:
/* 802243D4 00221314  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802243D8 00221318  38 A3 61 C0 */ addi r5, r3, g_dComIfG_gameInfo@l
/* 802243DC 0022131C  A8 C5 5D F4 */ lha r6, 0x5df4(r5)
/* 802243E0 00221320  7C C0 07 35 */ extsh. r0, r6
/* 802243E4 00221324  40 82 00 24 */ bne lbl_80224408
/* 802243E8 00221328  88 65 00 F8 */ lbz r3, 0xf8(r5)
/* 802243EC 0022132C  88 1E 01 FB */ lbz r0, 0x1fb(r30)
/* 802243F0 00221330  7C 00 18 40 */ cmplw r0, r3
/* 802243F4 00221334  40 82 00 14 */ bne lbl_80224408
/* 802243F8 00221338  88 65 00 EC */ lbz r3, 0xec(r5)
/* 802243FC 0022133C  88 1E 01 DA */ lbz r0, 0x1da(r30)
/* 80224400 00221340  7C 00 18 40 */ cmplw r0, r3
/* 80224404 00221344  41 82 02 64 */ beq lbl_80224668
lbl_80224408:
/* 80224408 00221348  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8022440C 0022134C  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 80224410 00221350  88 04 00 EC */ lbz r0, 0xec(r4)
/* 80224414 00221354  7C 00 32 14 */ add r0, r0, r6
/* 80224418 00221358  7C 06 07 35 */ extsh. r6, r0
/* 8022441C 0022135C  38 00 00 00 */ li r0, 0
/* 80224420 00221360  B0 05 5D F4 */ sth r0, 0x5df4(r5)
/* 80224424 00221364  40 80 00 08 */ bge lbl_8022442C
/* 80224428 00221368  38 C0 00 00 */ li r6, 0
lbl_8022442C:
/* 8022442C 0022136C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224430 00221370  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 80224434 00221374  88 7F 00 F8 */ lbz r3, 0xf8(r31)
/* 80224438 00221378  7C C0 07 34 */ extsh r0, r6
/* 8022443C 0022137C  7C 00 18 00 */ cmpw r0, r3
/* 80224440 00221380  40 81 00 08 */ ble lbl_80224448
/* 80224444 00221384  7C 66 1B 78 */ mr r6, r3
lbl_80224448:
/* 80224448 00221388  98 C4 00 EC */ stb r6, 0xec(r4)
/* 8022444C 0022138C  88 1F 00 F8 */ lbz r0, 0xf8(r31)
/* 80224450 00221390  98 1E 01 FB */ stb r0, 0x1fb(r30)
/* 80224454 00221394  88 04 00 EC */ lbz r0, 0xec(r4)
/* 80224458 00221398  88 7E 01 DA */ lbz r3, 0x1da(r30)
/* 8022445C 0022139C  7C 03 00 40 */ cmplw r3, r0
/* 80224460 002213A0  40 80 01 20 */ bge lbl_80224580
/* 80224464 002213A4  38 03 00 01 */ addi r0, r3, 1
/* 80224468 002213A8  98 1E 01 DA */ stb r0, 0x1da(r30)
/* 8022446C 002213AC  88 1E 01 EB */ lbz r0, 0x1eb(r30)
/* 80224470 002213B0  60 00 00 04 */ ori r0, r0, 4
/* 80224474 002213B4  98 1E 01 EB */ stb r0, 0x1eb(r30)
/* 80224478 002213B8  88 BE 01 EB */ lbz r5, 0x1eb(r30)
/* 8022447C 002213BC  54 A0 F7 FF */ rlwinm. r0, r5, 0x1e, 0x1f, 0x1f
/* 80224480 002213C0  41 82 01 0C */ beq lbl_8022458C
/* 80224484 002213C4  88 64 00 EC */ lbz r3, 0xec(r4)
/* 80224488 002213C8  88 1E 01 DA */ lbz r0, 0x1da(r30)
/* 8022448C 002213CC  7C 00 18 40 */ cmplw r0, r3
/* 80224490 002213D0  41 82 00 80 */ beq lbl_80224510
/* 80224494 002213D4  54 A0 07 FF */ clrlwi. r0, r5, 0x1f
/* 80224498 002213D8  40 82 00 68 */ bne lbl_80224500
/* 8022449C 002213DC  7F C3 F3 78 */ mr r3, r30
/* 802244A0 002213E0  48 00 15 59 */ bl isArrowEquip__9dMeter2_cFv
/* 802244A4 002213E4  2C 03 00 00 */ cmpwi r3, 0
/* 802244A8 002213E8  41 82 00 58 */ beq lbl_80224500
/* 802244AC 002213EC  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 802244B0 002213F0  4B FF 6C 19 */ bl isButtonVisible__13dMeter2Draw_cFv
/* 802244B4 002213F4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802244B8 002213F8  41 82 00 48 */ beq lbl_80224500
/* 802244BC 002213FC  88 1E 01 EB */ lbz r0, 0x1eb(r30)
/* 802244C0 00221400  60 00 00 01 */ ori r0, r0, 1
/* 802244C4 00221404  98 1E 01 EB */ stb r0, 0x1eb(r30)
/* 802244C8 00221408  38 00 00 1B */ li r0, 0x1b
/* 802244CC 0022140C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802244D0 00221410  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 802244D4 00221414  38 81 00 0C */ addi r4, r1, 0xc
/* 802244D8 00221418  38 A0 00 00 */ li r5, 0
/* 802244DC 0022141C  38 C0 00 00 */ li r6, 0
/* 802244E0 00221420  38 E0 00 00 */ li r7, 0
/* 802244E4 00221424  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 802244E8 00221428  FC 40 08 90 */ fmr f2, f1
/* 802244EC 0022142C  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 802244F0 00221430  FC 80 18 90 */ fmr f4, f3
/* 802244F4 00221434  39 00 00 00 */ li r8, 0
/* 802244F8 00221438  48 08 74 8D */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802244FC 0022143C  48 00 00 90 */ b lbl_8022458C
lbl_80224500:
/* 80224500 00221440  88 1E 01 EB */ lbz r0, 0x1eb(r30)
/* 80224504 00221444  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 80224508 00221448  98 1E 01 EB */ stb r0, 0x1eb(r30)
/* 8022450C 0022144C  48 00 00 80 */ b lbl_8022458C
lbl_80224510:
/* 80224510 00221450  7F C3 F3 78 */ mr r3, r30
/* 80224514 00221454  48 00 14 E5 */ bl isArrowEquip__9dMeter2_cFv
/* 80224518 00221458  2C 03 00 00 */ cmpwi r3, 0
/* 8022451C 0022145C  41 82 00 48 */ beq lbl_80224564
/* 80224520 00221460  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 80224524 00221464  4B FF 6B A5 */ bl isButtonVisible__13dMeter2Draw_cFv
/* 80224528 00221468  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8022452C 0022146C  41 82 00 38 */ beq lbl_80224564
/* 80224530 00221470  38 00 00 1C */ li r0, 0x1c
/* 80224534 00221474  90 01 00 08 */ stw r0, 8(r1)
/* 80224538 00221478  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 8022453C 0022147C  38 81 00 08 */ addi r4, r1, 8
/* 80224540 00221480  38 A0 00 00 */ li r5, 0
/* 80224544 00221484  38 C0 00 00 */ li r6, 0
/* 80224548 00221488  38 E0 00 00 */ li r7, 0
/* 8022454C 0022148C  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 80224550 00221490  FC 40 08 90 */ fmr f2, f1
/* 80224554 00221494  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 80224558 00221498  FC 80 18 90 */ fmr f4, f3
/* 8022455C 0022149C  39 00 00 00 */ li r8, 0
/* 80224560 002214A0  48 08 74 25 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80224564:
/* 80224564 002214A4  88 1E 01 EB */ lbz r0, 0x1eb(r30)
/* 80224568 002214A8  54 00 07 B8 */ rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8022456C 002214AC  98 1E 01 EB */ stb r0, 0x1eb(r30)
/* 80224570 002214B0  88 1E 01 EB */ lbz r0, 0x1eb(r30)
/* 80224574 002214B4  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 80224578 002214B8  98 1E 01 EB */ stb r0, 0x1eb(r30)
/* 8022457C 002214BC  48 00 00 10 */ b lbl_8022458C
lbl_80224580:
/* 80224580 002214C0  40 81 00 0C */ ble lbl_8022458C
/* 80224584 002214C4  38 03 FF FF */ addi r0, r3, -1
/* 80224588 002214C8  98 1E 01 DA */ stb r0, 0x1da(r30)
lbl_8022458C:
/* 8022458C 002214CC  3B 80 00 00 */ li r28, 0
/* 80224590 002214D0  3B A0 00 00 */ li r29, 0
lbl_80224594:
/* 80224594 002214D4  38 1D 01 D2 */ addi r0, r29, 0x1d2
/* 80224598 002214D8  7C 1E 00 AE */ lbzx r0, r30, r0
/* 8022459C 002214DC  28 00 00 43 */ cmplwi r0, 0x43
/* 802245A0 002214E0  41 82 00 2C */ beq lbl_802245CC
/* 802245A4 002214E4  28 00 00 53 */ cmplwi r0, 0x53
/* 802245A8 002214E8  41 82 00 24 */ beq lbl_802245CC
/* 802245AC 002214EC  28 00 00 54 */ cmplwi r0, 0x54
/* 802245B0 002214F0  41 82 00 1C */ beq lbl_802245CC
/* 802245B4 002214F4  28 00 00 55 */ cmplwi r0, 0x55
/* 802245B8 002214F8  41 82 00 14 */ beq lbl_802245CC
/* 802245BC 002214FC  28 00 00 56 */ cmplwi r0, 0x56
/* 802245C0 00221500  41 82 00 0C */ beq lbl_802245CC
/* 802245C4 00221504  28 00 00 5A */ cmplwi r0, 0x5a
/* 802245C8 00221508  40 82 00 1C */ bne lbl_802245E4
lbl_802245CC:
/* 802245CC 0022150C  88 DF 00 F8 */ lbz r6, 0xf8(r31)
/* 802245D0 00221510  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 802245D4 00221514  57 84 06 3E */ clrlwi r4, r28, 0x18
/* 802245D8 00221518  88 BE 01 DA */ lbz r5, 0x1da(r30)
/* 802245DC 0022151C  4B FF 65 A9 */ bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 802245E0 00221520  48 00 00 78 */ b lbl_80224658
lbl_802245E4:
/* 802245E4 00221524  28 00 00 4B */ cmplwi r0, 0x4b
/* 802245E8 00221528  40 82 00 1C */ bne lbl_80224604
/* 802245EC 0022152C  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 802245F0 00221530  57 84 06 3E */ clrlwi r4, r28, 0x18
/* 802245F4 00221534  88 BE 01 DB */ lbz r5, 0x1db(r30)
/* 802245F8 00221538  38 C0 00 32 */ li r6, 0x32
/* 802245FC 0022153C  4B FF 65 89 */ bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80224600 00221540  48 00 00 58 */ b lbl_80224658
lbl_80224604:
/* 80224604 00221544  28 00 00 59 */ cmplwi r0, 0x59
/* 80224608 00221548  40 82 00 50 */ bne lbl_80224658
/* 8022460C 0022154C  7F 83 E3 78 */ mr r3, r28
/* 80224610 00221550  4B E0 9F B1 */ bl dComIfGp_getSelectItemNum
/* 80224614 00221554  54 7B 06 3E */ clrlwi r27, r3, 0x18
/* 80224618 00221558  7F 83 E3 78 */ mr r3, r28
/* 8022461C 0022155C  4B E0 A0 6D */ bl dComIfGp_getSelectItemMaxNum
/* 80224620 00221560  54 66 06 3E */ clrlwi r6, r3, 0x18
/* 80224624 00221564  88 1E 01 DA */ lbz r0, 0x1da(r30)
/* 80224628 00221568  7C 1B 00 40 */ cmplw r27, r0
/* 8022462C 0022156C  40 81 00 08 */ ble lbl_80224634
/* 80224630 00221570  7C 1B 03 78 */ mr r27, r0
lbl_80224634:
/* 80224634 00221574  88 7F 00 F8 */ lbz r3, 0xf8(r31)
/* 80224638 00221578  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8022463C 0022157C  7C 06 00 40 */ cmplw r6, r0
/* 80224640 00221580  40 80 00 08 */ bge lbl_80224648
/* 80224644 00221584  7C 66 1B 78 */ mr r6, r3
lbl_80224648:
/* 80224648 00221588  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 8022464C 0022158C  57 84 06 3E */ clrlwi r4, r28, 0x18
/* 80224650 00221590  7F 65 DB 78 */ mr r5, r27
/* 80224654 00221594  4B FF 65 31 */ bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_80224658:
/* 80224658 00221598  3B 9C 00 01 */ addi r28, r28, 1
/* 8022465C 0022159C  2C 1C 00 02 */ cmpwi r28, 2
/* 80224660 002215A0  3B BD 00 02 */ addi r29, r29, 2
/* 80224664 002215A4  41 80 FF 30 */ blt lbl_80224594
lbl_80224668:
/* 80224668 002215A8  39 61 00 30 */ addi r11, r1, 0x30
/* 8022466C 002215AC  48 13 DB B5 */ bl _restgpr_27
/* 80224670 002215B0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80224674 002215B4  7C 08 03 A6 */ mtlr r0
/* 80224678 002215B8  38 21 00 30 */ addi r1, r1, 0x30
/* 8022467C 002215BC  4E 80 00 20 */ blr
