/* 800D57F8 000D2738  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D57FC 000D273C  7C 08 02 A6 */ mflr r0
/* 800D5800 000D2740  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D5804 000D2744  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D5808 000D2748  7C 7F 1B 78 */ mr r31, r3
/* 800D580C 000D274C  A8 03 30 0E */ lha r0, 0x300e(r3)
/* 800D5810 000D2750  2C 00 00 00 */ cmpwi r0, 0
/* 800D5814 000D2754  41 82 00 0C */ beq lbl_800D5820
/* 800D5818 000D2758  38 60 00 01 */ li r3, 1
/* 800D581C 000D275C  48 00 00 70 */ b lbl_800D588C
lbl_800D5820:
/* 800D5820 000D2760  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 800D5824 000D2764  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D5828 000D2768  41 82 00 24 */ beq lbl_800D584C
/* 800D582C 000D276C  C0 3F 04 FC */ lfs f1, 0x4fc(r31)
/* 800D5830 000D2770  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D5834 000D2774  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D5838 000D2778  4C 40 13 82 */ cror 2, 0, 2
/* 800D583C 000D277C  40 82 00 10 */ bne lbl_800D584C
/* 800D5840 000D2780  80 9F 28 10 */ lwz r4, 0x2810(r31)
/* 800D5844 000D2784  48 00 00 5D */ bl daAlink_c_NS_procCutDownLandInit
/* 800D5848 000D2788  48 00 00 40 */ b lbl_800D5888
lbl_800D584C:
/* 800D584C 000D278C  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800D5850 000D2790  48 08 8C 7D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800D5854 000D2794  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D5858 000D2798  41 82 00 30 */ beq lbl_800D5888
/* 800D585C 000D279C  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800D5860 000D27A0  2C 00 00 00 */ cmpwi r0, 0
/* 800D5864 000D27A4  40 82 00 24 */ bne lbl_800D5888
/* 800D5868 000D27A8  38 00 00 01 */ li r0, 1
/* 800D586C 000D27AC  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800D5870 000D27B0  7F E3 FB 78 */ mr r3, r31
/* 800D5874 000D27B4  38 80 00 79 */ li r4, 0x79
/* 800D5878 000D27B8  3C A0 80 39 */ lis r5, lbl_8038DD44@ha
/* 800D587C 000D27BC  38 A5 DD 44 */ addi r5, r5, lbl_8038DD44@l
/* 800D5880 000D27C0  38 A5 00 14 */ addi r5, r5, 0x14
/* 800D5884 000D27C4  4B FD 78 71 */ bl daAlink_c_NS_setSingleAnimeParam
lbl_800D5888:
/* 800D5888 000D27C8  38 60 00 01 */ li r3, 1
lbl_800D588C:
/* 800D588C 000D27CC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D5890 000D27D0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D5894 000D27D4  7C 08 03 A6 */ mtlr r0
/* 800D5898 000D27D8  38 21 00 10 */ addi r1, r1, 0x10
/* 800D589C 000D27DC  4E 80 00 20 */ blr