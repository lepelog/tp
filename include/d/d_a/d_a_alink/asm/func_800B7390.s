/* 800B7390 000B42D0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B7394 000B42D4  7C 08 02 A6 */ mflr r0
/* 800B7398 000B42D8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B739C 000B42DC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B73A0 000B42E0  93 C1 00 08 */ stw r30, 8(r1)
/* 800B73A4 000B42E4  7C 7E 1B 78 */ mr r30, r3
/* 800B73A8 000B42E8  3B FE 20 48 */ addi r31, r30, 0x2048
/* 800B73AC 000B42EC  48 00 20 21 */ bl daAlink_c_NS_checkSwordTwirlAnime
/* 800B73B0 000B42F0  2C 03 00 00 */ cmpwi r3, 0
/* 800B73B4 000B42F4  41 82 00 60 */ beq lbl_800B7414
/* 800B73B8 000B42F8  7F E3 FB 78 */ mr r3, r31
/* 800B73BC 000B42FC  48 0A 71 11 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800B73C0 000B4300  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B73C4 000B4304  41 82 00 18 */ beq lbl_800B73DC
/* 800B73C8 000B4308  7F C3 F3 78 */ mr r3, r30
/* 800B73CC 000B430C  38 80 00 02 */ li r4, 2
/* 800B73D0 000B4310  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800B73D4 000B4314  4B FF 63 51 */ bl daAlink_c_NS_resetUpperAnime
/* 800B73D8 000B4318  48 00 00 C0 */ b lbl_800B7498
lbl_800B73DC:
/* 800B73DC 000B431C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800B73E0 000B4320  C0 02 93 74 */ lfs f0, lbl_80452D74-_SDA2_BASE_(r2)
/* 800B73E4 000B4324  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B73E8 000B4328  4C 41 13 82 */ cror 2, 1, 2
/* 800B73EC 000B432C  41 82 00 10 */ beq lbl_800B73FC
/* 800B73F0 000B4330  C0 02 94 B4 */ lfs f0, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800B73F4 000B4334  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B73F8 000B4338  40 80 00 10 */ bge lbl_800B7408
lbl_800B73FC:
/* 800B73FC 000B433C  38 00 00 FE */ li r0, 0xfe
/* 800B7400 000B4340  98 1E 2F 96 */ stb r0, 0x2f96(r30)
/* 800B7404 000B4344  48 00 00 94 */ b lbl_800B7498
lbl_800B7408:
/* 800B7408 000B4348  38 00 00 FF */ li r0, 0xff
/* 800B740C 000B434C  98 1E 2F 96 */ stb r0, 0x2f96(r30)
/* 800B7410 000B4350  48 00 00 88 */ b lbl_800B7498
lbl_800B7414:
/* 800B7414 000B4354  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800B7418 000B4358  48 02 51 31 */ bl daAlink_c_NS_checkEnemyGroup
/* 800B741C 000B435C  2C 03 00 00 */ cmpwi r3, 0
/* 800B7420 000B4360  41 82 00 78 */ beq lbl_800B7498
/* 800B7424 000B4364  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B7428 000B4368  28 00 01 03 */ cmplwi r0, 0x103
/* 800B742C 000B436C  40 82 00 6C */ bne lbl_800B7498
/* 800B7430 000B4370  88 1E 2F 98 */ lbz r0, 0x2f98(r30)
/* 800B7434 000B4374  28 00 00 01 */ cmplwi r0, 1
/* 800B7438 000B4378  41 82 00 60 */ beq lbl_800B7498
/* 800B743C 000B437C  7F C3 F3 78 */ mr r3, r30
/* 800B7440 000B4380  48 00 1E 15 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800B7444 000B4384  2C 03 00 00 */ cmpwi r3, 0
/* 800B7448 000B4388  41 82 00 50 */ beq lbl_800B7498
/* 800B744C 000B438C  48 1B 04 21 */ bl cM_rnd__Fv
/* 800B7450 000B4390  C0 02 98 8C */ lfs f0, lbl_8045328C-_SDA2_BASE_(r2)
/* 800B7454 000B4394  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B7458 000B4398  40 80 00 40 */ bge lbl_800B7498
/* 800B745C 000B439C  7F C3 F3 78 */ mr r3, r30
/* 800B7460 000B43A0  88 9E 2F 98 */ lbz r4, 0x2f98(r30)
/* 800B7464 000B43A4  38 04 FF FE */ addi r0, r4, -2
/* 800B7468 000B43A8  30 00 FF FF */ addic r0, r0, -1
/* 800B746C 000B43AC  7C 80 01 10 */ subfe r4, r0, r0
/* 800B7470 000B43B0  38 84 00 40 */ addi r4, r4, 0x40
/* 800B7474 000B43B4  3C A0 80 39 */ lis r5, lbl_8038D714@ha
/* 800B7478 000B43B8  38 A5 D7 14 */ addi r5, r5, lbl_8038D714@l
/* 800B747C 000B43BC  C0 25 00 08 */ lfs f1, 8(r5)
/* 800B7480 000B43C0  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800B7484 000B43C4  4B FF 5F 25 */ bl daAlink_c_NS_setUpperAnimeBaseSpeed
/* 800B7488 000B43C8  7F C3 F3 78 */ mr r3, r30
/* 800B748C 000B43CC  3C 80 00 02 */ lis r4, 0x000200A5@ha
/* 800B7490 000B43D0  38 84 00 A5 */ addi r4, r4, 0x000200A5@l
/* 800B7494 000B43D4  48 00 7C 59 */ bl daAlink_c_NS_seStartSwordCut
lbl_800B7498:
/* 800B7498 000B43D8  38 60 00 01 */ li r3, 1
/* 800B749C 000B43DC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B74A0 000B43E0  83 C1 00 08 */ lwz r30, 8(r1)
/* 800B74A4 000B43E4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B74A8 000B43E8  7C 08 03 A6 */ mtlr r0
/* 800B74AC 000B43EC  38 21 00 10 */ addi r1, r1, 0x10
/* 800B74B0 000B43F0  4E 80 00 20 */ blr
