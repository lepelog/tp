/* 802186C4 00215604  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802186C8 00215608  7C 08 02 A6 */ mflr r0
/* 802186CC 0021560C  90 01 00 24 */ stw r0, 0x24(r1)
/* 802186D0 00215610  39 61 00 20 */ addi r11, r1, 0x20
/* 802186D4 00215614  48 14 9B 01 */ bl _savegpr_27
/* 802186D8 00215618  7C 7B 1B 78 */ mr r27, r3
/* 802186DC 0021561C  80 63 03 64 */ lwz r3, 0x364(r3)
/* 802186E0 00215620  48 03 D1 49 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 802186E4 00215624  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802186E8 00215628  3B C3 EB C8 */ addi r30, r3, lbl_8042EBC8@l
/* 802186EC 0021562C  C0 5E 00 18 */ lfs f2, 0x18(r30)
/* 802186F0 00215630  C0 1E 04 1C */ lfs f0, 0x41c(r30)
/* 802186F4 00215634  EC 02 00 32 */ fmuls f0, f2, f0
/* 802186F8 00215638  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802186FC 0021563C  41 82 00 20 */ beq lbl_8021871C
/* 80218700 00215640  80 7B 03 64 */ lwz r3, 0x364(r27)
/* 80218704 00215644  FC 20 00 90 */ fmr f1, f0
/* 80218708 00215648  48 03 D0 C9 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021870C 0021564C  7F 63 DB 78 */ mr r3, r27
/* 80218710 00215650  80 9B 03 64 */ lwz r4, 0x364(r27)
/* 80218714 00215654  38 A0 00 05 */ li r5, 5
/* 80218718 00215658  48 00 23 8D */ bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8021871C:
/* 8021871C 0021565C  3B 80 00 00 */ li r28, 0
/* 80218720 00215660  3B E0 00 00 */ li r31, 0
lbl_80218724:
/* 80218724 00215664  3B BF 04 A4 */ addi r29, r31, 0x4a4
/* 80218728 00215668  7C 7B E8 2E */ lwzx r3, r27, r29
/* 8021872C 0021566C  28 03 00 00 */ cmplwi r3, 0
/* 80218730 00215670  41 82 00 30 */ beq lbl_80218760
/* 80218734 00215674  48 03 D0 F5 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218738 00215678  C0 1E 00 18 */ lfs f0, 0x18(r30)
/* 8021873C 0021567C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218740 00215680  41 82 00 20 */ beq lbl_80218760
/* 80218744 00215684  7C 7B E8 2E */ lwzx r3, r27, r29
/* 80218748 00215688  FC 20 00 90 */ fmr f1, f0
/* 8021874C 0021568C  48 03 D0 85 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218750 00215690  7F 63 DB 78 */ mr r3, r27
/* 80218754 00215694  7C 9B E8 2E */ lwzx r4, r27, r29
/* 80218758 00215698  38 A0 00 05 */ li r5, 5
/* 8021875C 0021569C  48 00 23 49 */ bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80218760:
/* 80218760 002156A0  3B 9C 00 01 */ addi r28, r28, 1
/* 80218764 002156A4  2C 1C 00 05 */ cmpwi r28, 5
/* 80218768 002156A8  3B FF 00 04 */ addi r31, r31, 4
/* 8021876C 002156AC  41 80 FF B8 */ blt lbl_80218724
/* 80218770 002156B0  39 61 00 20 */ addi r11, r1, 0x20
/* 80218774 002156B4  48 14 9A AD */ bl _restgpr_27
/* 80218778 002156B8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8021877C 002156BC  7C 08 03 A6 */ mtlr r0
/* 80218780 002156C0  38 21 00 20 */ addi r1, r1, 0x20
/* 80218784 002156C4  4E 80 00 20 */ blr
