/* 802176EC 0021462C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802176F0 00214630  7C 08 02 A6 */ mflr r0
/* 802176F4 00214634  90 01 00 24 */ stw r0, 0x24(r1)
/* 802176F8 00214638  39 61 00 20 */ addi r11, r1, 0x20
/* 802176FC 0021463C  48 14 AA DD */ bl _savegpr_28
/* 80217700 00214640  7C 7F 1B 78 */ mr r31, r3
/* 80217704 00214644  7C 9C 23 78 */ mr r28, r4
/* 80217708 00214648  38 A0 00 01 */ li r5, 1
/* 8021770C 0021464C  38 DF 07 64 */ addi r6, r31, 0x764
/* 80217710 00214650  48 00 2B E5 */ bl dMeter2Draw_c_NS_getActionString
/* 80217714 00214654  7C 7D 1B 78 */ mr r29, r3
/* 80217718 00214658  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021771C 0021465C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80217720 00214660  88 63 5E 4E */ lbz r3, 0x5e4e(r3)
/* 80217724 00214664  54 60 FF FF */ rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80217728 00214668  40 82 00 0C */ bne lbl_80217734
/* 8021772C 0021466C  54 60 07 7B */ rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80217730 00214670  41 82 00 0C */ beq lbl_8021773C
lbl_80217734:
/* 80217734 00214674  38 00 00 07 */ li r0, 7
/* 80217738 00214678  98 1F 07 64 */ stb r0, 0x764(r31)
lbl_8021773C:
/* 8021773C 0021467C  57 83 06 3E */ clrlwi r3, r28, 0x18
/* 80217740 00214680  28 03 00 27 */ cmplwi r3, 0x27
/* 80217744 00214684  40 82 00 18 */ bne lbl_8021775C
/* 80217748 00214688  80 7F 03 5C */ lwz r3, 0x35c(r31)
/* 8021774C 0021468C  48 03 DE BD */ bl hide__13CPaneMgrAlphaFv
/* 80217750 00214690  80 7F 03 08 */ lwz r3, 0x308(r31)
/* 80217754 00214694  48 03 DE B5 */ bl hide__13CPaneMgrAlphaFv
/* 80217758 00214698  48 00 00 44 */ b lbl_8021779C
lbl_8021775C:
/* 8021775C 0021469C  88 1D 00 00 */ lbz r0, 0(r29)
/* 80217760 002146A0  7C 00 07 75 */ extsb. r0, r0
/* 80217764 002146A4  41 82 00 28 */ beq lbl_8021778C
/* 80217768 002146A8  28 03 00 2F */ cmplwi r3, 0x2f
/* 8021776C 002146AC  41 82 00 20 */ beq lbl_8021778C
/* 80217770 002146B0  28 03 00 08 */ cmplwi r3, 8
/* 80217774 002146B4  41 82 00 18 */ beq lbl_8021778C
/* 80217778 002146B8  80 7F 03 5C */ lwz r3, 0x35c(r31)
/* 8021777C 002146BC  48 03 DE 4D */ bl show__13CPaneMgrAlphaFv
/* 80217780 002146C0  80 7F 03 08 */ lwz r3, 0x308(r31)
/* 80217784 002146C4  48 03 DE 85 */ bl hide__13CPaneMgrAlphaFv
/* 80217788 002146C8  48 00 00 14 */ b lbl_8021779C
lbl_8021778C:
/* 8021778C 002146CC  80 7F 03 5C */ lwz r3, 0x35c(r31)
/* 80217790 002146D0  48 03 DE 79 */ bl hide__13CPaneMgrAlphaFv
/* 80217794 002146D4  80 7F 03 08 */ lwz r3, 0x308(r31)
/* 80217798 002146D8  48 03 DE 31 */ bl show__13CPaneMgrAlphaFv
lbl_8021779C:
/* 8021779C 002146DC  3B 80 00 00 */ li r28, 0
/* 802177A0 002146E0  3B C0 00 00 */ li r30, 0
lbl_802177A4:
/* 802177A4 002146E4  38 1E 00 F0 */ addi r0, r30, 0xf0
/* 802177A8 002146E8  7C 7F 00 2E */ lwzx r3, r31, r0
/* 802177AC 002146EC  80 63 00 04 */ lwz r3, 4(r3)
/* 802177B0 002146F0  48 0E 8E A9 */ bl getStringPtr__10J2DTextBoxCFv
/* 802177B4 002146F4  7F A4 EB 78 */ mr r4, r29
/* 802177B8 002146F8  48 15 13 75 */ bl strcpy
/* 802177BC 002146FC  3B 9C 00 01 */ addi r28, r28, 1
/* 802177C0 00214700  2C 1C 00 05 */ cmpwi r28, 5
/* 802177C4 00214704  3B DE 00 0C */ addi r30, r30, 0xc
/* 802177C8 00214708  41 80 FF DC */ blt lbl_802177A4
/* 802177CC 0021470C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802177D0 00214710  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802177D4 00214714  C0 03 01 74 */ lfs f0, 0x174(r3)
/* 802177D8 00214718  80 7F 03 14 */ lwz r3, 0x314(r31)
/* 802177DC 0021471C  80 63 00 04 */ lwz r3, 4(r3)
/* 802177E0 00214720  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 802177E4 00214724  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 802177E8 00214728  81 83 00 00 */ lwz r12, 0(r3)
/* 802177EC 0021472C  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 802177F0 00214730  7D 89 03 A6 */ mtctr r12
/* 802177F4 00214734  4E 80 04 21 */ bctrl
/* 802177F8 00214738  80 7F 03 14 */ lwz r3, 0x314(r31)
/* 802177FC 0021473C  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80217800 00214740  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80217804 00214744  C0 24 01 7C */ lfs f1, 0x17c(r4)
/* 80217808 00214748  C0 44 01 80 */ lfs f2, 0x180(r4)
/* 8021780C 0021474C  48 03 CD A5 */ bl paneTrans__8CPaneMgrFff
/* 80217810 00214750  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80217814 00214754  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80217818 00214758  C0 03 01 E0 */ lfs f0, 0x1e0(r3)
/* 8021781C 0021475C  80 7F 03 34 */ lwz r3, 0x334(r31)
/* 80217820 00214760  80 63 00 04 */ lwz r3, 4(r3)
/* 80217824 00214764  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80217828 00214768  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 8021782C 0021476C  81 83 00 00 */ lwz r12, 0(r3)
/* 80217830 00214770  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80217834 00214774  7D 89 03 A6 */ mtctr r12
/* 80217838 00214778  4E 80 04 21 */ bctrl
/* 8021783C 0021477C  80 7F 03 34 */ lwz r3, 0x334(r31)
/* 80217840 00214780  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80217844 00214784  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80217848 00214788  C0 24 01 D8 */ lfs f1, 0x1d8(r4)
/* 8021784C 0021478C  C0 1F 06 B4 */ lfs f0, 0x6b4(r31)
/* 80217850 00214790  EC 21 00 2A */ fadds f1, f1, f0
/* 80217854 00214794  C0 44 01 DC */ lfs f2, 0x1dc(r4)
/* 80217858 00214798  C0 1F 06 C0 */ lfs f0, 0x6c0(r31)
/* 8021785C 0021479C  EC 42 00 2A */ fadds f2, f2, f0
/* 80217860 002147A0  48 03 CD 51 */ bl paneTrans__8CPaneMgrFff
/* 80217864 002147A4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80217868 002147A8  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8021786C 002147AC  C0 03 02 A0 */ lfs f0, 0x2a0(r3)
/* 80217870 002147B0  80 7F 03 24 */ lwz r3, 0x324(r31)
/* 80217874 002147B4  80 63 00 04 */ lwz r3, 4(r3)
/* 80217878 002147B8  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8021787C 002147BC  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80217880 002147C0  81 83 00 00 */ lwz r12, 0(r3)
/* 80217884 002147C4  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80217888 002147C8  7D 89 03 A6 */ mtctr r12
/* 8021788C 002147CC  4E 80 04 21 */ bctrl
/* 80217890 002147D0  80 7F 03 24 */ lwz r3, 0x324(r31)
/* 80217894 002147D4  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80217898 002147D8  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8021789C 002147DC  C0 24 02 A4 */ lfs f1, 0x2a4(r4)
/* 802178A0 002147E0  C0 44 02 A8 */ lfs f2, 0x2a8(r4)
/* 802178A4 002147E4  48 03 CD 0D */ bl paneTrans__8CPaneMgrFff
/* 802178A8 002147E8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802178AC 002147EC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802178B0 002147F0  C0 03 03 2C */ lfs f0, 0x32c(r3)
/* 802178B4 002147F4  80 7F 03 5C */ lwz r3, 0x35c(r31)
/* 802178B8 002147F8  80 63 00 04 */ lwz r3, 4(r3)
/* 802178BC 002147FC  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 802178C0 00214800  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 802178C4 00214804  81 83 00 00 */ lwz r12, 0(r3)
/* 802178C8 00214808  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 802178CC 0021480C  7D 89 03 A6 */ mtctr r12
/* 802178D0 00214810  4E 80 04 21 */ bctrl
/* 802178D4 00214814  80 7F 03 5C */ lwz r3, 0x35c(r31)
/* 802178D8 00214818  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 802178DC 0021481C  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 802178E0 00214820  C0 24 03 30 */ lfs f1, 0x330(r4)
/* 802178E4 00214824  C0 44 03 34 */ lfs f2, 0x334(r4)
/* 802178E8 00214828  48 03 CC C9 */ bl paneTrans__8CPaneMgrFff
/* 802178EC 0021482C  39 61 00 20 */ addi r11, r1, 0x20
/* 802178F0 00214830  48 14 A9 35 */ bl _restgpr_28
/* 802178F4 00214834  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802178F8 00214838  7C 08 03 A6 */ mtlr r0
/* 802178FC 0021483C  38 21 00 20 */ addi r1, r1, 0x20
/* 80217900 00214840  4E 80 00 20 */ blr
