/* 800EA2A8 000E71E8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800EA2AC 000E71EC  7C 08 02 A6 */ mflr r0
/* 800EA2B0 000E71F0  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EA2B4 000E71F4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800EA2B8 000E71F8  7C 7F 1B 78 */ mr r31, r3
/* 800EA2BC 000E71FC  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800EA2C0 000E7200  28 00 00 FF */ cmplwi r0, 0xff
/* 800EA2C4 000E7204  41 82 00 14 */ beq lbl_800EA2D8
/* 800EA2C8 000E7208  38 80 00 C1 */ li r4, 0xc1
/* 800EA2CC 000E720C  80 BF 27 F4 */ lwz r5, 0x27f4(r31)
/* 800EA2D0 000E7210  4B FD 8B 0D */ bl daAlink_c_NS_procPreActionUnequipInit
/* 800EA2D4 000E7214  48 00 00 C4 */ b lbl_800EA398
lbl_800EA2D8:
/* 800EA2D8 000E7218  38 80 00 C1 */ li r4, 0xc1
/* 800EA2DC 000E721C  4B FD 7C 91 */ bl daAlink_c_NS_commonProcInit
/* 800EA2E0 000E7220  38 7F 28 0C */ addi r3, r31, 0x280c
/* 800EA2E4 000E7224  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800EA2E8 000E7228  48 07 49 D1 */ bl daPy_actorKeep_c_NS_setData
/* 800EA2EC 000E722C  7F E3 FB 78 */ mr r3, r31
/* 800EA2F0 000E7230  38 80 01 23 */ li r4, 0x123
/* 800EA2F4 000E7234  4B FC 2C 8D */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EA2F8 000E7238  80 7F 28 10 */ lwz r3, 0x2810(r31)
/* 800EA2FC 000E723C  A0 03 05 68 */ lhz r0, 0x568(r3)
/* 800EA300 000E7240  60 00 00 80 */ ori r0, r0, 0x80
/* 800EA304 000E7244  B0 03 05 68 */ sth r0, 0x568(r3)
/* 800EA308 000E7248  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EA30C 000E724C  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800EA310 000E7250  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 800EA314 000E7254  7F E4 FB 78 */ mr r4, r31
/* 800EA318 000E7258  4B F3 03 F9 */ bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800EA31C 000E725C  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800EA320 000E7260  A8 84 04 E6 */ lha r4, 0x4e6(r4)
/* 800EA324 000E7264  7C 04 18 50 */ subf r0, r4, r3
/* 800EA328 000E7268  7C 00 07 35 */ extsh. r0, r0
/* 800EA32C 000E726C  40 81 00 10 */ ble lbl_800EA33C
/* 800EA330 000E7270  38 04 C0 00 */ addi r0, r4, -16384
/* 800EA334 000E7274  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800EA338 000E7278  48 00 00 0C */ b lbl_800EA344
lbl_800EA33C:
/* 800EA33C 000E727C  38 04 40 00 */ addi r0, r4, 0x4000
/* 800EA340 000E7280  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
lbl_800EA344:
/* 800EA344 000E7284  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800EA348 000E7288  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EA34C 000E728C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800EA350 000E7290  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800EA354 000E7294  7C 04 04 2E */ lfsx f0, r4, r0
/* 800EA358 000E7298  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 800EA35C 000E729C  C0 23 04 D0 */ lfs f1, 0x4d0(r3)
/* 800EA360 000E72A0  C0 42 93 50 */ lfs f2, lbl_80452D50-_SDA2_BASE_(r2)
/* 800EA364 000E72A4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EA368 000E72A8  EC 01 00 28 */ fsubs f0, f1, f0
/* 800EA36C 000E72AC  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800EA370 000E72B0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800EA374 000E72B4  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EA378 000E72B8  7C 64 02 14 */ add r3, r4, r0
/* 800EA37C 000E72BC  C0 03 00 04 */ lfs f0, 4(r3)
/* 800EA380 000E72C0  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 800EA384 000E72C4  C0 23 04 D8 */ lfs f1, 0x4d8(r3)
/* 800EA388 000E72C8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EA38C 000E72CC  EC 01 00 28 */ fsubs f0, f1, f0
/* 800EA390 000E72D0  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 800EA394 000E72D4  38 60 00 01 */ li r3, 1
lbl_800EA398:
/* 800EA398 000E72D8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EA39C 000E72DC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800EA3A0 000E72E0  7C 08 03 A6 */ mtlr r0
/* 800EA3A4 000E72E4  38 21 00 10 */ addi r1, r1, 0x10
/* 800EA3A8 000E72E8  4E 80 00 20 */ blr