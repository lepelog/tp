/* 800DB060 000D7FA0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DB064 000D7FA4  7C 08 02 A6 */ mflr r0
/* 800DB068 000D7FA8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DB06C 000D7FAC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DB070 000D7FB0  93 C1 00 08 */ stw r30, 8(r1)
/* 800DB074 000D7FB4  7C 7E 1B 78 */ mr r30, r3
/* 800DB078 000D7FB8  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800DB07C 000D7FBC  80 03 31 98 */ lwz r0, 0x3198(r3)
/* 800DB080 000D7FC0  2C 00 00 00 */ cmpwi r0, 0
/* 800DB084 000D7FC4  41 82 00 58 */ beq lbl_800DB0DC
/* 800DB088 000D7FC8  7F E3 FB 78 */ mr r3, r31
/* 800DB08C 000D7FCC  48 08 34 41 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB090 000D7FD0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DB094 000D7FD4  41 82 00 14 */ beq lbl_800DB0A8
/* 800DB098 000D7FD8  7F C3 F3 78 */ mr r3, r30
/* 800DB09C 000D7FDC  38 80 00 00 */ li r4, 0
/* 800DB0A0 000D7FE0  4B FD F0 31 */ bl daAlink_c_NS_checkNextAction
/* 800DB0A4 000D7FE4  48 00 00 80 */ b lbl_800DB124
lbl_800DB0A8:
/* 800DB0A8 000D7FE8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800DB0AC 000D7FEC  3C 60 80 39 */ lis r3, lbl_8038E454@ha
/* 800DB0B0 000D7FF0  38 63 E4 54 */ addi r3, r3, lbl_8038E454@l
/* 800DB0B4 000D7FF4  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 800DB0B8 000D7FF8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DB0BC 000D7FFC  40 81 00 68 */ ble lbl_800DB124
/* 800DB0C0 000D8000  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DB0C4 000D8004  60 00 00 04 */ ori r0, r0, 4
/* 800DB0C8 000D8008  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800DB0CC 000D800C  7F C3 F3 78 */ mr r3, r30
/* 800DB0D0 000D8010  38 80 00 01 */ li r4, 1
/* 800DB0D4 000D8014  4B FD EF FD */ bl daAlink_c_NS_checkNextAction
/* 800DB0D8 000D8018  48 00 00 4C */ b lbl_800DB124
lbl_800DB0DC:
/* 800DB0DC 000D801C  7F E3 FB 78 */ mr r3, r31
/* 800DB0E0 000D8020  48 08 33 ED */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB0E4 000D8024  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DB0E8 000D8028  41 82 00 3C */ beq lbl_800DB124
/* 800DB0EC 000D802C  A8 7E 30 08 */ lha r3, 0x3008(r30)
/* 800DB0F0 000D8030  2C 03 00 00 */ cmpwi r3, 0
/* 800DB0F4 000D8034  40 81 00 10 */ ble lbl_800DB104
/* 800DB0F8 000D8038  38 03 FF FF */ addi r0, r3, -1
/* 800DB0FC 000D803C  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800DB100 000D8040  48 00 00 24 */ b lbl_800DB124
lbl_800DB104:
/* 800DB104 000D8044  7F C3 F3 78 */ mr r3, r30
/* 800DB108 000D8048  38 80 00 8D */ li r4, 0x8d
/* 800DB10C 000D804C  3C A0 80 39 */ lis r5, lbl_8038E454@ha
/* 800DB110 000D8050  38 A5 E4 54 */ addi r5, r5, lbl_8038E454@l
/* 800DB114 000D8054  38 A5 00 14 */ addi r5, r5, 0x14
/* 800DB118 000D8058  4B FD 1F DD */ bl daAlink_c_NS_setSingleAnimeParam
/* 800DB11C 000D805C  38 00 00 01 */ li r0, 1
/* 800DB120 000D8060  90 1E 31 98 */ stw r0, 0x3198(r30)
lbl_800DB124:
/* 800DB124 000D8064  38 60 00 01 */ li r3, 1
/* 800DB128 000D8068  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DB12C 000D806C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800DB130 000D8070  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DB134 000D8074  7C 08 03 A6 */ mtlr r0
/* 800DB138 000D8078  38 21 00 10 */ addi r1, r1, 0x10
/* 800DB13C 000D807C  4E 80 00 20 */ blr
