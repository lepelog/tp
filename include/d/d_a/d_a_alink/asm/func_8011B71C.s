/* 8011B71C 0011865C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011B720 00118660  7C 08 02 A6 */ mflr r0
/* 8011B724 00118664  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011B728 00118668  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011B72C 0011866C  93 C1 00 08 */ stw r30, 8(r1)
/* 8011B730 00118670  7C 7F 1B 78 */ mr r31, r3
/* 8011B734 00118674  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 8011B738 00118678  80 03 31 98 */ lwz r0, 0x3198(r3)
/* 8011B73C 0011867C  2C 00 00 00 */ cmpwi r0, 0
/* 8011B740 00118680  40 82 00 98 */ bne lbl_8011B7D8
/* 8011B744 00118684  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8011B748 00118688  2C 00 00 00 */ cmpwi r0, 0
/* 8011B74C 0011868C  40 82 00 48 */ bne lbl_8011B794
/* 8011B750 00118690  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 8011B754 00118694  2C 00 00 00 */ cmpwi r0, 0
/* 8011B758 00118698  41 82 00 3C */ beq lbl_8011B794
/* 8011B75C 0011869C  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 8011B760 001186A0  C0 02 93 34 */ lfs f0, lbl_80452D34-_SDA2_BASE_(r2)
/* 8011B764 001186A4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011B768 001186A8  4C 41 13 82 */ cror 2, 1, 2
/* 8011B76C 001186AC  40 82 00 1C */ bne lbl_8011B788
/* 8011B770 001186B0  C0 1F 34 7C */ lfs f0, 0x347c(r31)
/* 8011B774 001186B4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011B778 001186B8  40 80 00 10 */ bge lbl_8011B788
/* 8011B77C 001186BC  38 00 00 03 */ li r0, 3
/* 8011B780 001186C0  98 1F 2F 92 */ stb r0, 0x2f92(r31)
/* 8011B784 001186C4  48 00 00 54 */ b lbl_8011B7D8
lbl_8011B788:
/* 8011B788 001186C8  38 00 00 04 */ li r0, 4
/* 8011B78C 001186CC  98 1F 2F 92 */ stb r0, 0x2f92(r31)
/* 8011B790 001186D0  48 00 00 48 */ b lbl_8011B7D8
lbl_8011B794:
/* 8011B794 001186D4  7F C3 F3 78 */ mr r3, r30
/* 8011B798 001186D8  C0 22 93 C0 */ lfs f1, lbl_80452DC0-_SDA2_BASE_(r2)
/* 8011B79C 001186DC  48 20 CC 91 */ bl checkPass__12J3DFrameCtrlFf
/* 8011B7A0 001186E0  2C 03 00 00 */ cmpwi r3, 0
/* 8011B7A4 001186E4  41 82 00 34 */ beq lbl_8011B7D8
/* 8011B7A8 001186E8  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 8011B7AC 001186EC  2C 00 00 00 */ cmpwi r0, 0
/* 8011B7B0 001186F0  41 82 00 28 */ beq lbl_8011B7D8
/* 8011B7B4 001186F4  7F E3 FB 78 */ mr r3, r31
/* 8011B7B8 001186F8  3C 80 00 01 */ lis r4, 0x00010013@ha
/* 8011B7BC 001186FC  38 84 00 13 */ addi r4, r4, 0x00010013@l
/* 8011B7C0 00118700  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8011B7C4 00118704  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8011B7C8 00118708  7D 89 03 A6 */ mtctr r12
/* 8011B7CC 0011870C  4E 80 04 21 */ bctrl
/* 8011B7D0 00118710  38 00 00 00 */ li r0, 0
/* 8011B7D4 00118714  B0 1F 30 0E */ sth r0, 0x300e(r31)
lbl_8011B7D8:
/* 8011B7D8 00118718  7F C3 F3 78 */ mr r3, r30
/* 8011B7DC 0011871C  48 04 2C F1 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011B7E0 00118720  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011B7E4 00118724  41 82 00 C4 */ beq lbl_8011B8A8
/* 8011B7E8 00118728  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 8011B7EC 0011872C  2C 00 00 00 */ cmpwi r0, 0
/* 8011B7F0 00118730  41 82 00 50 */ beq lbl_8011B840
/* 8011B7F4 00118734  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 8011B7F8 00118738  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 8011B7FC 0011873C  3B C0 00 EA */ li r30, 0xea
/* 8011B800 00118740  41 82 00 08 */ beq lbl_8011B808
/* 8011B804 00118744  3B C0 00 EB */ li r30, 0xeb
lbl_8011B808:
/* 8011B808 00118748  7F E3 FB 78 */ mr r3, r31
/* 8011B80C 0011874C  3C 80 00 08 */ lis r4, 0x00080023@ha
/* 8011B810 00118750  38 84 00 23 */ addi r4, r4, 0x00080023@l
/* 8011B814 00118754  4B FA 39 81 */ bl seStartMapInfo__9daAlink_cFUl
/* 8011B818 00118758  7F E3 FB 78 */ mr r3, r31
/* 8011B81C 0011875C  7F C4 F3 78 */ mr r4, r30
/* 8011B820 00118760  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011B824 00118764  4B F9 17 8D */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMMorf
/* 8011B828 00118768  38 60 00 00 */ li r3, 0
/* 8011B82C 0011876C  B0 7F 30 08 */ sth r3, 0x3008(r31)
/* 8011B830 00118770  38 00 00 05 */ li r0, 5
/* 8011B834 00118774  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8011B838 00118778  B0 7F 30 10 */ sth r3, 0x3010(r31)
/* 8011B83C 0011877C  48 00 00 BC */ b lbl_8011B8F8
lbl_8011B840:
/* 8011B840 00118780  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8011B844 00118784  54 00 07 B8 */ rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011B848 00118788  90 1F 19 9C */ stw r0, 0x199c(r31)
/* 8011B84C 0011878C  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8011B850 00118790  54 00 04 A0 */ rlwinm r0, r0, 0, 0x12, 0x10
/* 8011B854 00118794  90 1F 19 9C */ stw r0, 0x199c(r31)
/* 8011B858 00118798  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011B85C 0011879C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011B860 001187A0  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8011B864 001187A4  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011B868 001187A8  4B F2 C9 15 */ bl cutEnd__16dEvent_manager_cFi
/* 8011B86C 001187AC  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8011B870 001187B0  60 00 00 01 */ ori r0, r0, 1
/* 8011B874 001187B4  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 8011B878 001187B8  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8011B87C 001187BC  54 00 04 A0 */ rlwinm r0, r0, 0, 0x12, 0x10
/* 8011B880 001187C0  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 8011B884 001187C4  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8011B888 001187C8  2C 00 00 00 */ cmpwi r0, 0
/* 8011B88C 001187CC  40 82 00 10 */ bne lbl_8011B89C
/* 8011B890 001187D0  7F E3 FB 78 */ mr r3, r31
/* 8011B894 001187D4  C0 3F 34 78 */ lfs f1, 0x3478(r31)
/* 8011B898 001187D8  4B F9 25 7D */ bl setBlendMoveAnime__9daAlink_cFf
lbl_8011B89C:
/* 8011B89C 001187DC  38 00 00 01 */ li r0, 1
/* 8011B8A0 001187E0  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 8011B8A4 001187E4  48 00 00 54 */ b lbl_8011B8F8
lbl_8011B8A8:
/* 8011B8A8 001187E8  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 8011B8AC 001187EC  2C 00 00 00 */ cmpwi r0, 0
/* 8011B8B0 001187F0  40 82 00 34 */ bne lbl_8011B8E4
/* 8011B8B4 001187F4  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8011B8B8 001187F8  2C 00 00 00 */ cmpwi r0, 0
/* 8011B8BC 001187FC  40 82 00 3C */ bne lbl_8011B8F8
/* 8011B8C0 00118800  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 8011B8C4 00118804  2C 00 00 00 */ cmpwi r0, 0
/* 8011B8C8 00118808  40 82 00 10 */ bne lbl_8011B8D8
/* 8011B8CC 0011880C  38 00 00 01 */ li r0, 1
/* 8011B8D0 00118810  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 8011B8D4 00118814  48 00 00 24 */ b lbl_8011B8F8
lbl_8011B8D8:
/* 8011B8D8 00118818  38 00 00 05 */ li r0, 5
/* 8011B8DC 0011881C  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8011B8E0 00118820  48 00 00 18 */ b lbl_8011B8F8
lbl_8011B8E4:
/* 8011B8E4 00118824  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011B8E8 00118828  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011B8EC 0011882C  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8011B8F0 00118830  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011B8F4 00118834  4B F2 C8 89 */ bl cutEnd__16dEvent_manager_cFi
lbl_8011B8F8:
/* 8011B8F8 00118838  38 60 00 01 */ li r3, 1
/* 8011B8FC 0011883C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011B900 00118840  83 C1 00 08 */ lwz r30, 8(r1)
/* 8011B904 00118844  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011B908 00118848  7C 08 03 A6 */ mtlr r0
/* 8011B90C 0011884C  38 21 00 10 */ addi r1, r1, 0x10
/* 8011B910 00118850  4E 80 00 20 */ blr
