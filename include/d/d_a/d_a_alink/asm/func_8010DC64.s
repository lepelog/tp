/* 8010DC64 0010ABA4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8010DC68 0010ABA8  7C 08 02 A6 */ mflr r0
/* 8010DC6C 0010ABAC  90 01 00 24 */ stw r0, 0x24(r1)
/* 8010DC70 0010ABB0  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8010DC74 0010ABB4  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8010DC78 0010ABB8  7C 7E 1B 78 */ mr r30, r3
/* 8010DC7C 0010ABBC  38 00 00 00 */ li r0, 0
/* 8010DC80 0010ABC0  90 01 00 08 */ stw r0, 8(r1)
/* 8010DC84 0010ABC4  38 60 00 F2 */ li r3, 0xf2
/* 8010DC88 0010ABC8  38 80 00 00 */ li r4, 0
/* 8010DC8C 0010ABCC  38 BE 04 D0 */ addi r5, r30, 0x4d0
/* 8010DC90 0010ABD0  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 8010DC94 0010ABD4  7C 06 07 74 */ extsb r6, r0
/* 8010DC98 0010ABD8  38 FE 04 E4 */ addi r7, r30, 0x4e4
/* 8010DC9C 0010ABDC  39 00 00 00 */ li r8, 0
/* 8010DCA0 0010ABE0  39 20 FF FF */ li r9, -1
/* 8010DCA4 0010ABE4  39 40 00 00 */ li r10, 0
/* 8010DCA8 0010ABE8  4B F0 C1 5D */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8010DCAC 0010ABEC  7C 7F 1B 79 */ or. r31, r3, r3
/* 8010DCB0 0010ABF0  40 82 00 0C */ bne lbl_8010DCBC
/* 8010DCB4 0010ABF4  38 60 00 00 */ li r3, 0
/* 8010DCB8 0010ABF8  48 00 00 FC */ b lbl_8010DDB4
lbl_8010DCBC:
/* 8010DCBC 0010ABFC  7F C3 F3 78 */ mr r3, r30
/* 8010DCC0 0010AC00  38 80 00 A4 */ li r4, 0xa4
/* 8010DCC4 0010AC04  4B FB 42 A9 */ bl daAlink_c_NS_commonProcInit
/* 8010DCC8 0010AC08  38 7E 28 14 */ addi r3, r30, 0x2814
/* 8010DCCC 0010AC0C  7F E4 FB 78 */ mr r4, r31
/* 8010DCD0 0010AC10  48 05 0F E9 */ bl daPy_actorKeep_c_NS_setData
/* 8010DCD4 0010AC14  7F C3 F3 78 */ mr r3, r30
/* 8010DCD8 0010AC18  38 80 00 D7 */ li r4, 0xd7
/* 8010DCDC 0010AC1C  3C A0 80 39 */ lis r5, lbl_8038E11C@ha
/* 8010DCE0 0010AC20  38 C5 E1 1C */ addi r6, r5, lbl_8038E11C@l
/* 8010DCE4 0010AC24  C0 26 00 04 */ lfs f1, 4(r6)
/* 8010DCE8 0010AC28  C0 42 93 44 */ lfs f2, lbl_80452D44-_SDA2_BASE_(r2)
/* 8010DCEC 0010AC2C  A8 A6 00 00 */ lha r5, 0(r6)
/* 8010DCF0 0010AC30  C0 66 00 0C */ lfs f3, 0xc(r6)
/* 8010DCF4 0010AC34  4B F9 F3 19 */ bl daAlink_c_NS_setSingleAnime
/* 8010DCF8 0010AC38  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010DCFC 0010AC3C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8010DD00 0010AC40  7F C3 F3 78 */ mr r3, r30
/* 8010DD04 0010AC44  38 80 00 00 */ li r4, 0
/* 8010DD08 0010AC48  4B FD 48 79 */ bl daAlink_c_NS_setHeavyBoots
/* 8010DD0C 0010AC4C  C0 02 93 28 */ lfs f0, lbl_80452D28-_SDA2_BASE_(r2)
/* 8010DD10 0010AC50  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 8010DD14 0010AC54  7F C3 F3 78 */ mr r3, r30
/* 8010DD18 0010AC58  3C 80 00 01 */ lis r4, 0x00010005@ha
/* 8010DD1C 0010AC5C  38 84 00 05 */ addi r4, r4, 0x00010005@l
/* 8010DD20 0010AC60  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 8010DD24 0010AC64  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8010DD28 0010AC68  7D 89 03 A6 */ mtctr r12
/* 8010DD2C 0010AC6C  4E 80 04 21 */ bctrl
/* 8010DD30 0010AC70  7F C3 F3 78 */ mr r3, r30
/* 8010DD34 0010AC74  3C 80 00 02 */ lis r4, 0x00020076@ha
/* 8010DD38 0010AC78  38 84 00 76 */ addi r4, r4, 0x00020076@l
/* 8010DD3C 0010AC7C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 8010DD40 0010AC80  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8010DD44 0010AC84  7D 89 03 A6 */ mtctr r12
/* 8010DD48 0010AC88  4E 80 04 21 */ bctrl
/* 8010DD4C 0010AC8C  38 00 00 0F */ li r0, 0xf
/* 8010DD50 0010AC90  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8010DD54 0010AC94  7F C3 F3 78 */ mr r3, r30
/* 8010DD58 0010AC98  38 80 00 01 */ li r4, 1
/* 8010DD5C 0010AC9C  38 A0 00 01 */ li r5, 1
/* 8010DD60 0010ACA0  4B FB 35 7D */ bl daAlink_c_NS_deleteEquipItem
/* 8010DD64 0010ACA4  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8010DD68 0010ACA8  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8010DD6C 0010ACAC  3C 60 80 42 */ lis r3, lbl_80425514@ha
/* 8010DD70 0010ACB0  C4 03 55 14 */ lfsu f0, lbl_80425514@l(r3)
/* 8010DD74 0010ACB4  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 8010DD78 0010ACB8  C0 03 00 04 */ lfs f0, 4(r3)
/* 8010DD7C 0010ACBC  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 8010DD80 0010ACC0  C0 03 00 08 */ lfs f0, 8(r3)
/* 8010DD84 0010ACC4  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 8010DD88 0010ACC8  C0 1E 35 8C */ lfs f0, 0x358c(r30)
/* 8010DD8C 0010ACCC  D0 1E 33 B0 */ stfs f0, 0x33b0(r30)
/* 8010DD90 0010ACD0  C0 03 00 00 */ lfs f0, 0(r3)
/* 8010DD94 0010ACD4  D0 1E 34 D4 */ stfs f0, 0x34d4(r30)
/* 8010DD98 0010ACD8  C0 03 00 04 */ lfs f0, 4(r3)
/* 8010DD9C 0010ACDC  D0 1E 34 D8 */ stfs f0, 0x34d8(r30)
/* 8010DDA0 0010ACE0  C0 03 00 08 */ lfs f0, 8(r3)
/* 8010DDA4 0010ACE4  D0 1E 34 DC */ stfs f0, 0x34dc(r30)
/* 8010DDA8 0010ACE8  38 00 00 08 */ li r0, 8
/* 8010DDAC 0010ACEC  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8010DDB0 0010ACF0  38 60 00 01 */ li r3, 1
lbl_8010DDB4:
/* 8010DDB4 0010ACF4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8010DDB8 0010ACF8  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8010DDBC 0010ACFC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010DDC0 0010AD00  7C 08 03 A6 */ mtlr r0
/* 8010DDC4 0010AD04  38 21 00 20 */ addi r1, r1, 0x20
/* 8010DDC8 0010AD08  4E 80 00 20 */ blr