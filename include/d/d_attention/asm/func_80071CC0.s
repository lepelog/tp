/* 80071CC0 0006EC00  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80071CC4 0006EC04  7C 08 02 A6 */ mflr r0
/* 80071CC8 0006EC08  90 01 00 14 */ stw r0, 0x14(r1)
/* 80071CCC 0006EC0C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80071CD0 0006EC10  7C 9F 23 78 */ mr r31, r4
/* 80071CD4 0006EC14  80 63 00 00 */ lwz r3, 0(r3)
/* 80071CD8 0006EC18  7C 1F 18 40 */ cmplw r31, r3
/* 80071CDC 0006EC1C  41 82 00 0C */ beq lbl_80071CE8
/* 80071CE0 0006EC20  28 03 00 00 */ cmplwi r3, 0
/* 80071CE4 0006EC24  40 82 00 0C */ bne lbl_80071CF0
lbl_80071CE8:
/* 80071CE8 0006EC28  C0 22 8C 90 */ lfs f1, lbl_80452690-_SDA2_BASE_(r2)
/* 80071CEC 0006EC2C  48 00 00 6C */ b lbl_80071D58
lbl_80071CF0:
/* 80071CF0 0006EC30  A8 1F 00 0E */ lha r0, 0xe(r31)
/* 80071CF4 0006EC34  2C 00 00 FD */ cmpwi r0, 0xfd
/* 80071CF8 0006EC38  40 82 00 0C */ bne lbl_80071D04
/* 80071CFC 0006EC3C  C0 22 8C 90 */ lfs f1, lbl_80452690-_SDA2_BASE_(r2)
/* 80071D00 0006EC40  48 00 00 58 */ b lbl_80071D58
lbl_80071D04:
/* 80071D04 0006EC44  80 9F 05 5C */ lwz r4, 0x55c(r31)
/* 80071D08 0006EC48  54 80 07 7B */ rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80071D0C 0006EC4C  40 82 00 14 */ bne lbl_80071D20
/* 80071D10 0006EC50  54 80 01 4B */ rlwinm. r0, r4, 0, 5, 5
/* 80071D14 0006EC54  40 82 00 0C */ bne lbl_80071D20
/* 80071D18 0006EC58  C0 22 8C 90 */ lfs f1, lbl_80452690-_SDA2_BASE_(r2)
/* 80071D1C 0006EC5C  48 00 00 3C */ b lbl_80071D58
lbl_80071D20:
/* 80071D20 0006EC60  7F E4 FB 78 */ mr r4, r31
/* 80071D24 0006EC64  4B FA 8A BD */ bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80071D28 0006EC68  88 1F 05 46 */ lbz r0, 0x546(r31)
/* 80071D2C 0006EC6C  1C 00 00 1C */ mulli r0, r0, 0x1c
/* 80071D30 0006EC70  3C 60 80 3B */ lis r3, lbl_803A9C70@ha
/* 80071D34 0006EC74  38 63 9C 70 */ addi r3, r3, lbl_803A9C70@l
/* 80071D38 0006EC78  7C 43 04 2E */ lfsx f2, r3, r0
/* 80071D3C 0006EC7C  7C 63 02 14 */ add r3, r3, r0
/* 80071D40 0006EC80  C0 03 00 08 */ lfs f0, 8(r3)
/* 80071D44 0006EC84  EC 02 00 2A */ fadds f0, f2, f0
/* 80071D48 0006EC88  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80071D4C 0006EC8C  40 80 00 08 */ bge lbl_80071D54
/* 80071D50 0006EC90  48 00 00 08 */ b lbl_80071D58
lbl_80071D54:
/* 80071D54 0006EC94  C0 22 8C 90 */ lfs f1, lbl_80452690-_SDA2_BASE_(r2)
lbl_80071D58:
/* 80071D58 0006EC98  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80071D5C 0006EC9C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80071D60 0006ECA0  7C 08 03 A6 */ mtlr r0
/* 80071D64 0006ECA4  38 21 00 10 */ addi r1, r1, 0x10
/* 80071D68 0006ECA8  4E 80 00 20 */ blr