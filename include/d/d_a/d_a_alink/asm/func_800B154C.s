/* 800B154C 000AE48C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800B1550 000AE490  7C 08 02 A6 */ mflr r0
/* 800B1554 000AE494  90 01 00 34 */ stw r0, 0x34(r1)
/* 800B1558 000AE498  39 61 00 30 */ addi r11, r1, 0x30
/* 800B155C 000AE49C  48 2B 0C 81 */ bl _savegpr_29
/* 800B1560 000AE4A0  7C 7F 1B 78 */ mr r31, r3
/* 800B1564 000AE4A4  80 63 06 50 */ lwz r3, 0x650(r3)
/* 800B1568 000AE4A8  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800B156C 000AE4AC  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800B1570 000AE4B0  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800B1574 000AE4B4  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800B1578 000AE4B8  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800B157C 000AE4BC  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800B1580 000AE4C0  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800B1584 000AE4C4  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 800B1588 000AE4C8  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800B158C 000AE4CC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B1590 000AE4D0  41 82 00 14 */ beq lbl_800B15A4
/* 800B1594 000AE4D4  3C 60 00 03 */ lis r3, 0x00030023@ha
/* 800B1598 000AE4D8  3B C3 00 23 */ addi r30, r3, 0x00030023@l
/* 800B159C 000AE4DC  3B A3 00 22 */ addi r29, r3, 0x22
/* 800B15A0 000AE4E0  48 00 00 2C */ b lbl_800B15CC
lbl_800B15A4:
/* 800B15A4 000AE4E4  C0 1F 05 E4 */ lfs f0, 0x5e4(r31)
/* 800B15A8 000AE4E8  C0 3F 05 F0 */ lfs f1, 0x5f0(r31)
/* 800B15AC 000AE4EC  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B15B0 000AE4F0  40 80 00 08 */ bge lbl_800B15B8
/* 800B15B4 000AE4F4  48 00 00 08 */ b lbl_800B15BC
lbl_800B15B8:
/* 800B15B8 000AE4F8  FC 00 08 90 */ fmr f0, f1
lbl_800B15BC:
/* 800B15BC 000AE4FC  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800B15C0 000AE500  3C 60 00 03 */ lis r3, 0x0003001D@ha
/* 800B15C4 000AE504  3B C3 00 1D */ addi r30, r3, 0x0003001D@l
/* 800B15C8 000AE508  3B A3 00 1C */ addi r29, r3, 0x1c
lbl_800B15CC:
/* 800B15CC 000AE50C  38 61 00 14 */ addi r3, r1, 0x14
/* 800B15D0 000AE510  4B F6 C7 B5 */ bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 800B15D4 000AE514  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B15D8 000AE518  41 82 01 1C */ beq lbl_800B16F4
/* 800B15DC 000AE51C  C0 0D 87 58 */ lfs f0, lbl_80450CD8-_SDA_BASE_(r13)
/* 800B15E0 000AE520  D0 1F 33 B8 */ stfs f0, 0x33b8(r31)
/* 800B15E4 000AE524  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B15E8 000AE528  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B15EC 000AE52C  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800B15F0 000AE530  3C 80 80 3F */ lis r4, lbl_803F1D80@ha
/* 800B15F4 000AE534  38 84 1D 80 */ addi r4, r4, lbl_803F1D80@l
/* 800B15F8 000AE538  4B FC 38 59 */ bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800B15FC 000AE53C  98 7F 2F C5 */ stb r3, 0x2fc5(r31)
/* 800B1600 000AE540  3C 60 80 3F */ lis r3, lbl_803F1D80@ha
/* 800B1604 000AE544  38 63 1D 80 */ addi r3, r3, lbl_803F1D80@l
/* 800B1608 000AE548  48 0F 9F 95 */ bl dKy_pol_argument_get
/* 800B160C 000AE54C  98 7F 2F C6 */ stb r3, 0x2fc6(r31)
/* 800B1610 000AE550  88 1F 2F C5 */ lbz r0, 0x2fc5(r31)
/* 800B1614 000AE554  28 00 00 06 */ cmplwi r0, 6
/* 800B1618 000AE558  41 82 00 F4 */ beq lbl_800B170C
/* 800B161C 000AE55C  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800B1620 000AE560  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B1624 000AE564  41 82 00 C0 */ beq lbl_800B16E4
/* 800B1628 000AE568  C0 3F 33 B8 */ lfs f1, 0x33b8(r31)
/* 800B162C 000AE56C  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 800B1630 000AE570  D0 01 00 08 */ stfs f0, 8(r1)
/* 800B1634 000AE574  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 800B1638 000AE578  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 800B163C 000AE57C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800B1640 000AE580  C0 5F 33 BC */ lfs f2, 0x33bc(r31)
/* 800B1644 000AE584  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 800B1648 000AE588  40 80 00 24 */ bge lbl_800B166C
/* 800B164C 000AE58C  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800B1650 000AE590  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B1654 000AE594  4C 41 13 82 */ cror 2, 1, 2
/* 800B1658 000AE598  40 82 00 14 */ bne lbl_800B166C
/* 800B165C 000AE59C  7F E3 FB 78 */ mr r3, r31
/* 800B1660 000AE5A0  7F C4 F3 78 */ mr r4, r30
/* 800B1664 000AE5A4  48 00 DB 31 */ bl seStartMapInfo__9daAlink_cFUl
/* 800B1668 000AE5A8  48 00 00 38 */ b lbl_800B16A0
lbl_800B166C:
/* 800B166C 000AE5AC  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 800B1670 000AE5B0  40 81 00 30 */ ble lbl_800B16A0
/* 800B1674 000AE5B4  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800B1678 000AE5B8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B167C 000AE5BC  4C 40 13 82 */ cror 2, 0, 2
/* 800B1680 000AE5C0  40 82 00 20 */ bne lbl_800B16A0
/* 800B1684 000AE5C4  7F E3 FB 78 */ mr r3, r31
/* 800B1688 000AE5C8  7F A4 EB 78 */ mr r4, r29
/* 800B168C 000AE5CC  48 00 DB 09 */ bl seStartMapInfo__9daAlink_cFUl
/* 800B1690 000AE5D0  38 61 00 08 */ addi r3, r1, 8
/* 800B1694 000AE5D4  C0 3F 34 20 */ lfs f1, 0x3420(r31)
/* 800B1698 000AE5D8  38 80 00 00 */ li r4, 0
/* 800B169C 000AE5DC  4B F6 E1 E1 */ bl fopKyM_createWpillar__FPC4cXyzfi
lbl_800B16A0:
/* 800B16A0 000AE5E0  C0 3F 33 BC */ lfs f1, 0x33bc(r31)
/* 800B16A4 000AE5E4  C0 1F 33 B8 */ lfs f0, 0x33b8(r31)
/* 800B16A8 000AE5E8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B16AC 000AE5EC  40 80 00 38 */ bge lbl_800B16E4
/* 800B16B0 000AE5F0  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 800B16B4 000AE5F4  7C 09 07 74 */ extsb r9, r0
/* 800B16B8 000AE5F8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B16BC 000AE5FC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B16C0 000AE600  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800B16C4 000AE604  38 9F 31 A8 */ addi r4, r31, 0x31a8
/* 800B16C8 000AE608  3C A0 80 3F */ lis r5, lbl_803F1D80@ha
/* 800B16CC 000AE60C  38 A5 1D 80 */ addi r5, r5, lbl_803F1D80@l
/* 800B16D0 000AE610  38 C1 00 08 */ addi r6, r1, 8
/* 800B16D4 000AE614  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B16D8 000AE618  38 FF 01 0C */ addi r7, r31, 0x10c
/* 800B16DC 000AE61C  39 00 00 00 */ li r8, 0
/* 800B16E0 000AE620  4B F9 B1 59 */ bl setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
lbl_800B16E4:
/* 800B16E4 000AE624  7F E3 FB 78 */ mr r3, r31
/* 800B16E8 000AE628  C0 3F 33 B8 */ lfs f1, 0x33b8(r31)
/* 800B16EC 000AE62C  48 05 F0 D1 */ bl checkWaterInKandelaar__9daAlink_cFf
/* 800B16F0 000AE630  48 00 00 1C */ b lbl_800B170C
lbl_800B16F4:
/* 800B16F4 000AE634  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 800B16F8 000AE638  D0 1F 33 B8 */ stfs f0, 0x33b8(r31)
/* 800B16FC 000AE63C  38 00 00 10 */ li r0, 0x10
/* 800B1700 000AE640  98 1F 2F C5 */ stb r0, 0x2fc5(r31)
/* 800B1704 000AE644  38 00 00 00 */ li r0, 0
/* 800B1708 000AE648  98 1F 2F C6 */ stb r0, 0x2fc6(r31)
lbl_800B170C:
/* 800B170C 000AE64C  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800B1710 000AE650  D0 1F 33 BC */ stfs f0, 0x33bc(r31)
/* 800B1714 000AE654  39 61 00 30 */ addi r11, r1, 0x30
/* 800B1718 000AE658  48 2B 0B 11 */ bl _restgpr_29
/* 800B171C 000AE65C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800B1720 000AE660  7C 08 03 A6 */ mtlr r0
/* 800B1724 000AE664  38 21 00 30 */ addi r1, r1, 0x30
/* 800B1728 000AE668  4E 80 00 20 */ blr
