/* 8012C1F4 00129134  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8012C1F8 00129138  7C 08 02 A6 */ mflr r0
/* 8012C1FC 0012913C  90 01 00 44 */ stw r0, 0x44(r1)
/* 8012C200 00129140  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 8012C204 00129144  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 8012C208 00129148  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8012C20C 0012914C  7C 7F 1B 78 */ mr r31, r3
/* 8012C210 00129150  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 8012C214 00129154  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 8012C218 00129158  90 01 00 18 */ stw r0, 0x18(r1)
/* 8012C21C 0012915C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012C220 00129160  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012C224 00129164  38 63 0F 38 */ addi r3, r3, 0xf38
/* 8012C228 00129168  38 9F 1A 60 */ addi r4, r31, 0x1a60
/* 8012C22C 0012916C  38 A1 00 08 */ addi r5, r1, 8
/* 8012C230 00129170  4B F4 85 15 */ bl cBgS_NS_GetTriPla
/* 8012C234 00129174  38 61 00 08 */ addi r3, r1, 8
/* 8012C238 00129178  48 13 AE F1 */ bl atan2sX_Z__4cXyzCFv
/* 8012C23C 0012917C  B0 7F 04 DE */ sth r3, 0x4de(r31)
/* 8012C240 00129180  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012C244 00129184  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8012C248 00129188  EF E1 00 28 */ fsubs f31, f1, f0
/* 8012C24C 0012918C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012C250 00129190  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8012C254 00129194  40 81 00 0C */ ble lbl_8012C260
/* 8012C258 00129198  FC 00 F8 34 */ frsqrte f0, f31
/* 8012C25C 0012919C  EF E0 07 F2 */ fmuls f31, f0, f31
lbl_8012C260:
/* 8012C260 001291A0  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 8012C264 001291A4  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8012C268 001291A8  7C 03 00 50 */ subf r0, r3, r0
/* 8012C26C 001291AC  7C 03 07 34 */ extsh r3, r0
/* 8012C270 001291B0  48 23 8E 61 */ bl func_803650D0
/* 8012C274 001291B4  2C 03 40 00 */ cmpwi r3, 0x4000
/* 8012C278 001291B8  41 80 00 14 */ blt lbl_8012C28C
/* 8012C27C 001291BC  38 00 00 01 */ li r0, 1
/* 8012C280 001291C0  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8012C284 001291C4  C0 82 97 58 */ lfs f4, lbl_80453158-_SDA2_BASE_(r2)
/* 8012C288 001291C8  48 00 00 10 */ b lbl_8012C298
lbl_8012C28C:
/* 8012C28C 001291CC  38 00 00 00 */ li r0, 0
/* 8012C290 001291D0  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8012C294 001291D4  C0 82 93 B8 */ lfs f4, lbl_80452DB8-_SDA2_BASE_(r2)
lbl_8012C298:
/* 8012C298 001291D8  C0 3F 04 D8 */ lfs f1, 0x4d8(r31)
/* 8012C29C 001291DC  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8012C2A0 001291E0  EC 04 00 32 */ fmuls f0, f4, f0
/* 8012C2A4 001291E4  EC 1F 00 32 */ fmuls f0, f31, f0
/* 8012C2A8 001291E8  EC 61 00 2A */ fadds f3, f1, f0
/* 8012C2AC 001291EC  C0 3F 05 3C */ lfs f1, 0x53c(r31)
/* 8012C2B0 001291F0  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8012C2B4 001291F4  EC 04 00 32 */ fmuls f0, f4, f0
/* 8012C2B8 001291F8  EC 41 00 28 */ fsubs f2, f1, f0
/* 8012C2BC 001291FC  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 8012C2C0 00129200  C0 01 00 08 */ lfs f0, 8(r1)
/* 8012C2C4 00129204  EC 04 00 32 */ fmuls f0, f4, f0
/* 8012C2C8 00129208  EC 1F 00 32 */ fmuls f0, f31, f0
/* 8012C2CC 0012920C  EC 01 00 2A */ fadds f0, f1, f0
/* 8012C2D0 00129210  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 8012C2D4 00129214  D0 5F 37 CC */ stfs f2, 0x37cc(r31)
/* 8012C2D8 00129218  D0 7F 37 D0 */ stfs f3, 0x37d0(r31)
/* 8012C2DC 0012921C  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 8012C2E0 00129220  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 8012C2E4 00129224  90 01 00 18 */ stw r0, 0x18(r1)
/* 8012C2E8 00129228  FC 20 F8 90 */ fmr f1, f31
/* 8012C2EC 0012922C  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 8012C2F0 00129230  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 8012C2F4 00129234  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8012C2F8 00129238  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8012C2FC 0012923C  7C 08 03 A6 */ mtlr r0
/* 8012C300 00129240  38 21 00 40 */ addi r1, r1, 0x40
/* 8012C304 00129244  4E 80 00 20 */ blr
