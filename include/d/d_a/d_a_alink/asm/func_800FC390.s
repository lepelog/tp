/* 800FC390 000F92D0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800FC394 000F92D4  7C 08 02 A6 */ mflr r0
/* 800FC398 000F92D8  90 01 00 24 */ stw r0, 0x24(r1)
/* 800FC39C 000F92DC  39 61 00 20 */ addi r11, r1, 0x20
/* 800FC3A0 000F92E0  48 26 5E 3D */ bl _savegpr_29
/* 800FC3A4 000F92E4  7C 7F 1B 78 */ mr r31, r3
/* 800FC3A8 000F92E8  83 C3 28 10 */ lwz r30, 0x2810(r3)
/* 800FC3AC 000F92EC  28 1E 00 00 */ cmplwi r30, 0
/* 800FC3B0 000F92F0  40 82 00 10 */ bne lbl_800FC3C0
/* 800FC3B4 000F92F4  38 80 00 00 */ li r4, 0
/* 800FC3B8 000F92F8  4B FB DD 19 */ bl checkNextAction__9daAlink_cFi
/* 800FC3BC 000F92FC  48 00 01 94 */ b lbl_800FC550
lbl_800FC3C0:
/* 800FC3C0 000F9300  3B BF 1F D0 */ addi r29, r31, 0x1fd0
/* 800FC3C4 000F9304  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800FC3C8 000F9308  2C 00 00 91 */ cmpwi r0, 0x91
/* 800FC3CC 000F930C  40 82 00 F0 */ bne lbl_800FC4BC
/* 800FC3D0 000F9310  7F A3 EB 78 */ mr r3, r29
/* 800FC3D4 000F9314  48 06 20 F9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC3D8 000F9318  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FC3DC 000F931C  41 82 00 BC */ beq lbl_800FC498
/* 800FC3E0 000F9320  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800FC3E4 000F9324  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800FC3E8 000F9328  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC3EC 000F932C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FC3F0 000F9330  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FC3F4 000F9334  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800FC3F8 000F9338  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC3FC 000F933C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FC400 000F9340  7C 64 02 14 */ add r3, r4, r0
/* 800FC404 000F9344  C0 03 00 04 */ lfs f0, 4(r3)
/* 800FC408 000F9348  C0 3E 0A 90 */ lfs f1, 0xa90(r30)
/* 800FC40C 000F934C  C0 42 93 8C */ lfs f2, lbl_80452D8C-_SDA2_BASE_(r2)
/* 800FC410 000F9350  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FC414 000F9354  EC 81 00 28 */ fsubs f4, f1, f0
/* 800FC418 000F9358  C0 1E 0A 8C */ lfs f0, 0xa8c(r30)
/* 800FC41C 000F935C  EC 62 00 2A */ fadds f3, f2, f0
/* 800FC420 000F9360  7C 04 04 2E */ lfsx f0, r4, r0
/* 800FC424 000F9364  C0 3E 0A 88 */ lfs f1, 0xa88(r30)
/* 800FC428 000F9368  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FC42C 000F936C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800FC430 000F9370  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800FC434 000F9374  D0 7F 04 D4 */ stfs f3, 0x4d4(r31)
/* 800FC438 000F9378  D0 9F 04 D8 */ stfs f4, 0x4d8(r31)
/* 800FC43C 000F937C  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800FC440 000F9380  54 00 00 3C */ rlwinm r0, r0, 0, 0, 0x1e
/* 800FC444 000F9384  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800FC448 000F9388  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800FC44C 000F938C  60 00 60 42 */ ori r0, r0, 0x6042
/* 800FC450 000F9390  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800FC454 000F9394  7F E3 FB 78 */ mr r3, r31
/* 800FC458 000F9398  38 80 00 92 */ li r4, 0x92
/* 800FC45C 000F939C  3C A0 80 39 */ lis r5, lbl_8038E164@ha
/* 800FC460 000F93A0  38 A5 E1 64 */ addi r5, r5, lbl_8038E164@l
/* 800FC464 000F93A4  4B FB 0C 91 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800FC468 000F93A8  7F E3 FB 78 */ mr r3, r31
/* 800FC46C 000F93AC  3C 80 00 01 */ lis r4, 0x00010057@ha
/* 800FC470 000F93B0  38 84 00 57 */ addi r4, r4, 0x00010057@l
/* 800FC474 000F93B4  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800FC478 000F93B8  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800FC47C 000F93BC  7D 89 03 A6 */ mtctr r12
/* 800FC480 000F93C0  4E 80 04 21 */ bctrl
/* 800FC484 000F93C4  38 00 00 50 */ li r0, 0x50
/* 800FC488 000F93C8  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 800FC48C 000F93CC  38 00 00 92 */ li r0, 0x92
/* 800FC490 000F93D0  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 800FC494 000F93D4  48 00 00 B8 */ b lbl_800FC54C
lbl_800FC498:
/* 800FC498 000F93D8  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800FC49C 000F93DC  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 800FC4A0 000F93E0  38 A0 00 02 */ li r5, 2
/* 800FC4A4 000F93E4  38 C0 10 00 */ li r6, 0x1000
/* 800FC4A8 000F93E8  38 E0 04 00 */ li r7, 0x400
/* 800FC4AC 000F93EC  48 17 40 95 */ bl cLib_addCalcAngleS__FPsssss
/* 800FC4B0 000F93F0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC4B4 000F93F4  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FC4B8 000F93F8  48 00 00 94 */ b lbl_800FC54C
lbl_800FC4BC:
/* 800FC4BC 000F93FC  2C 00 00 92 */ cmpwi r0, 0x92
/* 800FC4C0 000F9400  40 82 00 34 */ bne lbl_800FC4F4
/* 800FC4C4 000F9404  7F A3 EB 78 */ mr r3, r29
/* 800FC4C8 000F9408  48 06 20 05 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC4CC 000F940C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FC4D0 000F9410  41 82 00 7C */ beq lbl_800FC54C
/* 800FC4D4 000F9414  7F E3 FB 78 */ mr r3, r31
/* 800FC4D8 000F9418  38 80 01 87 */ li r4, 0x187
/* 800FC4DC 000F941C  4B FB 0A A5 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC4E0 000F9420  38 00 01 87 */ li r0, 0x187
/* 800FC4E4 000F9424  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 800FC4E8 000F9428  38 00 00 01 */ li r0, 1
/* 800FC4EC 000F942C  98 1E 0A 84 */ stb r0, 0xa84(r30)
/* 800FC4F0 000F9430  48 00 00 5C */ b lbl_800FC54C
lbl_800FC4F4:
/* 800FC4F4 000F9434  7F A3 EB 78 */ mr r3, r29
/* 800FC4F8 000F9438  48 06 1F D5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC4FC 000F943C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FC500 000F9440  41 82 00 14 */ beq lbl_800FC514
/* 800FC504 000F9444  7F E3 FB 78 */ mr r3, r31
/* 800FC508 000F9448  38 80 00 00 */ li r4, 0
/* 800FC50C 000F944C  4B FB DB C5 */ bl checkNextAction__9daAlink_cFi
/* 800FC510 000F9450  48 00 00 3C */ b lbl_800FC54C
lbl_800FC514:
/* 800FC514 000F9454  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800FC518 000F9458  C0 02 95 54 */ lfs f0, lbl_80452F54-_SDA2_BASE_(r2)
/* 800FC51C 000F945C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FC520 000F9460  4C 41 13 82 */ cror 2, 1, 2
/* 800FC524 000F9464  40 82 00 10 */ bne lbl_800FC534
/* 800FC528 000F9468  38 00 00 04 */ li r0, 4
/* 800FC52C 000F946C  98 1F 2F 92 */ stb r0, 0x2f92(r31)
/* 800FC530 000F9470  48 00 00 1C */ b lbl_800FC54C
lbl_800FC534:
/* 800FC534 000F9474  C0 02 95 58 */ lfs f0, lbl_80452F58-_SDA2_BASE_(r2)
/* 800FC538 000F9478  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FC53C 000F947C  4C 41 13 82 */ cror 2, 1, 2
/* 800FC540 000F9480  40 82 00 0C */ bne lbl_800FC54C
/* 800FC544 000F9484  38 00 00 0A */ li r0, 0xa
/* 800FC548 000F9488  98 1F 2F 93 */ stb r0, 0x2f93(r31)
lbl_800FC54C:
/* 800FC54C 000F948C  38 60 00 01 */ li r3, 1
lbl_800FC550:
/* 800FC550 000F9490  39 61 00 20 */ addi r11, r1, 0x20
/* 800FC554 000F9494  48 26 5C D5 */ bl _restgpr_29
/* 800FC558 000F9498  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800FC55C 000F949C  7C 08 03 A6 */ mtlr r0
/* 800FC560 000F94A0  38 21 00 20 */ addi r1, r1, 0x20
/* 800FC564 000F94A4  4E 80 00 20 */ blr