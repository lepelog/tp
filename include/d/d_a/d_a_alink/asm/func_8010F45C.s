/* 8010F45C 0010C39C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8010F460 0010C3A0  7C 08 02 A6 */ mflr r0
/* 8010F464 0010C3A4  90 01 00 34 */ stw r0, 0x34(r1)
/* 8010F468 0010C3A8  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8010F46C 0010C3AC  7C 7F 1B 78 */ mr r31, r3
/* 8010F470 0010C3B0  7C 86 23 78 */ mr r6, r4
/* 8010F474 0010C3B4  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 8010F478 0010C3B8  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 8010F47C 0010C3BC  41 82 00 48 */ beq lbl_8010F4C4
/* 8010F480 0010C3C0  C0 06 00 00 */ lfs f0, 0(r6)
/* 8010F484 0010C3C4  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8010F488 0010C3C8  C0 26 00 04 */ lfs f1, 4(r6)
/* 8010F48C 0010C3CC  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 8010F490 0010C3D0  C0 06 00 08 */ lfs f0, 8(r6)
/* 8010F494 0010C3D4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8010F498 0010C3D8  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 8010F49C 0010C3DC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8010F4A0 0010C3E0  41 82 00 14 */ beq lbl_8010F4B4
/* 8010F4A4 0010C3E4  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 8010F4A8 0010C3E8  EC 01 00 28 */ fsubs f0, f1, f0
/* 8010F4AC 0010C3EC  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 8010F4B0 0010C3F0  48 00 00 10 */ b lbl_8010F4C0
lbl_8010F4B4:
/* 8010F4B4 0010C3F4  C0 02 93 04 */ lfs f0, lbl_80452D04-_SDA2_BASE_(r2)
/* 8010F4B8 0010C3F8  EC 01 00 28 */ fsubs f0, f1, f0
/* 8010F4BC 0010C3FC  D0 01 00 14 */ stfs f0, 0x14(r1)
lbl_8010F4C0:
/* 8010F4C0 0010C400  38 C1 00 10 */ addi r6, r1, 0x10
lbl_8010F4C4:
/* 8010F4C4 0010C404  38 00 00 00 */ li r0, 0
/* 8010F4C8 0010C408  90 01 00 08 */ stw r0, 8(r1)
/* 8010F4CC 0010C40C  38 60 01 3F */ li r3, 0x13f
/* 8010F4D0 0010C410  7C A4 2B 78 */ mr r4, r5
/* 8010F4D4 0010C414  7C C5 33 78 */ mr r5, r6
/* 8010F4D8 0010C418  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 8010F4DC 0010C41C  7C 06 07 74 */ extsb r6, r0
/* 8010F4E0 0010C420  38 FF 04 E4 */ addi r7, r31, 0x4e4
/* 8010F4E4 0010C424  39 00 00 00 */ li r8, 0
/* 8010F4E8 0010C428  39 20 FF FF */ li r9, -1
/* 8010F4EC 0010C42C  39 40 00 00 */ li r10, 0
/* 8010F4F0 0010C430  4B F0 A9 15 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8010F4F4 0010C434  7C 64 1B 78 */ mr r4, r3
/* 8010F4F8 0010C438  38 7F 28 5C */ addi r3, r31, 0x285c
/* 8010F4FC 0010C43C  48 04 F7 BD */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010F500 0010C440  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 8010F504 0010C444  60 00 04 00 */ ori r0, r0, 0x400
/* 8010F508 0010C448  90 1F 05 80 */ stw r0, 0x580(r31)
/* 8010F50C 0010C44C  7F E3 FB 78 */ mr r3, r31
/* 8010F510 0010C450  48 00 67 11 */ bl checkEventRun__9daAlink_cCFv
/* 8010F514 0010C454  2C 03 00 00 */ cmpwi r3, 0
/* 8010F518 0010C458  41 82 00 1C */ beq lbl_8010F534
/* 8010F51C 0010C45C  80 7F 28 60 */ lwz r3, 0x2860(r31)
/* 8010F520 0010C460  28 03 00 00 */ cmplwi r3, 0
/* 8010F524 0010C464  41 82 00 10 */ beq lbl_8010F534
/* 8010F528 0010C468  80 03 04 9C */ lwz r0, 0x49c(r3)
/* 8010F52C 0010C46C  60 00 08 00 */ ori r0, r0, 0x800
/* 8010F530 0010C470  90 03 04 9C */ stw r0, 0x49c(r3)
lbl_8010F534:
/* 8010F534 0010C474  80 7F 28 60 */ lwz r3, 0x2860(r31)
/* 8010F538 0010C478  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8010F53C 0010C47C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8010F540 0010C480  7C 08 03 A6 */ mtlr r0
/* 8010F544 0010C484  38 21 00 30 */ addi r1, r1, 0x30
/* 8010F548 0010C488  4E 80 00 20 */ blr
