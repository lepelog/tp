/* 801017AC 000FE6EC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801017B0 000FE6F0  7C 08 02 A6 */ mflr r0
/* 801017B4 000FE6F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 801017B8 000FE6F8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801017BC 000FE6FC  7C 7F 1B 78 */ mr r31, r3
/* 801017C0 000FE700  80 03 28 10 */ lwz r0, 0x2810(r3)
/* 801017C4 000FE704  28 00 00 00 */ cmplwi r0, 0
/* 801017C8 000FE708  40 82 00 1C */ bne lbl_801017E4
/* 801017CC 000FE70C  38 80 00 01 */ li r4, 1
/* 801017D0 000FE710  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 801017D4 000FE714  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 801017D8 000FE718  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 801017DC 000FE71C  4B FC 52 6D */ bl daAlink_c_NS_procFallInit
/* 801017E0 000FE720  48 00 00 80 */ b lbl_80101860
lbl_801017E4:
/* 801017E4 000FE724  4B FF FE 59 */ bl daAlink_c_NS_setRoofHangSwitch
/* 801017E8 000FE728  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 801017EC 000FE72C  48 05 CC E1 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801017F0 000FE730  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801017F4 000FE734  41 82 00 2C */ beq lbl_80101820
/* 801017F8 000FE738  7F E3 FB 78 */ mr r3, r31
/* 801017FC 000FE73C  38 80 00 A9 */ li r4, 0xa9
/* 80101800 000FE740  3C A0 80 39 */ lis r5, lbl_8038EBFC@ha
/* 80101804 000FE744  38 A5 EB FC */ addi r5, r5, lbl_8038EBFC@l
/* 80101808 000FE748  C0 25 00 1C */ lfs f1, 0x1c(r5)
/* 8010180C 000FE74C  C0 45 00 20 */ lfs f2, 0x20(r5)
/* 80101810 000FE750  4B FA B7 D1 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 80101814 000FE754  38 00 00 01 */ li r0, 1
/* 80101818 000FE758  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8010181C 000FE75C  48 00 00 40 */ b lbl_8010185C
lbl_80101820:
/* 80101820 000FE760  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 80101824 000FE764  2C 00 00 00 */ cmpwi r0, 0
/* 80101828 000FE768  41 82 00 34 */ beq lbl_8010185C
/* 8010182C 000FE76C  7F E3 FB 78 */ mr r3, r31
/* 80101830 000FE770  38 80 00 33 */ li r4, 0x33
/* 80101834 000FE774  4B FB 1A 1D */ bl setDoStatus__9daAlink_cFUc
/* 80101838 000FE778  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 8010183C 000FE77C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80101840 000FE780  41 82 00 1C */ beq lbl_8010185C
/* 80101844 000FE784  7F E3 FB 78 */ mr r3, r31
/* 80101848 000FE788  38 80 00 01 */ li r4, 1
/* 8010184C 000FE78C  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 80101850 000FE790  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 80101854 000FE794  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 80101858 000FE798  4B FC 51 F1 */ bl daAlink_c_NS_procFallInit
lbl_8010185C:
/* 8010185C 000FE79C  38 60 00 01 */ li r3, 1
lbl_80101860:
/* 80101860 000FE7A0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101864 000FE7A4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80101868 000FE7A8  7C 08 03 A6 */ mtlr r0
/* 8010186C 000FE7AC  38 21 00 10 */ addi r1, r1, 0x10
/* 80101870 000FE7B0  4E 80 00 20 */ blr
