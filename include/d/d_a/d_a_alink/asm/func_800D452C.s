/* 800D452C 000D146C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D4530 000D1470  7C 08 02 A6 */ mflr r0
/* 800D4534 000D1474  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D4538 000D1478  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D453C 000D147C  93 C1 00 08 */ stw r30, 8(r1)
/* 800D4540 000D1480  7C 7E 1B 78 */ mr r30, r3
/* 800D4544 000D1484  7C 9F 23 78 */ mr r31, r4
/* 800D4548 000D1488  38 80 00 27 */ li r4, 0x27
/* 800D454C 000D148C  4B FE DA 21 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D4550 000D1490  7F C3 F3 78 */ mr r3, r30
/* 800D4554 000D1494  48 00 2A 8D */ bl checkCutLandDamage__9daAlink_cFv
/* 800D4558 000D1498  7F C3 F3 78 */ mr r3, r30
/* 800D455C 000D149C  38 80 00 72 */ li r4, 0x72
/* 800D4560 000D14A0  3C A0 80 39 */ lis r5, lbl_8038DB40@ha
/* 800D4564 000D14A4  38 A5 DB 40 */ addi r5, r5, lbl_8038DB40@l
/* 800D4568 000D14A8  38 A5 00 14 */ addi r5, r5, 0x14
/* 800D456C 000D14AC  4B FD 8B 89 */ bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D4570 000D14B0  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800D4574 000D14B4  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 800D4578 000D14B8  41 82 00 28 */ beq lbl_800D45A0
/* 800D457C 000D14BC  80 7E 20 60 */ lwz r3, 0x2060(r30)
/* 800D4580 000D14C0  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800D4584 000D14C4  3C 80 80 39 */ lis r4, lbl_8038DB40@ha
/* 800D4588 000D14C8  38 84 DB 40 */ addi r4, r4, lbl_8038DB40@l
/* 800D458C 000D14CC  C0 04 00 20 */ lfs f0, 0x20(r4)
/* 800D4590 000D14D0  EC 21 00 32 */ fmuls f1, f1, f0
/* 800D4594 000D14D4  38 80 00 00 */ li r4, 0
/* 800D4598 000D14D8  38 A0 00 23 */ li r5, 0x23
/* 800D459C 000D14DC  4B F3 B2 AD */ bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800D45A0:
/* 800D45A0 000D14E0  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800D45A4 000D14E4  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D45A8 000D14E8  40 82 00 58 */ bne lbl_800D4600
/* 800D45AC 000D14EC  7F C3 F3 78 */ mr r3, r30
/* 800D45B0 000D14F0  3C 80 00 02 */ lis r4, 0x00020003@ha
/* 800D45B4 000D14F4  38 84 00 03 */ addi r4, r4, 0x00020003@l
/* 800D45B8 000D14F8  4B FE AB 35 */ bl seStartSwordCut__9daAlink_cFUl
/* 800D45BC 000D14FC  38 7E 21 F0 */ addi r3, r30, 0x21f0
/* 800D45C0 000D1500  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D45C4 000D1504  38 80 00 00 */ li r4, 0
/* 800D45C8 000D1508  38 BE 05 BC */ addi r5, r30, 0x5bc
/* 800D45CC 000D150C  38 DE 34 98 */ addi r6, r30, 0x3498
/* 800D45D0 000D1510  38 FE 34 A4 */ addi r7, r30, 0x34a4
/* 800D45D4 000D1514  48 05 11 19 */ bl initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz
/* 800D45D8 000D1518  7F C3 F3 78 */ mr r3, r30
/* 800D45DC 000D151C  38 80 00 01 */ li r4, 1
/* 800D45E0 000D1520  38 A0 00 03 */ li r5, 3
/* 800D45E4 000D1524  38 C0 00 01 */ li r6, 1
/* 800D45E8 000D1528  38 E0 00 03 */ li r7, 3
/* 800D45EC 000D152C  3D 00 80 39 */ lis r8, lbl_8038DE8C@ha
/* 800D45F0 000D1530  39 08 DE 8C */ addi r8, r8, lbl_8038DE8C@l
/* 800D45F4 000D1534  C0 28 00 74 */ lfs f1, 0x74(r8)
/* 800D45F8 000D1538  C0 48 00 78 */ lfs f2, 0x78(r8)
/* 800D45FC 000D153C  4B FF D0 8D */ bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
lbl_800D4600:
/* 800D4600 000D1540  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800D4604 000D1544  60 00 00 02 */ ori r0, r0, 2
/* 800D4608 000D1548  90 1E 05 80 */ stw r0, 0x580(r30)
/* 800D460C 000D154C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D4610 000D1550  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D4614 000D1554  7F C3 F3 78 */ mr r3, r30
/* 800D4618 000D1558  38 80 00 0A */ li r4, 0xa
/* 800D461C 000D155C  4B FF CF 11 */ bl setCutType__9daAlink_cFUc
/* 800D4620 000D1560  38 00 00 04 */ li r0, 4
/* 800D4624 000D1564  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 800D4628 000D1568  7F C3 F3 78 */ mr r3, r30
/* 800D462C 000D156C  38 80 00 02 */ li r4, 2
/* 800D4630 000D1570  48 04 CB 91 */ bl setFootEffectProcType__9daAlink_cFi
/* 800D4634 000D1574  80 1E 05 84 */ lwz r0, 0x584(r30)
/* 800D4638 000D1578  60 00 00 30 */ ori r0, r0, 0x30
/* 800D463C 000D157C  90 1E 05 84 */ stw r0, 0x584(r30)
/* 800D4640 000D1580  3C 60 80 42 */ lis r3, lbl_80425544@ha
/* 800D4644 000D1584  C4 03 55 44 */ lfsu f0, lbl_80425544@l(r3)
/* 800D4648 000D1588  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 800D464C 000D158C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800D4650 000D1590  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 800D4654 000D1594  C0 03 00 08 */ lfs f0, 8(r3)
/* 800D4658 000D1598  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 800D465C 000D159C  93 FE 31 98 */ stw r31, 0x3198(r30)
/* 800D4660 000D15A0  7F C3 F3 78 */ mr r3, r30
/* 800D4664 000D15A4  4B FE 16 01 */ bl setStepLandVibration__9daAlink_cFv
/* 800D4668 000D15A8  38 60 00 01 */ li r3, 1
/* 800D466C 000D15AC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D4670 000D15B0  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D4674 000D15B4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D4678 000D15B8  7C 08 03 A6 */ mtlr r0
/* 800D467C 000D15BC  38 21 00 10 */ addi r1, r1, 0x10
/* 800D4680 000D15C0  4E 80 00 20 */ blr