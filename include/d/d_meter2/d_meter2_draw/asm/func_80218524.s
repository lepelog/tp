/* 80218524 00215464  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80218528 00215468  7C 08 02 A6 */ mflr r0
/* 8021852C 0021546C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80218530 00215470  39 61 00 20 */ addi r11, r1, 0x20
/* 80218534 00215474  48 14 9C A1 */ bl _savegpr_27
/* 80218538 00215478  7C 7B 1B 78 */ mr r27, r3
/* 8021853C 0021547C  80 63 03 60 */ lwz r3, 0x360(r3)
/* 80218540 00215480  48 03 D2 E9 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218544 00215484  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218548 00215488  3B C3 EB C8 */ addi r30, r3, lbl_8042EBC8@l
/* 8021854C 0021548C  C0 5E 00 18 */ lfs f2, 0x18(r30)
/* 80218550 00215490  C0 1E 04 18 */ lfs f0, 0x418(r30)
/* 80218554 00215494  EC 02 00 32 */ fmuls f0, f2, f0
/* 80218558 00215498  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8021855C 0021549C  41 82 00 20 */ beq lbl_8021857C
/* 80218560 002154A0  80 7B 03 60 */ lwz r3, 0x360(r27)
/* 80218564 002154A4  FC 20 00 90 */ fmr f1, f0
/* 80218568 002154A8  48 03 D2 69 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021856C 002154AC  7F 63 DB 78 */ mr r3, r27
/* 80218570 002154B0  80 9B 03 60 */ lwz r4, 0x360(r27)
/* 80218574 002154B4  38 A0 00 05 */ li r5, 5
/* 80218578 002154B8  48 00 25 2D */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_8021857C:
/* 8021857C 002154BC  3B 80 00 00 */ li r28, 0
/* 80218580 002154C0  3B E0 00 00 */ li r31, 0
lbl_80218584:
/* 80218584 002154C4  3B BF 04 90 */ addi r29, r31, 0x490
/* 80218588 002154C8  7C 7B E8 2E */ lwzx r3, r27, r29
/* 8021858C 002154CC  28 03 00 00 */ cmplwi r3, 0
/* 80218590 002154D0  41 82 00 30 */ beq lbl_802185C0
/* 80218594 002154D4  48 03 D2 95 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218598 002154D8  C0 1E 00 18 */ lfs f0, 0x18(r30)
/* 8021859C 002154DC  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802185A0 002154E0  41 82 00 20 */ beq lbl_802185C0
/* 802185A4 002154E4  7C 7B E8 2E */ lwzx r3, r27, r29
/* 802185A8 002154E8  FC 20 00 90 */ fmr f1, f0
/* 802185AC 002154EC  48 03 D2 25 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802185B0 002154F0  7F 63 DB 78 */ mr r3, r27
/* 802185B4 002154F4  7C 9B E8 2E */ lwzx r4, r27, r29
/* 802185B8 002154F8  38 A0 00 05 */ li r5, 5
/* 802185BC 002154FC  48 00 24 E9 */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_802185C0:
/* 802185C0 00215500  3B 9C 00 01 */ addi r28, r28, 1
/* 802185C4 00215504  2C 1C 00 05 */ cmpwi r28, 5
/* 802185C8 00215508  3B FF 00 04 */ addi r31, r31, 4
/* 802185CC 0021550C  41 80 FF B8 */ blt lbl_80218584
/* 802185D0 00215510  39 61 00 20 */ addi r11, r1, 0x20
/* 802185D4 00215514  48 14 9C 4D */ bl _restgpr_27
/* 802185D8 00215518  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802185DC 0021551C  7C 08 03 A6 */ mtlr r0
/* 802185E0 00215520  38 21 00 20 */ addi r1, r1, 0x20
/* 802185E4 00215524  4E 80 00 20 */ blr
