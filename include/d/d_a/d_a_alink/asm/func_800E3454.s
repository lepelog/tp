/* 800E3454 000E0394  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800E3458 000E0398  7C 08 02 A6 */ mflr r0
/* 800E345C 000E039C  90 01 00 54 */ stw r0, 0x54(r1)
/* 800E3460 000E03A0  93 E1 00 4C */ stw r31, 0x4c(r1)
/* 800E3464 000E03A4  93 C1 00 48 */ stw r30, 0x48(r1)
/* 800E3468 000E03A8  7C 7F 1B 78 */ mr r31, r3
/* 800E346C 000E03AC  C0 23 34 78 */ lfs f1, 0x3478(r3)
/* 800E3470 000E03B0  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800E3474 000E03B4  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800E3478 000E03B8  C0 03 00 34 */ lfs f0, 0x34(r3)
/* 800E347C 000E03BC  EC 01 00 2A */ fadds f0, f1, f0
/* 800E3480 000E03C0  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800E3484 000E03C4  C0 1F 34 78 */ lfs f0, 0x3478(r31)
/* 800E3488 000E03C8  C0 3F 05 94 */ lfs f1, 0x594(r31)
/* 800E348C 000E03CC  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800E3490 000E03D0  40 81 00 08 */ ble lbl_800E3498
/* 800E3494 000E03D4  D0 3F 34 78 */ stfs f1, 0x3478(r31)
lbl_800E3498:
/* 800E3498 000E03D8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E349C 000E03DC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E34A0 000E03E0  3B C3 0F 38 */ addi r30, r3, 0xf38
/* 800E34A4 000E03E4  7F C3 F3 78 */ mr r3, r30
/* 800E34A8 000E03E8  38 9F 1E 2C */ addi r4, r31, 0x1e2c
/* 800E34AC 000E03EC  4B F9 11 B5 */ bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800E34B0 000E03F0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E34B4 000E03F4  41 82 00 8C */ beq lbl_800E3540
/* 800E34B8 000E03F8  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E34BC 000E03FC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E34C0 000E0400  41 82 00 80 */ beq lbl_800E3540
/* 800E34C4 000E0404  7F C3 F3 78 */ mr r3, r30
/* 800E34C8 000E0408  38 9F 1E 2C */ addi r4, r31, 0x1e2c
/* 800E34CC 000E040C  4B F9 15 F1 */ bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800E34D0 000E0410  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E34D4 000E0414  41 82 00 58 */ beq lbl_800E352C
/* 800E34D8 000E0418  C0 1F 37 C8 */ lfs f0, 0x37c8(r31)
/* 800E34DC 000E041C  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 800E34E0 000E0420  C0 1F 37 CC */ lfs f0, 0x37cc(r31)
/* 800E34E4 000E0424  D0 01 00 34 */ stfs f0, 0x34(r1)
/* 800E34E8 000E0428  C0 1F 37 D0 */ lfs f0, 0x37d0(r31)
/* 800E34EC 000E042C  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 800E34F0 000E0430  7F C3 F3 78 */ mr r3, r30
/* 800E34F4 000E0434  38 9F 1E 2C */ addi r4, r31, 0x1e2c
/* 800E34F8 000E0438  38 A0 00 01 */ li r5, 1
/* 800E34FC 000E043C  38 DF 37 C8 */ addi r6, r31, 0x37c8
/* 800E3500 000E0440  38 E0 00 00 */ li r7, 0
/* 800E3504 000E0444  39 00 00 00 */ li r8, 0
/* 800E3508 000E0448  4B F9 23 79 */ bl Move__4dBgSFvBgTransPos
/* 800E350C 000E044C  38 61 00 18 */ addi r3, r1, 0x18
/* 800E3510 000E0450  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 800E3514 000E0454  38 A1 00 30 */ addi r5, r1, 0x30
/* 800E3518 000E0458  48 18 36 1D */ bl __mi__4cXyzCFRC3Vec
/* 800E351C 000E045C  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 800E3520 000E0460  38 81 00 18 */ addi r4, r1, 0x18
/* 800E3524 000E0464  7C 65 1B 78 */ mr r5, r3
/* 800E3528 000E0468  48 26 3B 69 */ bl PSVECAdd
lbl_800E352C:
/* 800E352C 000E046C  7F E3 FB 78 */ mr r3, r31
/* 800E3530 000E0470  38 9F 1E 2C */ addi r4, r31, 0x1e2c
/* 800E3534 000E0474  38 A0 00 01 */ li r5, 1
/* 800E3538 000E0478  4B FF F2 D1 */ bl setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi
/* 800E353C 000E047C  48 00 00 20 */ b lbl_800E355C
lbl_800E3540:
/* 800E3540 000E0480  7F E3 FB 78 */ mr r3, r31
/* 800E3544 000E0484  4B FF F8 81 */ bl cancelMagneBootsOn__9daAlink_cFv
/* 800E3548 000E0488  7F E3 FB 78 */ mr r3, r31
/* 800E354C 000E048C  38 80 00 01 */ li r4, 1
/* 800E3550 000E0490  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800E3554 000E0494  4B FE 34 F5 */ bl procFallInit__9daAlink_cFif
/* 800E3558 000E0498  48 00 01 F0 */ b lbl_800E3748
lbl_800E355C:
/* 800E355C 000E049C  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 800E3560 000E04A0  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 800E3564 000E04A4  C0 3F 34 78 */ lfs f1, 0x3478(r31)
/* 800E3568 000E04A8  48 18 D2 45 */ bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 800E356C 000E04AC  38 7F 37 C8 */ addi r3, r31, 0x37c8
/* 800E3570 000E04B0  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 800E3574 000E04B4  48 26 3E 29 */ bl PSVECSquareDistance
/* 800E3578 000E04B8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E357C 000E04BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E3580 000E04C0  40 81 00 58 */ ble lbl_800E35D8
/* 800E3584 000E04C4  FC 00 08 34 */ frsqrte f0, f1
/* 800E3588 000E04C8  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800E358C 000E04CC  FC 44 00 32 */ fmul f2, f4, f0
/* 800E3590 000E04D0  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800E3594 000E04D4  FC 00 00 32 */ fmul f0, f0, f0
/* 800E3598 000E04D8  FC 01 00 32 */ fmul f0, f1, f0
/* 800E359C 000E04DC  FC 03 00 28 */ fsub f0, f3, f0
/* 800E35A0 000E04E0  FC 02 00 32 */ fmul f0, f2, f0
/* 800E35A4 000E04E4  FC 44 00 32 */ fmul f2, f4, f0
/* 800E35A8 000E04E8  FC 00 00 32 */ fmul f0, f0, f0
/* 800E35AC 000E04EC  FC 01 00 32 */ fmul f0, f1, f0
/* 800E35B0 000E04F0  FC 03 00 28 */ fsub f0, f3, f0
/* 800E35B4 000E04F4  FC 02 00 32 */ fmul f0, f2, f0
/* 800E35B8 000E04F8  FC 44 00 32 */ fmul f2, f4, f0
/* 800E35BC 000E04FC  FC 00 00 32 */ fmul f0, f0, f0
/* 800E35C0 000E0500  FC 01 00 32 */ fmul f0, f1, f0
/* 800E35C4 000E0504  FC 03 00 28 */ fsub f0, f3, f0
/* 800E35C8 000E0508  FC 02 00 32 */ fmul f0, f2, f0
/* 800E35CC 000E050C  FC 21 00 32 */ fmul f1, f1, f0
/* 800E35D0 000E0510  FC 20 08 18 */ frsp f1, f1
/* 800E35D4 000E0514  48 00 00 88 */ b lbl_800E365C
lbl_800E35D8:
/* 800E35D8 000E0518  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800E35DC 000E051C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E35E0 000E0520  40 80 00 10 */ bge lbl_800E35F0
/* 800E35E4 000E0524  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800E35E8 000E0528  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 800E35EC 000E052C  48 00 00 70 */ b lbl_800E365C
lbl_800E35F0:
/* 800E35F0 000E0530  D0 21 00 08 */ stfs f1, 8(r1)
/* 800E35F4 000E0534  80 81 00 08 */ lwz r4, 8(r1)
/* 800E35F8 000E0538  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800E35FC 000E053C  3C 00 7F 80 */ lis r0, 0x7f80
/* 800E3600 000E0540  7C 03 00 00 */ cmpw r3, r0
/* 800E3604 000E0544  41 82 00 14 */ beq lbl_800E3618
/* 800E3608 000E0548  40 80 00 40 */ bge lbl_800E3648
/* 800E360C 000E054C  2C 03 00 00 */ cmpwi r3, 0
/* 800E3610 000E0550  41 82 00 20 */ beq lbl_800E3630
/* 800E3614 000E0554  48 00 00 34 */ b lbl_800E3648
lbl_800E3618:
/* 800E3618 000E0558  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800E361C 000E055C  41 82 00 0C */ beq lbl_800E3628
/* 800E3620 000E0560  38 00 00 01 */ li r0, 1
/* 800E3624 000E0564  48 00 00 28 */ b lbl_800E364C
lbl_800E3628:
/* 800E3628 000E0568  38 00 00 02 */ li r0, 2
/* 800E362C 000E056C  48 00 00 20 */ b lbl_800E364C
lbl_800E3630:
/* 800E3630 000E0570  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800E3634 000E0574  41 82 00 0C */ beq lbl_800E3640
/* 800E3638 000E0578  38 00 00 05 */ li r0, 5
/* 800E363C 000E057C  48 00 00 10 */ b lbl_800E364C
lbl_800E3640:
/* 800E3640 000E0580  38 00 00 03 */ li r0, 3
/* 800E3644 000E0584  48 00 00 08 */ b lbl_800E364C
lbl_800E3648:
/* 800E3648 000E0588  38 00 00 04 */ li r0, 4
lbl_800E364C:
/* 800E364C 000E058C  2C 00 00 01 */ cmpwi r0, 1
/* 800E3650 000E0590  40 82 00 0C */ bne lbl_800E365C
/* 800E3654 000E0594  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800E3658 000E0598  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_800E365C:
/* 800E365C 000E059C  C0 02 93 00 */ lfs f0, lbl_80452D00-_SDA2_BASE_(r2)
/* 800E3660 000E05A0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E3664 000E05A4  40 80 00 44 */ bge lbl_800E36A8
/* 800E3668 000E05A8  C0 1F 37 C8 */ lfs f0, 0x37c8(r31)
/* 800E366C 000E05AC  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800E3670 000E05B0  C0 1F 37 CC */ lfs f0, 0x37cc(r31)
/* 800E3674 000E05B4  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800E3678 000E05B8  C0 1F 37 D0 */ lfs f0, 0x37d0(r31)
/* 800E367C 000E05BC  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 800E3680 000E05C0  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E3684 000E05C4  60 00 10 00 */ ori r0, r0, 0x1000
/* 800E3688 000E05C8  90 1F 05 70 */ stw r0, 0x570(r31)
/* 800E368C 000E05CC  38 7F 2C A8 */ addi r3, r31, 0x2ca8
/* 800E3690 000E05D0  38 80 00 01 */ li r4, 1
/* 800E3694 000E05D4  48 1E 04 59 */ bl setMagnetized__14Z2CreatureLinkFb
/* 800E3698 000E05D8  7F E3 FB 78 */ mr r3, r31
/* 800E369C 000E05DC  38 80 00 00 */ li r4, 0
/* 800E36A0 000E05E0  4B FF 77 71 */ bl procLandDamageInit__9daAlink_cFi
/* 800E36A4 000E05E4  48 00 00 A0 */ b lbl_800E3744
lbl_800E36A8:
/* 800E36A8 000E05E8  80 7F 06 50 */ lwz r3, 0x650(r31)
/* 800E36AC 000E05EC  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800E36B0 000E05F0  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800E36B4 000E05F4  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800E36B8 000E05F8  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800E36BC 000E05FC  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800E36C0 000E0600  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800E36C4 000E0604  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800E36C8 000E0608  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800E36CC 000E060C  38 61 00 0C */ addi r3, r1, 0xc
/* 800E36D0 000E0610  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 800E36D4 000E0614  38 A1 00 24 */ addi r5, r1, 0x24
/* 800E36D8 000E0618  48 18 34 5D */ bl __mi__4cXyzCFRC3Vec
/* 800E36DC 000E061C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800E36E0 000E0620  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800E36E4 000E0624  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800E36E8 000E0628  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800E36EC 000E062C  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 800E36F0 000E0630  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800E36F4 000E0634  38 61 00 24 */ addi r3, r1, 0x24
/* 800E36F8 000E0638  48 18 3A 59 */ bl atan2sY_XZ__4cXyzCFv
/* 800E36FC 000E063C  38 03 C0 00 */ addi r0, r3, -16384
/* 800E3700 000E0640  7C 04 07 34 */ extsh r4, r0
/* 800E3704 000E0644  38 7F 04 E4 */ addi r3, r31, 0x4e4
/* 800E3708 000E0648  38 A0 00 05 */ li r5, 5
/* 800E370C 000E064C  38 C0 10 00 */ li r6, 0x1000
/* 800E3710 000E0650  38 E0 01 00 */ li r7, 0x100
/* 800E3714 000E0654  48 18 CE 2D */ bl cLib_addCalcAngleS__FPsssss
/* 800E3718 000E0658  38 61 00 24 */ addi r3, r1, 0x24
/* 800E371C 000E065C  48 18 3A 0D */ bl atan2sX_Z__4cXyzCFv
/* 800E3720 000E0660  7C 64 1B 78 */ mr r4, r3
/* 800E3724 000E0664  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800E3728 000E0668  38 A0 00 05 */ li r5, 5
/* 800E372C 000E066C  38 C0 10 00 */ li r6, 0x1000
/* 800E3730 000E0670  38 E0 01 00 */ li r7, 0x100
/* 800E3734 000E0674  48 18 CE 0D */ bl cLib_addCalcAngleS__FPsssss
/* 800E3738 000E0678  A8 7F 30 0C */ lha r3, 0x300c(r31)
/* 800E373C 000E067C  38 03 1C 00 */ addi r0, r3, 0x1c00
/* 800E3740 000E0680  B0 1F 30 0C */ sth r0, 0x300c(r31)
lbl_800E3744:
/* 800E3744 000E0684  38 60 00 01 */ li r3, 1
lbl_800E3748:
/* 800E3748 000E0688  83 E1 00 4C */ lwz r31, 0x4c(r1)
/* 800E374C 000E068C  83 C1 00 48 */ lwz r30, 0x48(r1)
/* 800E3750 000E0690  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800E3754 000E0694  7C 08 03 A6 */ mtlr r0
/* 800E3758 000E0698  38 21 00 50 */ addi r1, r1, 0x50
/* 800E375C 000E069C  4E 80 00 20 */ blr