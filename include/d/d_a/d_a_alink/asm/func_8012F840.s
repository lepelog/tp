/* 8012F840 0012C780  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8012F844 0012C784  7C 08 02 A6 */ mflr r0
/* 8012F848 0012C788  90 01 00 24 */ stw r0, 0x24(r1)
/* 8012F84C 0012C78C  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 8012F850 0012C790  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 8012F854 0012C794  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012F858 0012C798  93 C1 00 08 */ stw r30, 8(r1)
/* 8012F85C 0012C79C  7C 7F 1B 78 */ mr r31, r3
/* 8012F860 0012C7A0  7C 9E 23 78 */ mr r30, r4
/* 8012F864 0012C7A4  38 80 01 0C */ li r4, 0x10c
/* 8012F868 0012C7A8  4B F9 35 3D */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 8012F86C 0012C7AC  2C 03 00 00 */ cmpwi r3, 0
/* 8012F870 0012C7B0  40 82 00 0C */ bne lbl_8012F87C
/* 8012F874 0012C7B4  38 60 00 00 */ li r3, 0
/* 8012F878 0012C7B8  48 00 01 28 */ b lbl_8012F9A0
lbl_8012F87C:
/* 8012F87C 0012C7BC  2C 1E 00 00 */ cmpwi r30, 0
/* 8012F880 0012C7C0  41 82 00 4C */ beq lbl_8012F8CC
/* 8012F884 0012C7C4  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 8012F888 0012C7C8  38 83 EE 28 */ addi r4, r3, lbl_8038EE28@l
/* 8012F88C 0012C7CC  C3 E4 00 1C */ lfs f31, 0x1c(r4)
/* 8012F890 0012C7D0  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8012F894 0012C7D4  3C 63 00 01 */ addis r3, r3, 1
/* 8012F898 0012C7D8  38 03 80 00 */ addi r0, r3, -32768
/* 8012F89C 0012C7DC  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8012F8A0 0012C7E0  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 8012F8A4 0012C7E4  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 8012F8A8 0012C7E8  41 82 00 10 */ beq lbl_8012F8B8
/* 8012F8AC 0012C7EC  C0 04 00 AC */ lfs f0, 0xac(r4)
/* 8012F8B0 0012C7F0  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 8012F8B4 0012C7F4  48 00 00 68 */ b lbl_8012F91C
lbl_8012F8B8:
/* 8012F8B8 0012C7F8  3C 60 80 39 */ lis r3, lbl_8038EF28@ha
/* 8012F8BC 0012C7FC  38 63 EF 28 */ addi r3, r3, lbl_8038EF28@l
/* 8012F8C0 0012C800  C0 03 00 44 */ lfs f0, 0x44(r3)
/* 8012F8C4 0012C804  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 8012F8C8 0012C808  48 00 00 54 */ b lbl_8012F91C
lbl_8012F8CC:
/* 8012F8CC 0012C80C  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 8012F8D0 0012C810  38 63 EE 28 */ addi r3, r3, lbl_8038EE28@l
/* 8012F8D4 0012C814  C3 E3 00 B0 */ lfs f31, 0xb0(r3)
/* 8012F8D8 0012C818  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 8012F8DC 0012C81C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8012F8E0 0012C820  7F E3 FB 78 */ mr r3, r31
/* 8012F8E4 0012C824  38 80 00 00 */ li r4, 0
/* 8012F8E8 0012C828  A8 BF 04 DE */ lha r5, 0x4de(r31)
/* 8012F8EC 0012C82C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8012F8F0 0012C830  7C A5 00 50 */ subf r5, r5, r0
/* 8012F8F4 0012C834  38 05 80 00 */ addi r0, r5, -32768
/* 8012F8F8 0012C838  7C 05 07 34 */ extsh r5, r0
/* 8012F8FC 0012C83C  38 C0 00 00 */ li r6, 0
/* 8012F900 0012C840  4B F7 E2 79 */ bl setOldRootQuaternion__9daAlink_cFsss
/* 8012F904 0012C844  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 8012F908 0012C848  3C 63 00 01 */ addis r3, r3, 1
/* 8012F90C 0012C84C  38 03 80 00 */ addi r0, r3, -32768
/* 8012F910 0012C850  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 8012F914 0012C854  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 8012F918 0012C858  D0 1F 34 7C */ stfs f0, 0x347c(r31)
lbl_8012F91C:
/* 8012F91C 0012C85C  7F E3 FB 78 */ mr r3, r31
/* 8012F920 0012C860  38 80 00 1B */ li r4, 0x1b
/* 8012F924 0012C864  3C A0 80 39 */ lis r5, lbl_8038EE28@ha
/* 8012F928 0012C868  38 C5 EE 28 */ addi r6, r5, lbl_8038EE28@l
/* 8012F92C 0012C86C  C0 26 00 18 */ lfs f1, 0x18(r6)
/* 8012F930 0012C870  FC 40 F8 90 */ fmr f2, f31
/* 8012F934 0012C874  38 A0 00 0C */ li r5, 0xc
/* 8012F938 0012C878  C0 66 00 20 */ lfs f3, 0x20(r6)
/* 8012F93C 0012C87C  4B FF 9D C9 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolf
/* 8012F940 0012C880  7F E3 FB 78 */ mr r3, r31
/* 8012F944 0012C884  3C 80 00 01 */ lis r4, 0x00010033@ha
/* 8012F948 0012C888  38 84 00 33 */ addi r4, r4, 0x00010033@l
/* 8012F94C 0012C88C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8012F950 0012C890  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8012F954 0012C894  7D 89 03 A6 */ mtctr r12
/* 8012F958 0012C898  4E 80 04 21 */ bctrl
/* 8012F95C 0012C89C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012F960 0012C8A0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8012F964 0012C8A4  38 00 00 05 */ li r0, 5
/* 8012F968 0012C8A8  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8012F96C 0012C8AC  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8012F970 0012C8B0  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8012F974 0012C8B4  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 8012F978 0012C8B8  C0 03 00 04 */ lfs f0, 4(r3)
/* 8012F97C 0012C8BC  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 8012F980 0012C8C0  C0 03 00 08 */ lfs f0, 8(r3)
/* 8012F984 0012C8C4  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 8012F988 0012C8C8  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012F98C 0012C8CC  C0 02 93 1C */ lfs f0, lbl_80452D1C-_SDA2_BASE_(r2)
/* 8012F990 0012C8D0  EC 00 F8 28 */ fsubs f0, f0, f31
/* 8012F994 0012C8D4  EC 01 00 24 */ fdivs f0, f1, f0
/* 8012F998 0012C8D8  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 8012F99C 0012C8DC  38 60 00 01 */ li r3, 1
lbl_8012F9A0:
/* 8012F9A0 0012C8E0  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 8012F9A4 0012C8E4  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 8012F9A8 0012C8E8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012F9AC 0012C8EC  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012F9B0 0012C8F0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8012F9B4 0012C8F4  7C 08 03 A6 */ mtlr r0
/* 8012F9B8 0012C8F8  38 21 00 20 */ addi r1, r1, 0x20
/* 8012F9BC 0012C8FC  4E 80 00 20 */ blr