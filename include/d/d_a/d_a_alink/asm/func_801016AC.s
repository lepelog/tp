/* 801016AC 000FE5EC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801016B0 000FE5F0  7C 08 02 A6 */ mflr r0
/* 801016B4 000FE5F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 801016B8 000FE5F8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801016BC 000FE5FC  93 C1 00 08 */ stw r30, 8(r1)
/* 801016C0 000FE600  7C 7E 1B 78 */ mr r30, r3
/* 801016C4 000FE604  7C 9F 23 78 */ mr r31, r4
/* 801016C8 000FE608  38 80 00 8B */ li r4, 0x8b
/* 801016CC 000FE60C  4B FC 08 A1 */ bl daAlink_c_NS_commonProcInit
/* 801016D0 000FE610  7F C3 F3 78 */ mr r3, r30
/* 801016D4 000FE614  38 80 00 01 */ li r4, 1
/* 801016D8 000FE618  38 A0 00 00 */ li r5, 0
/* 801016DC 000FE61C  4B FB FC 01 */ bl daAlink_c_NS_deleteEquipItem
/* 801016E0 000FE620  7F C3 F3 78 */ mr r3, r30
/* 801016E4 000FE624  38 80 00 AE */ li r4, 0xae
/* 801016E8 000FE628  3C A0 80 39 */ lis r5, lbl_8038EBFC@ha
/* 801016EC 000FE62C  38 A5 EB FC */ addi r5, r5, lbl_8038EBFC@l
/* 801016F0 000FE630  4B FA BA 05 */ bl daAlink_c_NS_setSingleAnimeParam
/* 801016F4 000FE634  7F C3 F3 78 */ mr r3, r30
/* 801016F8 000FE638  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801016FC 000FE63C  C0 5E 05 34 */ lfs f2, 0x534(r30)
/* 80101700 000FE640  38 80 00 00 */ li r4, 0
/* 80101704 000FE644  4B FB A0 6D */ bl setSpecialGravity__9daAlink_cFffi
/* 80101708 000FE648  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010170C 000FE64C  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 80101710 000FE650  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 80101714 000FE654  38 7E 28 0C */ addi r3, r30, 0x280c
/* 80101718 000FE658  7F E4 FB 78 */ mr r4, r31
/* 8010171C 000FE65C  48 05 D5 9D */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80101720 000FE660  7F C3 F3 78 */ mr r3, r30
/* 80101724 000FE664  4B FF FF 19 */ bl daAlink_c_NS_setRoofHangSwitch
/* 80101728 000FE668  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8010172C 000FE66C  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 80101730 000FE670  48 16 F6 F5 */ bl cLib_distanceAngleS__Fss
/* 80101734 000FE674  2C 03 40 00 */ cmpwi r3, 0x4000
/* 80101738 000FE678  40 81 00 18 */ ble lbl_80101750
/* 8010173C 000FE67C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 80101740 000FE680  3C 63 00 01 */ addis r3, r3, 1
/* 80101744 000FE684  38 03 80 00 */ addi r0, r3, -32768
/* 80101748 000FE688  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8010174C 000FE68C  48 00 00 0C */ b lbl_80101758
lbl_80101750:
/* 80101750 000FE690  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80101754 000FE694  B0 1E 04 DE */ sth r0, 0x4de(r30)
lbl_80101758:
/* 80101758 000FE698  7F C3 F3 78 */ mr r3, r30
/* 8010175C 000FE69C  38 80 00 00 */ li r4, 0
/* 80101760 000FE6A0  A8 BE 04 E6 */ lha r5, 0x4e6(r30)
/* 80101764 000FE6A4  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 80101768 000FE6A8  7C 05 00 50 */ subf r0, r5, r0
/* 8010176C 000FE6AC  7C 05 07 34 */ extsh r5, r0
/* 80101770 000FE6B0  38 C0 00 00 */ li r6, 0
/* 80101774 000FE6B4  4B FA C4 05 */ bl daAlink_c_NS_setOldRootQuaternion
/* 80101778 000FE6B8  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 8010177C 000FE6BC  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 80101780 000FE6C0  38 00 00 50 */ li r0, 0x50
/* 80101784 000FE6C4  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 80101788 000FE6C8  38 00 00 00 */ li r0, 0
/* 8010178C 000FE6CC  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 80101790 000FE6D0  38 60 00 01 */ li r3, 1
/* 80101794 000FE6D4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101798 000FE6D8  83 C1 00 08 */ lwz r30, 8(r1)
/* 8010179C 000FE6DC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801017A0 000FE6E0  7C 08 03 A6 */ mtlr r0
/* 801017A4 000FE6E4  38 21 00 10 */ addi r1, r1, 0x10
/* 801017A8 000FE6E8  4E 80 00 20 */ blr