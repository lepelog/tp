/* 800C5484 000C23C4  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800C5488 000C23C8  7C 08 02 A6 */ mflr r0
/* 800C548C 000C23CC  90 01 00 44 */ stw r0, 0x44(r1)
/* 800C5490 000C23D0  39 61 00 40 */ addi r11, r1, 0x40
/* 800C5494 000C23D4  48 29 CD 49 */ bl _savegpr_29
/* 800C5498 000C23D8  7C 7F 1B 78 */ mr r31, r3
/* 800C549C 000C23DC  80 03 05 88 */ lwz r0, 0x588(r3)
/* 800C54A0 000C23E0  64 00 08 00 */ oris r0, r0, 0x800
/* 800C54A4 000C23E4  90 03 05 88 */ stw r0, 0x588(r3)
/* 800C54A8 000C23E8  80 83 27 EC */ lwz r4, 0x27ec(r3)
/* 800C54AC 000C23EC  28 04 00 00 */ cmplwi r4, 0
/* 800C54B0 000C23F0  41 82 00 48 */ beq lbl_800C54F8
/* 800C54B4 000C23F4  4B F5 52 5D */ bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800C54B8 000C23F8  7C 64 1B 78 */ mr r4, r3
/* 800C54BC 000C23FC  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800C54C0 000C2400  38 A0 00 05 */ li r5, 5
/* 800C54C4 000C2404  38 C0 05 E8 */ li r6, 0x5e8
/* 800C54C8 000C2408  38 E0 01 3C */ li r7, 0x13c
/* 800C54CC 000C240C  48 1A B0 75 */ bl cLib_addCalcAngleS__FPsssss
/* 800C54D0 000C2410  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800C54D4 000C2414  28 00 00 02 */ cmplwi r0, 2
/* 800C54D8 000C2418  40 82 00 14 */ bne lbl_800C54EC
/* 800C54DC 000C241C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C54E0 000C2420  38 03 40 00 */ addi r0, r3, 0x4000
/* 800C54E4 000C2424  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C54E8 000C2428  48 00 00 10 */ b lbl_800C54F8
lbl_800C54EC:
/* 800C54EC 000C242C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C54F0 000C2430  38 03 C0 00 */ addi r0, r3, -16384
/* 800C54F4 000C2434  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800C54F8:
/* 800C54F8 000C2438  7F E3 FB 78 */ mr r3, r31
/* 800C54FC 000C243C  48 00 BB 31 */ bl daAlink_c_NS_checkCutFinishJumpUp
/* 800C5500 000C2440  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 800C5504 000C2444  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800C5508 000C2448  7C 00 1B 78 */ or r0, r0, r3
/* 800C550C 000C244C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800C5510 000C2450  3B BF 1F D0 */ addi r29, r31, 0x1fd0
/* 800C5514 000C2454  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800C5518 000C2458  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800C551C 000C245C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C5520 000C2460  7F E3 FB 78 */ mr r3, r31
/* 800C5524 000C2464  38 81 00 14 */ addi r4, r1, 0x14
/* 800C5528 000C2468  4B FE CA B1 */ bl daAlink_c_NS_getSlidePolygon
/* 800C552C 000C246C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C5530 000C2470  41 82 00 14 */ beq lbl_800C5544
/* 800C5534 000C2474  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800C5538 000C2478  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C553C 000C247C  C0 42 93 D8 */ lfs f2, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C5540 000C2480  48 1A B2 01 */ bl cLib_chaseF__FPfff
lbl_800C5544:
/* 800C5544 000C2484  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800C5548 000C2488  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C554C 000C248C  41 82 00 10 */ beq lbl_800C555C
/* 800C5550 000C2490  7F E3 FB 78 */ mr r3, r31
/* 800C5554 000C2494  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800C5558 000C2498  48 01 7A B1 */ bl daAlink_c_NS_setUpperGuardAnime
lbl_800C555C:
/* 800C555C 000C249C  7F A3 EB 78 */ mr r3, r29
/* 800C5560 000C24A0  48 09 8F 6D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C5564 000C24A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C5568 000C24A8  41 82 00 74 */ beq lbl_800C55DC
/* 800C556C 000C24AC  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 800C5570 000C24B0  28 00 00 49 */ cmplwi r0, 0x49
/* 800C5574 000C24B4  40 82 00 1C */ bne lbl_800C5590
/* 800C5578 000C24B8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C557C 000C24BC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C5580 000C24C0  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800C5584 000C24C4  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 800C5588 000C24C8  4B F8 2B F5 */ bl cutEnd__16dEvent_manager_cFi
/* 800C558C 000C24CC  48 00 01 4C */ b lbl_800C56D8
lbl_800C5590:
/* 800C5590 000C24D0  83 DF 27 E0 */ lwz r30, 0x27e0(r31)
/* 800C5594 000C24D4  3B A0 00 01 */ li r29, 1
/* 800C5598 000C24D8  7F C3 F3 78 */ mr r3, r30
/* 800C559C 000C24DC  4B FA E2 49 */ bl dAttention_c_NS_LockonTruth
/* 800C55A0 000C24E0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C55A4 000C24E4  40 82 00 14 */ bne lbl_800C55B8
/* 800C55A8 000C24E8  80 1E 03 34 */ lwz r0, 0x334(r30)
/* 800C55AC 000C24EC  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800C55B0 000C24F0  40 82 00 08 */ bne lbl_800C55B8
/* 800C55B4 000C24F4  3B A0 00 00 */ li r29, 0
lbl_800C55B8:
/* 800C55B8 000C24F8  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800C55BC 000C24FC  40 82 00 10 */ bne lbl_800C55CC
/* 800C55C0 000C2500  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800C55C4 000C2504  54 00 01 46 */ rlwinm r0, r0, 0, 5, 3
/* 800C55C8 000C2508  90 1F 05 78 */ stw r0, 0x578(r31)
lbl_800C55CC:
/* 800C55CC 000C250C  7F E3 FB 78 */ mr r3, r31
/* 800C55D0 000C2510  38 80 00 00 */ li r4, 0
/* 800C55D4 000C2514  4B FF 4A FD */ bl daAlink_c_NS_checkNextAction
/* 800C55D8 000C2518  48 00 01 00 */ b lbl_800C56D8
lbl_800C55DC:
/* 800C55DC 000C251C  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800C55E0 000C2520  2C 00 00 00 */ cmpwi r0, 0
/* 800C55E4 000C2524  41 82 00 38 */ beq lbl_800C561C
/* 800C55E8 000C2528  7F E3 FB 78 */ mr r3, r31
/* 800C55EC 000C252C  4B FE C5 3D */ bl daAlink_c_NS_checkNotJumpSinkLimit
/* 800C55F0 000C2530  2C 03 00 00 */ cmpwi r3, 0
/* 800C55F4 000C2534  40 82 00 28 */ bne lbl_800C561C
/* 800C55F8 000C2538  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800C55FC 000C253C  3C 60 80 39 */ lis r3, lbl_8038DF70@ha
/* 800C5600 000C2540  38 63 DF 70 */ addi r3, r3, lbl_8038DF70@l
/* 800C5604 000C2544  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800C5608 000C2548  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C560C 000C254C  40 81 00 10 */ ble lbl_800C561C
/* 800C5610 000C2550  7F E3 FB 78 */ mr r3, r31
/* 800C5614 000C2554  48 00 E4 C9 */ bl daAlink_c_NS_procCutFinishJumpUpInit
/* 800C5618 000C2558  48 00 00 C0 */ b lbl_800C56D8
lbl_800C561C:
/* 800C561C 000C255C  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800C5620 000C2560  3C 60 80 39 */ lis r3, lbl_8038DF70@ha
/* 800C5624 000C2564  38 63 DF 70 */ addi r3, r3, lbl_8038DF70@l
/* 800C5628 000C2568  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800C562C 000C256C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C5630 000C2570  40 81 00 38 */ ble lbl_800C5668
/* 800C5634 000C2574  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800C5638 000C2578  60 00 00 04 */ ori r0, r0, 4
/* 800C563C 000C257C  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800C5640 000C2580  7F E3 FB 78 */ mr r3, r31
/* 800C5644 000C2584  38 80 00 01 */ li r4, 1
/* 800C5648 000C2588  4B FF 4A 89 */ bl daAlink_c_NS_checkNextAction
/* 800C564C 000C258C  2C 03 00 00 */ cmpwi r3, 0
/* 800C5650 000C2590  40 82 00 88 */ bne lbl_800C56D8
/* 800C5654 000C2594  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800C5658 000C2598  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C565C 000C259C  C0 42 97 B4 */ lfs f2, lbl_804531B4-_SDA2_BASE_(r2)
/* 800C5660 000C25A0  48 1A B0 E1 */ bl cLib_chaseF__FPfff
/* 800C5664 000C25A4  48 00 00 74 */ b lbl_800C56D8
lbl_800C5668:
/* 800C5668 000C25A8  7F A3 EB 78 */ mr r3, r29
/* 800C566C 000C25AC  C0 22 93 C8 */ lfs f1, lbl_80452DC8-_SDA2_BASE_(r2)
/* 800C5670 000C25B0  48 26 2D BD */ bl checkPass__12J3DFrameCtrlFf
/* 800C5674 000C25B4  2C 03 00 00 */ cmpwi r3, 0
/* 800C5678 000C25B8  41 82 00 34 */ beq lbl_800C56AC
/* 800C567C 000C25BC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C5680 000C25C0  D0 21 00 08 */ stfs f1, 8(r1)
/* 800C5684 000C25C4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C5688 000C25C8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800C568C 000C25CC  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800C5690 000C25D0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C5694 000C25D4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C5698 000C25D8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800C569C 000C25DC  38 80 00 01 */ li r4, 1
/* 800C56A0 000C25E0  38 A0 00 01 */ li r5, 1
/* 800C56A4 000C25E4  38 C1 00 08 */ addi r6, r1, 8
/* 800C56A8 000C25E8  4B FA A3 7D */ bl StartShock__12dVibration_cFii4cXyz
lbl_800C56AC:
/* 800C56AC 000C25EC  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800C56B0 000C25F0  C0 02 93 C0 */ lfs f0, lbl_80452DC0-_SDA2_BASE_(r2)
/* 800C56B4 000C25F4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C56B8 000C25F8  40 80 00 10 */ bge lbl_800C56C8
/* 800C56BC 000C25FC  38 00 00 04 */ li r0, 4
/* 800C56C0 000C2600  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 800C56C4 000C2604  48 00 00 14 */ b lbl_800C56D8
lbl_800C56C8:
/* 800C56C8 000C2608  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800C56CC 000C260C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C56D0 000C2610  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C56D4 000C2614  48 1A B0 6D */ bl cLib_chaseF__FPfff
lbl_800C56D8:
/* 800C56D8 000C2618  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800C56DC 000C261C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800C56E0 000C2620  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C56E4 000C2624  38 60 00 01 */ li r3, 1
/* 800C56E8 000C2628  39 61 00 40 */ addi r11, r1, 0x40
/* 800C56EC 000C262C  48 29 CB 3D */ bl _restgpr_29
/* 800C56F0 000C2630  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800C56F4 000C2634  7C 08 03 A6 */ mtlr r0
/* 800C56F8 000C2638  38 21 00 40 */ addi r1, r1, 0x40
/* 800C56FC 000C263C  4E 80 00 20 */ blr
