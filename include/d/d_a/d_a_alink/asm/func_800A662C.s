/* 800A662C 000A356C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800A6630 000A3570  7C 08 02 A6 */ mflr r0
/* 800A6634 000A3574  90 01 00 24 */ stw r0, 0x24(r1)
/* 800A6638 000A3578  39 61 00 20 */ addi r11, r1, 0x20
/* 800A663C 000A357C  48 2B BB A1 */ bl _savegpr_29
/* 800A6640 000A3580  7C 7E 1B 78 */ mr r30, r3
/* 800A6644 000A3584  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800A6648 000A3588  28 00 01 58 */ cmplwi r0, 0x158
/* 800A664C 000A358C  41 82 00 4C */ beq lbl_800A6698
/* 800A6650 000A3590  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800A6654 000A3594  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800A6658 000A3598  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800A665C 000A359C  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A6660 000A35A0  4B FC EA A1 */ bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 800A6664 000A35A4  7C 7F 1B 78 */ mr r31, r3
/* 800A6668 000A35A8  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 800A666C 000A35AC  7C 00 07 74 */ extsb r0, r0
/* 800A6670 000A35B0  7C 1F 00 00 */ cmpw r31, r0
/* 800A6674 000A35B4  41 82 00 18 */ beq lbl_800A668C
/* 800A6678 000A35B8  9B FE 04 8C */ stb r31, 0x48c(r30)
/* 800A667C 000A35BC  4B F8 69 F1 */ bl dComIfGp_getReverb
/* 800A6680 000A35C0  98 7E 2F 9A */ stb r3, 0x2f9a(r30)
/* 800A6684 000A35C4  9B FE 08 36 */ stb r31, 0x836(r30)
/* 800A6688 000A35C8  9B FE 04 E2 */ stb r31, 0x4e2(r30)
lbl_800A668C:
/* 800A668C 000A35CC  38 7E 1A 4C */ addi r3, r30, 0x1a4c
/* 800A6690 000A35D0  4B F8 09 59 */ bl dStage_RoomCheck
/* 800A6694 000A35D4  48 00 00 10 */ b lbl_800A66A4
lbl_800A6698:
/* 800A6698 000A35D8  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 800A669C 000A35DC  7C 00 07 74 */ extsb r0, r0
/* 800A66A0 000A35E0  7C 1F 03 78 */ mr r31, r0
lbl_800A66A4:
/* 800A66A4 000A35E4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800A66A8 000A35E8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800A66AC 000A35EC  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 800A66B0 000A35F0  7F A3 EB 78 */ mr r3, r29
/* 800A66B4 000A35F4  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A66B8 000A35F8  4B FC E5 31 */ bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 800A66BC 000A35FC  98 7E 04 8D */ stb r3, 0x48d(r30)
/* 800A66C0 000A3600  7F A3 EB 78 */ mr r3, r29
/* 800A66C4 000A3604  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A66C8 000A3608  4B FC E8 29 */ bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 800A66CC 000A360C  90 7E 31 74 */ stw r3, 0x3174(r30)
/* 800A66D0 000A3610  7F A3 EB 78 */ mr r3, r29
/* 800A66D4 000A3614  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A66D8 000A3618  4B FC E7 79 */ bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800A66DC 000A361C  98 7E 2F BB */ stb r3, 0x2fbb(r30)
/* 800A66E0 000A3620  7F A3 EB 78 */ mr r3, r29
/* 800A66E4 000A3624  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A66E8 000A3628  4B FC E5 D5 */ bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 800A66EC 000A362C  98 7E 2F A8 */ stb r3, 0x2fa8(r30)
/* 800A66F0 000A3630  88 1E 2F A8 */ lbz r0, 0x2fa8(r30)
/* 800A66F4 000A3634  28 00 00 06 */ cmplwi r0, 6
/* 800A66F8 000A3638  40 82 00 18 */ bne lbl_800A6710
/* 800A66FC 000A363C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800A6700 000A3640  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A6704 000A3644  41 82 00 0C */ beq lbl_800A6710
/* 800A6708 000A3648  38 00 00 05 */ li r0, 5
/* 800A670C 000A364C  98 1E 2F A8 */ stb r0, 0x2fa8(r30)
lbl_800A6710:
/* 800A6710 000A3650  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800A6714 000A3654  28 00 00 FF */ cmplwi r0, 0xff
/* 800A6718 000A3658  41 82 00 AC */ beq lbl_800A67C4
/* 800A671C 000A365C  88 1E 2F BB */ lbz r0, 0x2fbb(r30)
/* 800A6720 000A3660  28 00 00 03 */ cmplwi r0, 3
/* 800A6724 000A3664  40 82 00 98 */ bne lbl_800A67BC
/* 800A6728 000A3668  7F A3 EB 78 */ mr r3, r29
/* 800A672C 000A366C  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A6730 000A3670  4B FC E7 71 */ bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 800A6734 000A3674  98 7E 2F BD */ stb r3, 0x2fbd(r30)
/* 800A6738 000A3678  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800A673C 000A367C  28 00 00 04 */ cmplwi r0, 4
/* 800A6740 000A3680  40 82 00 18 */ bne lbl_800A6758
/* 800A6744 000A3684  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800A6748 000A3688  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A674C 000A368C  41 82 00 0C */ beq lbl_800A6758
/* 800A6750 000A3690  38 00 00 00 */ li r0, 0
/* 800A6754 000A3694  98 1E 2F BD */ stb r0, 0x2fbd(r30)
lbl_800A6758:
/* 800A6758 000A3698  7F C3 F3 78 */ mr r3, r30
/* 800A675C 000A369C  48 06 F4 C5 */ bl daAlink_c_NS_checkEventRun
/* 800A6760 000A36A0  2C 03 00 00 */ cmpwi r3, 0
/* 800A6764 000A36A4  40 82 00 60 */ bne lbl_800A67C4
/* 800A6768 000A36A8  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800A676C 000A36AC  28 00 00 01 */ cmplwi r0, 1
/* 800A6770 000A36B0  41 82 00 0C */ beq lbl_800A677C
/* 800A6774 000A36B4  28 00 00 03 */ cmplwi r0, 3
/* 800A6778 000A36B8  40 82 00 4C */ bne lbl_800A67C4
lbl_800A677C:
/* 800A677C 000A36BC  7F C3 F3 78 */ mr r3, r30
/* 800A6780 000A36C0  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800A6784 000A36C4  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800A6788 000A36C8  7D 89 03 A6 */ mtctr r12
/* 800A678C 000A36CC  4E 80 04 21 */ bctrl
/* 800A6790 000A36D0  2C 03 00 00 */ cmpwi r3, 0
/* 800A6794 000A36D4  40 82 00 1C */ bne lbl_800A67B0
/* 800A6798 000A36D8  C0 5E 2B A8 */ lfs f2, 0x2ba8(r30)
/* 800A679C 000A36DC  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A67A0 000A36E0  C0 1E 34 58 */ lfs f0, 0x3458(r30)
/* 800A67A4 000A36E4  EC 01 00 2A */ fadds f0, f1, f0
/* 800A67A8 000A36E8  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800A67AC 000A36EC  40 80 00 18 */ bge lbl_800A67C4
lbl_800A67B0:
/* 800A67B0 000A36F0  38 00 00 02 */ li r0, 2
/* 800A67B4 000A36F4  98 1E 2F BD */ stb r0, 0x2fbd(r30)
/* 800A67B8 000A36F8  48 00 00 0C */ b lbl_800A67C4
lbl_800A67BC:
/* 800A67BC 000A36FC  38 00 00 00 */ li r0, 0
/* 800A67C0 000A3700  98 1E 2F BD */ stb r0, 0x2fbd(r30)
lbl_800A67C4:
/* 800A67C4 000A3704  7F E3 FB 78 */ mr r3, r31
/* 800A67C8 000A3708  39 61 00 20 */ addi r11, r1, 0x20
/* 800A67CC 000A370C  48 2B BA 5D */ bl _restgpr_29
/* 800A67D0 000A3710  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800A67D4 000A3714  7C 08 03 A6 */ mtlr r0
/* 800A67D8 000A3718  38 21 00 20 */ addi r1, r1, 0x20
/* 800A67DC 000A371C  4E 80 00 20 */ blr
