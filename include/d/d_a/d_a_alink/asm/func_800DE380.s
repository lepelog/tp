/* 800DE380 000DB2C0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800DE384 000DB2C4  7C 08 02 A6 */ mflr r0
/* 800DE388 000DB2C8  90 01 00 34 */ stw r0, 0x34(r1)
/* 800DE38C 000DB2CC  39 61 00 30 */ addi r11, r1, 0x30
/* 800DE390 000DB2D0  48 28 3E 4D */ bl _savegpr_29
/* 800DE394 000DB2D4  7C 7E 1B 78 */ mr r30, r3
/* 800DE398 000DB2D8  80 03 05 88 */ lwz r0, 0x588(r3)
/* 800DE39C 000DB2DC  64 00 08 00 */ oris r0, r0, 0x800
/* 800DE3A0 000DB2E0  90 03 05 88 */ stw r0, 0x588(r3)
/* 800DE3A4 000DB2E4  AB A3 30 0C */ lha r29, 0x300c(r3)
/* 800DE3A8 000DB2E8  38 7E 30 0C */ addi r3, r30, 0x300c
/* 800DE3AC 000DB2EC  38 80 00 00 */ li r4, 0
/* 800DE3B0 000DB2F0  3C A0 80 39 */ lis r5, lbl_8038DF70@ha
/* 800DE3B4 000DB2F4  38 E5 DF 70 */ addi r7, r5, lbl_8038DF70@l
/* 800DE3B8 000DB2F8  A8 A7 00 14 */ lha r5, 0x14(r7)
/* 800DE3BC 000DB2FC  A8 DE 30 0A */ lha r6, 0x300a(r30)
/* 800DE3C0 000DB300  A8 E7 00 18 */ lha r7, 0x18(r7)
/* 800DE3C4 000DB304  48 19 21 7D */ bl cLib_addCalcAngleS__FPsssss
/* 800DE3C8 000DB308  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 800DE3CC 000DB30C  7C 00 E8 50 */ subf r0, r0, r29
/* 800DE3D0 000DB310  7C 1F 07 34 */ extsh r31, r0
/* 800DE3D4 000DB314  7F A0 07 35 */ extsh. r0, r29
/* 800DE3D8 000DB318  40 81 00 14 */ ble lbl_800DE3EC
/* 800DE3DC 000DB31C  A8 7E 30 0E */ lha r3, 0x300e(r30)
/* 800DE3E0 000DB320  38 03 40 00 */ addi r0, r3, 0x4000
/* 800DE3E4 000DB324  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800DE3E8 000DB328  48 00 00 10 */ b lbl_800DE3F8
lbl_800DE3EC:
/* 800DE3EC 000DB32C  A8 7E 30 0E */ lha r3, 0x300e(r30)
/* 800DE3F0 000DB330  38 03 C0 00 */ addi r0, r3, -16384
/* 800DE3F4 000DB334  B0 1E 04 DE */ sth r0, 0x4de(r30)
lbl_800DE3F8:
/* 800DE3F8 000DB338  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800DE3FC 000DB33C  54 04 04 38 */ rlwinm r4, r0, 0, 0x10, 0x1c
/* 800DE400 000DB340  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800DE404 000DB344  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800DE408 000DB348  7C 03 24 2E */ lfsx f0, r3, r4
/* 800DE40C 000DB34C  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 800DE410 000DB350  C0 5E 34 78 */ lfs f2, 0x3478(r30)
/* 800DE414 000DB354  EC 02 00 32 */ fmuls f0, f2, f0
/* 800DE418 000DB358  EC 81 00 28 */ fsubs f4, f1, f0
/* 800DE41C 000DB35C  38 A3 00 04 */ addi r5, r3, 4
/* 800DE420 000DB360  7C 05 24 2E */ lfsx f0, r5, r4
/* 800DE424 000DB364  C0 3E 04 D8 */ lfs f1, 0x4d8(r30)
/* 800DE428 000DB368  EC 02 00 32 */ fmuls f0, f2, f0
/* 800DE42C 000DB36C  EC A1 00 28 */ fsubs f5, f1, f0
/* 800DE430 000DB370  7C 00 FA 14 */ add r0, r0, r31
/* 800DE434 000DB374  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800DE438 000DB378  C0 7E 34 78 */ lfs f3, 0x3478(r30)
/* 800DE43C 000DB37C  C0 5E 34 7C */ lfs f2, 0x347c(r30)
/* 800DE440 000DB380  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800DE444 000DB384  6F E0 80 00 */ xoris r0, r31, 0x8000
/* 800DE448 000DB388  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800DE44C 000DB38C  3C 00 43 30 */ lis r0, 0x4330
/* 800DE450 000DB390  90 01 00 18 */ stw r0, 0x18(r1)
/* 800DE454 000DB394  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 800DE458 000DB398  EC 00 08 28 */ fsubs f0, f0, f1
/* 800DE45C 000DB39C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800DE460 000DB3A0  EC 03 00 28 */ fsubs f0, f3, f0
/* 800DE464 000DB3A4  D0 1E 34 78 */ stfs f0, 0x3478(r30)
/* 800DE468 000DB3A8  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800DE46C 000DB3AC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800DE470 000DB3B0  7C 23 04 2E */ lfsx f1, r3, r0
/* 800DE474 000DB3B4  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800DE478 000DB3B8  EC 00 00 72 */ fmuls f0, f0, f1
/* 800DE47C 000DB3BC  EC 04 00 2A */ fadds f0, f4, f0
/* 800DE480 000DB3C0  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 800DE484 000DB3C4  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800DE488 000DB3C8  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800DE48C 000DB3CC  7C 25 04 2E */ lfsx f1, r5, r0
/* 800DE490 000DB3D0  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800DE494 000DB3D4  EC 00 00 72 */ fmuls f0, f0, f1
/* 800DE498 000DB3D8  EC 05 00 2A */ fadds f0, f5, f0
/* 800DE49C 000DB3DC  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
/* 800DE4A0 000DB3E0  A8 7E 30 0E */ lha r3, 0x300e(r30)
/* 800DE4A4 000DB3E4  3C 63 00 01 */ addis r3, r3, 1
/* 800DE4A8 000DB3E8  38 03 80 00 */ addi r0, r3, -32768
/* 800DE4AC 000DB3EC  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 800DE4B0 000DB3F0  7F C3 F3 78 */ mr r3, r30
/* 800DE4B4 000DB3F4  4B FF 2B 79 */ bl checkCutFinishJumpUp__9daAlink_cFv
/* 800DE4B8 000DB3F8  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 800DE4BC 000DB3FC  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800DE4C0 000DB400  7C 00 1B 78 */ or r0, r0, r3
/* 800DE4C4 000DB404  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800DE4C8 000DB408  3B BE 1F D0 */ addi r29, r30, 0x1fd0
/* 800DE4CC 000DB40C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800DE4D0 000DB410  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800DE4D4 000DB414  41 82 00 10 */ beq lbl_800DE4E4
/* 800DE4D8 000DB418  7F C3 F3 78 */ mr r3, r30
/* 800DE4DC 000DB41C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DE4E0 000DB420  4B FF EB 29 */ bl setUpperGuardAnime__9daAlink_cFf
lbl_800DE4E4:
/* 800DE4E4 000DB424  7F A3 EB 78 */ mr r3, r29
/* 800DE4E8 000DB428  48 07 FF E5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DE4EC 000DB42C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DE4F0 000DB430  41 82 00 50 */ beq lbl_800DE540
/* 800DE4F4 000DB434  83 FE 27 E0 */ lwz r31, 0x27e0(r30)
/* 800DE4F8 000DB438  3B A0 00 01 */ li r29, 1
/* 800DE4FC 000DB43C  7F E3 FB 78 */ mr r3, r31
/* 800DE500 000DB440  4B F9 52 E5 */ bl LockonTruth__12dAttention_cFv
/* 800DE504 000DB444  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DE508 000DB448  40 82 00 14 */ bne lbl_800DE51C
/* 800DE50C 000DB44C  80 1F 03 34 */ lwz r0, 0x334(r31)
/* 800DE510 000DB450  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800DE514 000DB454  40 82 00 08 */ bne lbl_800DE51C
/* 800DE518 000DB458  3B A0 00 00 */ li r29, 0
lbl_800DE51C:
/* 800DE51C 000DB45C  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800DE520 000DB460  40 82 00 10 */ bne lbl_800DE530
/* 800DE524 000DB464  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800DE528 000DB468  54 00 01 46 */ rlwinm r0, r0, 0, 5, 3
/* 800DE52C 000DB46C  90 1E 05 78 */ stw r0, 0x578(r30)
lbl_800DE530:
/* 800DE530 000DB470  7F C3 F3 78 */ mr r3, r30
/* 800DE534 000DB474  38 80 00 00 */ li r4, 0
/* 800DE538 000DB478  4B FD BB 99 */ bl checkNextAction__9daAlink_cFi
/* 800DE53C 000DB47C  48 00 00 F4 */ b lbl_800DE630
lbl_800DE540:
/* 800DE540 000DB480  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800DE544 000DB484  2C 00 00 00 */ cmpwi r0, 0
/* 800DE548 000DB488  41 82 00 4C */ beq lbl_800DE594
/* 800DE54C 000DB48C  7F C3 F3 78 */ mr r3, r30
/* 800DE550 000DB490  4B FD 35 D9 */ bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800DE554 000DB494  2C 03 00 00 */ cmpwi r3, 0
/* 800DE558 000DB498  40 82 00 3C */ bne lbl_800DE594
/* 800DE55C 000DB49C  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800DE560 000DB4A0  3C 60 80 39 */ lis r3, lbl_8038DF70@ha
/* 800DE564 000DB4A4  38 63 DF 70 */ addi r3, r3, lbl_8038DF70@l
/* 800DE568 000DB4A8  C0 03 00 20 */ lfs f0, 0x20(r3)
/* 800DE56C 000DB4AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DE570 000DB4B0  40 81 00 24 */ ble lbl_800DE594
/* 800DE574 000DB4B4  7F C3 F3 78 */ mr r3, r30
/* 800DE578 000DB4B8  4B FF 55 65 */ bl procCutFinishJumpUpInit__9daAlink_cFv
/* 800DE57C 000DB4BC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DE580 000DB4C0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DE584 000DB4C4  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800DE588 000DB4C8  60 00 00 04 */ ori r0, r0, 4
/* 800DE58C 000DB4CC  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800DE590 000DB4D0  48 00 00 A0 */ b lbl_800DE630
lbl_800DE594:
/* 800DE594 000DB4D4  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800DE598 000DB4D8  3C 60 80 39 */ lis r3, lbl_8038DF70@ha
/* 800DE59C 000DB4DC  38 63 DF 70 */ addi r3, r3, lbl_8038DF70@l
/* 800DE5A0 000DB4E0  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800DE5A4 000DB4E4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DE5A8 000DB4E8  40 81 00 2C */ ble lbl_800DE5D4
/* 800DE5AC 000DB4EC  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DE5B0 000DB4F0  60 00 00 04 */ ori r0, r0, 4
/* 800DE5B4 000DB4F4  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800DE5B8 000DB4F8  7F C3 F3 78 */ mr r3, r30
/* 800DE5BC 000DB4FC  38 80 00 01 */ li r4, 1
/* 800DE5C0 000DB500  4B FD BB 11 */ bl checkNextAction__9daAlink_cFi
/* 800DE5C4 000DB504  2C 03 00 00 */ cmpwi r3, 0
/* 800DE5C8 000DB508  41 82 00 0C */ beq lbl_800DE5D4
/* 800DE5CC 000DB50C  38 60 00 01 */ li r3, 1
/* 800DE5D0 000DB510  48 00 00 64 */ b lbl_800DE634
lbl_800DE5D4:
/* 800DE5D4 000DB514  7F A3 EB 78 */ mr r3, r29
/* 800DE5D8 000DB518  C0 22 93 C8 */ lfs f1, lbl_80452DC8-_SDA2_BASE_(r2)
/* 800DE5DC 000DB51C  48 24 9E 51 */ bl checkPass__12J3DFrameCtrlFf
/* 800DE5E0 000DB520  2C 03 00 00 */ cmpwi r3, 0
/* 800DE5E4 000DB524  41 82 00 34 */ beq lbl_800DE618
/* 800DE5E8 000DB528  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DE5EC 000DB52C  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DE5F0 000DB530  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DE5F4 000DB534  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800DE5F8 000DB538  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DE5FC 000DB53C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DE600 000DB540  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DE604 000DB544  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DE608 000DB548  38 80 00 01 */ li r4, 1
/* 800DE60C 000DB54C  38 A0 00 01 */ li r5, 1
/* 800DE610 000DB550  38 C1 00 08 */ addi r6, r1, 8
/* 800DE614 000DB554  4B F9 14 11 */ bl StartShock__12dVibration_cFii4cXyz
lbl_800DE618:
/* 800DE618 000DB558  7F E3 FB 78 */ mr r3, r31
/* 800DE61C 000DB55C  48 28 6A B5 */ bl abs
/* 800DE620 000DB560  2C 03 01 00 */ cmpwi r3, 0x100
/* 800DE624 000DB564  40 81 00 0C */ ble lbl_800DE630
/* 800DE628 000DB568  38 00 00 04 */ li r0, 4
/* 800DE62C 000DB56C  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
lbl_800DE630:
/* 800DE630 000DB570  38 60 00 01 */ li r3, 1
lbl_800DE634:
/* 800DE634 000DB574  39 61 00 30 */ addi r11, r1, 0x30
/* 800DE638 000DB578  48 28 3B F1 */ bl _restgpr_29
/* 800DE63C 000DB57C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DE640 000DB580  7C 08 03 A6 */ mtlr r0
/* 800DE644 000DB584  38 21 00 30 */ addi r1, r1, 0x30
/* 800DE648 000DB588  4E 80 00 20 */ blr
