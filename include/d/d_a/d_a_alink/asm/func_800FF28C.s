/* 800FF28C 000FC1CC  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800FF290 000FC1D0  7C 08 02 A6 */ mflr r0
/* 800FF294 000FC1D4  90 01 00 64 */ stw r0, 0x64(r1)
/* 800FF298 000FC1D8  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 800FF29C 000FC1DC  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 800FF2A0 000FC1E0  DB C1 00 40 */ stfd f30, 0x40(r1)
/* 800FF2A4 000FC1E4  F3 C1 00 48 */ psq_st f30, 72(r1), 0, 0
/* 800FF2A8 000FC1E8  DB A1 00 30 */ stfd f29, 0x30(r1)
/* 800FF2AC 000FC1EC  F3 A1 00 38 */ psq_st f29, 56(r1), 0, 0
/* 800FF2B0 000FC1F0  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800FF2B4 000FC1F4  7C 7F 1B 78 */ mr r31, r3
/* 800FF2B8 000FC1F8  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800FF2BC 000FC1FC  28 00 00 C6 */ cmplwi r0, 0xc6
/* 800FF2C0 000FC200  40 82 01 3C */ bne lbl_800FF3FC
/* 800FF2C4 000FC204  C0 1F 37 F0 */ lfs f0, 0x37f0(r31)
/* 800FF2C8 000FC208  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800FF2CC 000FC20C  38 7F 1D 08 */ addi r3, r31, 0x1d08
/* 800FF2D0 000FC210  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 800FF2D4 000FC214  48 16 8A 55 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FF2D8 000FC218  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FF2DC 000FC21C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FF2E0 000FC220  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800FF2E4 000FC224  38 9F 1D 08 */ addi r4, r31, 0x1d08
/* 800FF2E8 000FC228  4B F7 51 B9 */ bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FF2EC 000FC22C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 800FF2F0 000FC230  C0 5F 05 98 */ lfs f2, 0x598(r31)
/* 800FF2F4 000FC234  EC 00 10 28 */ fsubs f0, f0, f2
/* 800FF2F8 000FC238  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FF2FC 000FC23C  40 80 00 0C */ bge lbl_800FF308
/* 800FF300 000FC240  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800FF304 000FC244  48 00 00 18 */ b lbl_800FF31C
lbl_800FF308:
/* 800FF308 000FC248  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FF30C 000FC24C  EC 00 08 2A */ fadds f0, f0, f1
/* 800FF310 000FC250  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800FF314 000FC254  38 60 00 00 */ li r3, 0
/* 800FF318 000FC258  48 00 01 0C */ b lbl_800FF424
lbl_800FF31C:
/* 800FF31C 000FC25C  A8 1F 30 6E */ lha r0, 0x306e(r31)
/* 800FF320 000FC260  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FF324 000FC264  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FF328 000FC268  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FF32C 000FC26C  7C C3 04 2E */ lfsx f6, r3, r0
/* 800FF330 000FC270  7C 63 02 14 */ add r3, r3, r0
/* 800FF334 000FC274  C0 E3 00 04 */ lfs f7, 4(r3)
/* 800FF338 000FC278  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FF33C 000FC27C  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800FF340 000FC280  EC 01 00 2A */ fadds f0, f1, f0
/* 800FF344 000FC284  C0 42 93 B4 */ lfs f2, lbl_80452DB4-_SDA2_BASE_(r2)
/* 800FF348 000FC288  EF E0 10 28 */ fsubs f31, f0, f2
/* 800FF34C 000FC28C  C0 7F 37 F4 */ lfs f3, 0x37f4(r31)
/* 800FF350 000FC290  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800FF354 000FC294  EC 01 01 F2 */ fmuls f0, f1, f7
/* 800FF358 000FC298  EC A3 00 2A */ fadds f5, f3, f0
/* 800FF35C 000FC29C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 800FF360 000FC2A0  EC 82 00 2A */ fadds f4, f2, f0
/* 800FF364 000FC2A4  C0 5F 37 EC */ lfs f2, 0x37ec(r31)
/* 800FF368 000FC2A8  EC 01 01 B2 */ fmuls f0, f1, f6
/* 800FF36C 000FC2AC  EC 02 00 2A */ fadds f0, f2, f0
/* 800FF370 000FC2B0  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800FF374 000FC2B4  D0 81 00 18 */ stfs f4, 0x18(r1)
/* 800FF378 000FC2B8  D0 A1 00 1C */ stfs f5, 0x1c(r1)
/* 800FF37C 000FC2BC  C0 22 93 68 */ lfs f1, lbl_80452D68-_SDA2_BASE_(r2)
/* 800FF380 000FC2C0  EC 01 01 F2 */ fmuls f0, f1, f7
/* 800FF384 000FC2C4  EC 63 00 28 */ fsubs f3, f3, f0
/* 800FF388 000FC2C8  EC 01 01 B2 */ fmuls f0, f1, f6
/* 800FF38C 000FC2CC  EC 02 00 28 */ fsubs f0, f2, f0
/* 800FF390 000FC2D0  D0 01 00 08 */ stfs f0, 8(r1)
/* 800FF394 000FC2D4  D0 81 00 0C */ stfs f4, 0xc(r1)
/* 800FF398 000FC2D8  D0 61 00 10 */ stfs f3, 0x10(r1)
/* 800FF39C 000FC2DC  C3 A2 92 C0 */ lfs f29, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FF3A0 000FC2E0  C3 C2 94 64 */ lfs f30, lbl_80452E64-_SDA2_BASE_(r2)
/* 800FF3A4 000FC2E4  48 00 00 44 */ b lbl_800FF3E8
lbl_800FF3A8:
/* 800FF3A8 000FC2E8  7F E3 FB 78 */ mr r3, r31
/* 800FF3AC 000FC2EC  38 81 00 14 */ addi r4, r1, 0x14
/* 800FF3B0 000FC2F0  38 A1 00 08 */ addi r5, r1, 8
/* 800FF3B4 000FC2F4  4B FA 2D E5 */ bl daAlink_c_NS_commonLineCheck
/* 800FF3B8 000FC2F8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FF3BC 000FC2FC  41 82 00 18 */ beq lbl_800FF3D4
/* 800FF3C0 000FC300  7F E3 FB 78 */ mr r3, r31
/* 800FF3C4 000FC304  38 9F 1B 5C */ addi r4, r31, 0x1b5c
/* 800FF3C8 000FC308  4B FF EC 91 */ bl daAlink_c_NS_checkClimbCode
/* 800FF3CC 000FC30C  2C 03 00 00 */ cmpwi r3, 0
/* 800FF3D0 000FC310  40 82 00 20 */ bne lbl_800FF3F0
lbl_800FF3D4:
/* 800FF3D4 000FC314  EF BD F0 2A */ fadds f29, f29, f30
/* 800FF3D8 000FC318  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800FF3DC 000FC31C  EC 00 F0 2A */ fadds f0, f0, f30
/* 800FF3E0 000FC320  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800FF3E4 000FC324  D0 01 00 0C */ stfs f0, 0xc(r1)
lbl_800FF3E8:
/* 800FF3E8 000FC328  FC 1D F8 40 */ fcmpo cr0, f29, f31
/* 800FF3EC 000FC32C  41 80 FF BC */ blt lbl_800FF3A8
lbl_800FF3F0:
/* 800FF3F0 000FC330  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 800FF3F4 000FC334  EC 00 E8 2A */ fadds f0, f0, f29
/* 800FF3F8 000FC338  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
lbl_800FF3FC:
/* 800FF3FC 000FC33C  7F E3 FB 78 */ mr r3, r31
/* 800FF400 000FC340  38 80 00 01 */ li r4, 1
/* 800FF404 000FC344  38 A0 00 00 */ li r5, 0
/* 800FF408 000FC348  4B FC 1E D5 */ bl daAlink_c_NS_deleteEquipItem
/* 800FF40C 000FC34C  38 00 00 00 */ li r0, 0
/* 800FF410 000FC350  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 800FF414 000FC354  7F E3 FB 78 */ mr r3, r31
/* 800FF418 000FC358  38 80 00 00 */ li r4, 0
/* 800FF41C 000FC35C  48 00 00 35 */ bl daAlink_c_NS_procClimbUpStartInit
/* 800FF420 000FC360  38 60 00 01 */ li r3, 1
lbl_800FF424:
/* 800FF424 000FC364  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 800FF428 000FC368  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 800FF42C 000FC36C  E3 C1 00 48 */ psq_l f30, 72(r1), 0, 0
/* 800FF430 000FC370  CB C1 00 40 */ lfd f30, 0x40(r1)
/* 800FF434 000FC374  E3 A1 00 38 */ psq_l f29, 56(r1), 0, 0
/* 800FF438 000FC378  CB A1 00 30 */ lfd f29, 0x30(r1)
/* 800FF43C 000FC37C  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800FF440 000FC380  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800FF444 000FC384  7C 08 03 A6 */ mtlr r0
/* 800FF448 000FC388  38 21 00 60 */ addi r1, r1, 0x60
/* 800FF44C 000FC38C  4E 80 00 20 */ blr
