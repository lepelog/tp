/* 800E08C4 000DD804  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E08C8 000DD808  7C 08 02 A6 */ mflr r0
/* 800E08CC 000DD80C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E08D0 000DD810  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800E08D4 000DD814  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800E08D8 000DD818  7C 7F 1B 78 */ mr r31, r3
/* 800E08DC 000DD81C  7C 9E 23 78 */ mr r30, r4
/* 800E08E0 000DD820  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 800E08E4 000DD824  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 800E08E8 000DD828  80 04 5F 18 */ lwz r0, 0x5f18(r4)
/* 800E08EC 000DD82C  54 00 02 90 */ rlwinm r0, r0, 0, 0xa, 8
/* 800E08F0 000DD830  90 04 5F 18 */ stw r0, 0x5f18(r4)
/* 800E08F4 000DD834  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800E08F8 000DD838  28 00 00 FF */ cmplwi r0, 0xff
/* 800E08FC 000DD83C  40 82 01 7C */ bne lbl_800E0A78
/* 800E0900 000DD840  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E0904 000DD844  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E0908 000DD848  40 82 01 70 */ bne lbl_800E0A78
/* 800E090C 000DD84C  80 1F 28 28 */ lwz r0, 0x2828(r31)
/* 800E0910 000DD850  28 00 00 00 */ cmplwi r0, 0
/* 800E0914 000DD854  40 82 01 64 */ bne lbl_800E0A78
/* 800E0918 000DD858  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800E091C 000DD85C  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800E0920 000DD860  7D 89 03 A6 */ mtctr r12
/* 800E0924 000DD864  4E 80 04 21 */ bctrl
/* 800E0928 000DD868  28 03 00 00 */ cmplwi r3, 0
/* 800E092C 000DD86C  40 82 01 4C */ bne lbl_800E0A78
/* 800E0930 000DD870  7F E3 FB 78 */ mr r3, r31
/* 800E0934 000DD874  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800E0938 000DD878  81 8C 01 8C */ lwz r12, 0x18c(r12)
/* 800E093C 000DD87C  7D 89 03 A6 */ mtctr r12
/* 800E0940 000DD880  4E 80 04 21 */ bctrl
/* 800E0944 000DD884  28 03 00 00 */ cmplwi r3, 0
/* 800E0948 000DD888  40 82 01 30 */ bne lbl_800E0A78
/* 800E094C 000DD88C  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800E0950 000DD890  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E0954 000DD894  40 82 01 24 */ bne lbl_800E0A78
/* 800E0958 000DD898  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800E095C 000DD89C  28 00 00 5C */ cmplwi r0, 0x5c
/* 800E0960 000DD8A0  40 82 00 10 */ bne lbl_800E0970
/* 800E0964 000DD8A4  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800E0968 000DD8A8  2C 00 00 03 */ cmpwi r0, 3
/* 800E096C 000DD8AC  41 82 01 0C */ beq lbl_800E0A78
lbl_800E0970:
/* 800E0970 000DD8B0  7F E3 FB 78 */ mr r3, r31
/* 800E0974 000DD8B4  48 03 52 AD */ bl daAlink_c_NS_checkEventRun
/* 800E0978 000DD8B8  2C 03 00 00 */ cmpwi r3, 0
/* 800E097C 000DD8BC  41 82 00 0C */ beq lbl_800E0988
/* 800E0980 000DD8C0  2C 1E 00 00 */ cmpwi r30, 0
/* 800E0984 000DD8C4  41 82 00 F4 */ beq lbl_800E0A78
lbl_800E0988:
/* 800E0988 000DD8C8  7F E3 FB 78 */ mr r3, r31
/* 800E098C 000DD8CC  4B FD 88 C9 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800E0990 000DD8D0  2C 03 00 00 */ cmpwi r3, 0
/* 800E0994 000DD8D4  40 82 00 64 */ bne lbl_800E09F8
/* 800E0998 000DD8D8  7F E3 FB 78 */ mr r3, r31
/* 800E099C 000DD8DC  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800E09A0 000DD8E0  81 8C 00 40 */ lwz r12, 0x40(r12)
/* 800E09A4 000DD8E4  7D 89 03 A6 */ mtctr r12
/* 800E09A8 000DD8E8  4E 80 04 21 */ bctrl
/* 800E09AC 000DD8EC  2C 03 00 00 */ cmpwi r3, 0
/* 800E09B0 000DD8F0  40 82 00 48 */ bne lbl_800E09F8
/* 800E09B4 000DD8F4  38 60 00 00 */ li r3, 0
/* 800E09B8 000DD8F8  A0 9F 1F BC */ lhz r4, 0x1fbc(r31)
/* 800E09BC 000DD8FC  28 04 02 4C */ cmplwi r4, 0x24c
/* 800E09C0 000DD900  41 82 00 10 */ beq lbl_800E09D0
/* 800E09C4 000DD904  54 80 04 3E */ clrlwi r0, r4, 0x10
/* 800E09C8 000DD908  28 00 02 4D */ cmplwi r0, 0x24d
/* 800E09CC 000DD90C  40 82 00 08 */ bne lbl_800E09D4
lbl_800E09D0:
/* 800E09D0 000DD910  38 60 00 01 */ li r3, 1
lbl_800E09D4:
/* 800E09D4 000DD914  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E09D8 000DD918  40 82 00 20 */ bne lbl_800E09F8
/* 800E09DC 000DD91C  54 80 04 3E */ clrlwi r0, r4, 0x10
/* 800E09E0 000DD920  28 00 00 AD */ cmplwi r0, 0xad
/* 800E09E4 000DD924  41 82 00 14 */ beq lbl_800E09F8
/* 800E09E8 000DD928  7F E3 FB 78 */ mr r3, r31
/* 800E09EC 000DD92C  4B FF FA 55 */ bl daAlink_c_NS_checkBoomerangAnime
/* 800E09F0 000DD930  2C 03 00 00 */ cmpwi r3, 0
/* 800E09F4 000DD934  41 82 00 84 */ beq lbl_800E0A78
lbl_800E09F8:
/* 800E09F8 000DD938  80 9F 31 A0 */ lwz r4, 0x31a0(r31)
/* 800E09FC 000DD93C  3C 60 01 BD */ lis r3, 0x01BD0810@ha
/* 800E0A00 000DD940  38 03 08 10 */ addi r0, r3, 0x01BD0810@l
/* 800E0A04 000DD944  7C 80 00 39 */ and. r0, r4, r0
/* 800E0A08 000DD948  40 82 00 70 */ bne lbl_800E0A78
/* 800E0A0C 000DD94C  80 1F 28 34 */ lwz r0, 0x2834(r31)
/* 800E0A10 000DD950  90 1F 28 24 */ stw r0, 0x2824(r31)
/* 800E0A14 000DD954  80 1F 28 38 */ lwz r0, 0x2838(r31)
/* 800E0A18 000DD958  90 1F 28 28 */ stw r0, 0x2828(r31)
/* 800E0A1C 000DD95C  38 7F 28 34 */ addi r3, r31, 0x2834
/* 800E0A20 000DD960  48 07 E2 DD */ bl clearData__16daPy_actorKeep_cFv
/* 800E0A24 000DD964  38 00 00 40 */ li r0, 0x40
/* 800E0A28 000DD968  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800E0A2C 000DD96C  38 00 00 02 */ li r0, 2
/* 800E0A30 000DD970  98 1F 2F 94 */ stb r0, 0x2f94(r31)
/* 800E0A34 000DD974  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E0A38 000DD978  60 00 00 20 */ ori r0, r0, 0x20
/* 800E0A3C 000DD97C  90 1F 05 70 */ stw r0, 0x570(r31)
/* 800E0A40 000DD980  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E0A44 000DD984  D0 21 00 08 */ stfs f1, 8(r1)
/* 800E0A48 000DD988  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E0A4C 000DD98C  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800E0A50 000DD990  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800E0A54 000DD994  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E0A58 000DD998  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E0A5C 000DD99C  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800E0A60 000DD9A0  38 80 00 01 */ li r4, 1
/* 800E0A64 000DD9A4  38 A0 00 01 */ li r5, 1
/* 800E0A68 000DD9A8  38 C1 00 08 */ addi r6, r1, 8
/* 800E0A6C 000DD9AC  4B F8 EF B9 */ bl StartShock__12dVibration_cFii4cXyz
/* 800E0A70 000DD9B0  38 60 00 01 */ li r3, 1
/* 800E0A74 000DD9B4  48 00 00 10 */ b lbl_800E0A84
lbl_800E0A78:
/* 800E0A78 000DD9B8  38 7F 28 34 */ addi r3, r31, 0x2834
/* 800E0A7C 000DD9BC  48 07 E2 81 */ bl clearData__16daPy_actorKeep_cFv
/* 800E0A80 000DD9C0  38 60 00 00 */ li r3, 0
lbl_800E0A84:
/* 800E0A84 000DD9C4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800E0A88 000DD9C8  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800E0A8C 000DD9CC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E0A90 000DD9D0  7C 08 03 A6 */ mtlr r0
/* 800E0A94 000DD9D4  38 21 00 20 */ addi r1, r1, 0x20
/* 800E0A98 000DD9D8  4E 80 00 20 */ blr
