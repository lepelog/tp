/* 80132738 0012F678  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8013273C 0012F67C  7C 08 02 A6 */ mflr r0
/* 80132740 0012F680  90 01 00 34 */ stw r0, 0x34(r1)
/* 80132744 0012F684  39 61 00 30 */ addi r11, r1, 0x30
/* 80132748 0012F688  48 22 FA 95 */ bl _savegpr_29
/* 8013274C 0012F68C  7C 7F 1B 78 */ mr r31, r3
/* 80132750 0012F690  7C 9D 23 78 */ mr r29, r4
/* 80132754 0012F694  83 C3 28 10 */ lwz r30, 0x2810(r3)
/* 80132758 0012F698  38 80 01 14 */ li r4, 0x114
/* 8013275C 0012F69C  4B F8 F8 11 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80132760 0012F6A0  2C 1D 00 04 */ cmpwi r29, 4
/* 80132764 0012F6A4  41 82 00 44 */ beq lbl_801327A8
/* 80132768 0012F6A8  38 00 00 00 */ li r0, 0
/* 8013276C 0012F6AC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 80132770 0012F6B0  7F E3 FB 78 */ mr r3, r31
/* 80132774 0012F6B4  38 80 00 19 */ li r4, 0x19
/* 80132778 0012F6B8  3C A0 80 39 */ lis r5, lbl_8038F46C@ha
/* 8013277C 0012F6BC  38 C5 F4 6C */ addi r6, r5, lbl_8038F46C@l
/* 80132780 0012F6C0  C0 26 00 28 */ lfs f1, 0x28(r6)
/* 80132784 0012F6C4  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80132788 0012F6C8  38 A0 00 10 */ li r5, 0x10
/* 8013278C 0012F6CC  C0 66 00 2C */ lfs f3, 0x2c(r6)
/* 80132790 0012F6D0  4B FF 6F 75 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolf
/* 80132794 0012F6D4  38 00 FF FE */ li r0, -2
/* 80132798 0012F6D8  90 1E 07 18 */ stw r0, 0x718(r30)
/* 8013279C 0012F6DC  38 00 FF FF */ li r0, -1
/* 801327A0 0012F6E0  90 1E 07 1C */ stw r0, 0x71c(r30)
/* 801327A4 0012F6E4  48 00 00 BC */ b lbl_80132860
lbl_801327A8:
/* 801327A8 0012F6E8  38 00 00 01 */ li r0, 1
/* 801327AC 0012F6EC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 801327B0 0012F6F0  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 801327B4 0012F6F4  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 801327B8 0012F6F8  7C 03 00 50 */ subf r0, r3, r0
/* 801327BC 0012F6FC  7C 00 07 35 */ extsh. r0, r0
/* 801327C0 0012F700  41 80 00 0C */ blt lbl_801327CC
/* 801327C4 0012F704  2C 00 40 00 */ cmpwi r0, 0x4000
/* 801327C8 0012F708  41 80 00 0C */ blt lbl_801327D4
lbl_801327CC:
/* 801327CC 0012F70C  2C 00 C0 00 */ cmpwi r0, -16384
/* 801327D0 0012F710  41 81 00 10 */ bgt lbl_801327E0
lbl_801327D4:
/* 801327D4 0012F714  3B A0 00 03 */ li r29, 3
/* 801327D8 0012F718  38 80 00 23 */ li r4, 0x23
/* 801327DC 0012F71C  48 00 00 0C */ b lbl_801327E8
lbl_801327E0:
/* 801327E0 0012F720  3B A0 00 02 */ li r29, 2
/* 801327E4 0012F724  38 80 00 22 */ li r4, 0x22
lbl_801327E8:
/* 801327E8 0012F728  7F E3 FB 78 */ mr r3, r31
/* 801327EC 0012F72C  3C A0 80 39 */ lis r5, lbl_8038F46C@ha
/* 801327F0 0012F730  38 A5 F4 6C */ addi r5, r5, lbl_8038F46C@l
/* 801327F4 0012F734  C0 25 00 28 */ lfs f1, 0x28(r5)
/* 801327F8 0012F738  C0 45 00 30 */ lfs f2, 0x30(r5)
/* 801327FC 0012F73C  4B FF 6E DD */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBaseSpeed
/* 80132800 0012F740  38 00 00 13 */ li r0, 0x13
/* 80132804 0012F744  90 1E 07 18 */ stw r0, 0x718(r30)
/* 80132808 0012F748  38 00 00 17 */ li r0, 0x17
/* 8013280C 0012F74C  90 1E 07 1C */ stw r0, 0x71c(r30)
/* 80132810 0012F750  C0 1E 07 34 */ lfs f0, 0x734(r30)
/* 80132814 0012F754  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 80132818 0012F758  C0 1E 07 38 */ lfs f0, 0x738(r30)
/* 8013281C 0012F75C  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 80132820 0012F760  C0 1E 07 3C */ lfs f0, 0x73c(r30)
/* 80132824 0012F764  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 80132828 0012F768  38 00 00 00 */ li r0, 0
/* 8013282C 0012F76C  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 80132830 0012F770  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80132834 0012F774  D0 21 00 08 */ stfs f1, 8(r1)
/* 80132838 0012F778  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013283C 0012F77C  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80132840 0012F780  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 80132844 0012F784  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80132848 0012F788  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013284C 0012F78C  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 80132850 0012F790  38 80 00 02 */ li r4, 2
/* 80132854 0012F794  38 A0 00 0F */ li r5, 0xf
/* 80132858 0012F798  38 C1 00 08 */ addi r6, r1, 8
/* 8013285C 0012F79C  4B F3 D1 C9 */ bl StartShock__12dVibration_cFii4cXyz
lbl_80132860:
/* 80132860 0012F7A0  93 BF 31 98 */ stw r29, 0x3198(r31)
/* 80132864 0012F7A4  7F E3 FB 78 */ mr r3, r31
/* 80132868 0012F7A8  4B FF F1 89 */ bl initWolfRopeShapeAngle__9daAlink_cFv
/* 8013286C 0012F7AC  B0 7F 30 10 */ sth r3, 0x3010(r31)
/* 80132870 0012F7B0  38 00 00 00 */ li r0, 0
/* 80132874 0012F7B4  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 80132878 0012F7B8  2C 1D 00 02 */ cmpwi r29, 2
/* 8013287C 0012F7BC  40 82 00 20 */ bne lbl_8013289C
/* 80132880 0012F7C0  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 80132884 0012F7C4  38 03 C0 00 */ addi r0, r3, -16384
/* 80132888 0012F7C8  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 8013288C 0012F7CC  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 80132890 0012F7D0  7C 00 00 D0 */ neg r0, r0
/* 80132894 0012F7D4  B0 1F 30 10 */ sth r0, 0x3010(r31)
/* 80132898 0012F7D8  48 00 00 10 */ b lbl_801328A8
lbl_8013289C:
/* 8013289C 0012F7DC  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 801328A0 0012F7E0  38 03 40 00 */ addi r0, r3, 0x4000
/* 801328A4 0012F7E4  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
lbl_801328A8:
/* 801328A8 0012F7E8  7F E3 FB 78 */ mr r3, r31
/* 801328AC 0012F7EC  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 801328B0 0012F7F0  4B FF F1 BD */ bl wolfRopeSwingInc__9daAlink_cFf
/* 801328B4 0012F7F4  38 00 00 00 */ li r0, 0
/* 801328B8 0012F7F8  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 801328BC 0012F7FC  7F E3 FB 78 */ mr r3, r31
/* 801328C0 0012F800  4B FF EE 59 */ bl setWolfRopePosY__9daAlink_cFv
/* 801328C4 0012F804  7F E3 FB 78 */ mr r3, r31
/* 801328C8 0012F808  38 80 00 00 */ li r4, 0
/* 801328CC 0012F80C  4B FF F2 31 */ bl setWolfRopeOffsetY__9daAlink_cFi
/* 801328D0 0012F810  7F E3 FB 78 */ mr r3, r31
/* 801328D4 0012F814  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801328D8 0012F818  C0 5F 05 34 */ lfs f2, 0x534(r31)
/* 801328DC 0012F81C  38 80 00 00 */ li r4, 0
/* 801328E0 0012F820  4B F8 8E 91 */ bl setSpecialGravity__9daAlink_cFffi
/* 801328E4 0012F824  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801328E8 0012F828  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 801328EC 0012F82C  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 801328F0 0012F830  38 00 00 00 */ li r0, 0
/* 801328F4 0012F834  B0 1F 04 E4 */ sth r0, 0x4e4(r31)
/* 801328F8 0012F838  38 60 00 01 */ li r3, 1
/* 801328FC 0012F83C  39 61 00 30 */ addi r11, r1, 0x30
/* 80132900 0012F840  48 22 F9 29 */ bl _restgpr_29
/* 80132904 0012F844  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80132908 0012F848  7C 08 03 A6 */ mtlr r0
/* 8013290C 0012F84C  38 21 00 30 */ addi r1, r1, 0x30
/* 80132910 0012F850  4E 80 00 20 */ blr