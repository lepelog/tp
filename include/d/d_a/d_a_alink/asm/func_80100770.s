/* 80100770 000FD6B0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80100774 000FD6B4  7C 08 02 A6 */ mflr r0
/* 80100778 000FD6B8  90 01 00 34 */ stw r0, 0x34(r1)
/* 8010077C 000FD6BC  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 80100780 000FD6C0  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 80100784 000FD6C4  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80100788 000FD6C8  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8010078C 000FD6CC  7C 7E 1B 78 */ mr r30, r3
/* 80100790 000FD6D0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80100794 000FD6D4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80100798 000FD6D8  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 8010079C 000FD6DC  7F E3 FB 78 */ mr r3, r31
/* 801007A0 000FD6E0  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 801007A4 000FD6E4  4B F7 3E BD */ bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 801007A8 000FD6E8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801007AC 000FD6EC  41 82 00 34 */ beq lbl_801007E0
/* 801007B0 000FD6F0  7F E3 FB 78 */ mr r3, r31
/* 801007B4 000FD6F4  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 801007B8 000FD6F8  4B F7 43 05 */ bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 801007BC 000FD6FC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801007C0 000FD700  41 82 00 20 */ beq lbl_801007E0
/* 801007C4 000FD704  7F E3 FB 78 */ mr r3, r31
/* 801007C8 000FD708  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 801007CC 000FD70C  38 A0 00 01 */ li r5, 1
/* 801007D0 000FD710  38 DE 04 D0 */ addi r6, r30, 0x4d0
/* 801007D4 000FD714  38 FE 04 DC */ addi r7, r30, 0x4dc
/* 801007D8 000FD718  39 1E 04 E4 */ addi r8, r30, 0x4e4
/* 801007DC 000FD71C  4B F7 50 A5 */ bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_801007E0:
/* 801007E0 000FD720  7F C3 F3 78 */ mr r3, r30
/* 801007E4 000FD724  38 80 00 33 */ li r4, 0x33
/* 801007E8 000FD728  4B FB 2A 69 */ bl setDoStatus__9daAlink_cFUc
/* 801007EC 000FD72C  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 801007F0 000FD730  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801007F4 000FD734  41 82 00 20 */ beq lbl_80100814
/* 801007F8 000FD738  7F C3 F3 78 */ mr r3, r30
/* 801007FC 000FD73C  38 80 00 01 */ li r4, 1
/* 80100800 000FD740  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 80100804 000FD744  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 80100808 000FD748  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 8010080C 000FD74C  4B FC 62 3D */ bl procFallInit__9daAlink_cFif
/* 80100810 000FD750  48 00 00 BC */ b lbl_801008CC
lbl_80100814:
/* 80100814 000FD754  C0 5E 04 D8 */ lfs f2, 0x4d8(r30)
/* 80100818 000FD758  C0 22 95 A4 */ lfs f1, lbl_80452FA4-_SDA2_BASE_(r2)
/* 8010081C 000FD75C  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 80100820 000FD760  EC 21 00 2A */ fadds f1, f1, f0
/* 80100824 000FD764  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 80100828 000FD768  EC 21 00 28 */ fsubs f1, f1, f0
/* 8010082C 000FD76C  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 80100830 000FD770  D0 01 00 08 */ stfs f0, 8(r1)
/* 80100834 000FD774  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 80100838 000FD778  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 8010083C 000FD77C  D0 1E 1D 98 */ stfs f0, 0x1d98(r30)
/* 80100840 000FD780  D0 3E 1D 9C */ stfs f1, 0x1d9c(r30)
/* 80100844 000FD784  D0 5E 1D A0 */ stfs f2, 0x1da0(r30)
/* 80100848 000FD788  7F E3 FB 78 */ mr r3, r31
/* 8010084C 000FD78C  38 9E 1D 5C */ addi r4, r30, 0x1d5c
/* 80100850 000FD790  4B F7 4C 4D */ bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80100854 000FD794  FF E0 08 90 */ fmr f31, f1
/* 80100858 000FD798  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 8010085C 000FD79C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80100860 000FD7A0  EC 01 00 2A */ fadds f0, f1, f0
/* 80100864 000FD7A4  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 80100868 000FD7A8  40 80 00 44 */ bge lbl_801008AC
/* 8010086C 000FD7AC  7F E3 FB 78 */ mr r3, r31
/* 80100870 000FD7B0  38 9E 1D 5C */ addi r4, r30, 0x1d5c
/* 80100874 000FD7B4  4B F7 44 E9 */ bl GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
/* 80100878 000FD7B8  2C 03 00 00 */ cmpwi r3, 0
/* 8010087C 000FD7BC  41 82 00 30 */ beq lbl_801008AC
/* 80100880 000FD7C0  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 80100884 000FD7C4  C0 1E 1A 08 */ lfs f0, 0x1a08(r30)
/* 80100888 000FD7C8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010088C 000FD7CC  40 81 00 20 */ ble lbl_801008AC
/* 80100890 000FD7D0  C0 02 95 A4 */ lfs f0, lbl_80452FA4-_SDA2_BASE_(r2)
/* 80100894 000FD7D4  EC 1F 00 28 */ fsubs f0, f31, f0
/* 80100898 000FD7D8  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 8010089C 000FD7DC  38 7E 1E 2C */ addi r3, r30, 0x1e2c
/* 801008A0 000FD7E0  38 9E 1D 5C */ addi r4, r30, 0x1d5c
/* 801008A4 000FD7E4  48 16 78 A5 */ bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 801008A8 000FD7E8  48 00 00 20 */ b lbl_801008C8
lbl_801008AC:
/* 801008AC 000FD7EC  7F C3 F3 78 */ mr r3, r30
/* 801008B0 000FD7F0  38 80 00 01 */ li r4, 1
/* 801008B4 000FD7F4  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 801008B8 000FD7F8  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 801008BC 000FD7FC  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 801008C0 000FD800  4B FC 61 89 */ bl procFallInit__9daAlink_cFif
/* 801008C4 000FD804  48 00 00 08 */ b lbl_801008CC
lbl_801008C8:
/* 801008C8 000FD808  38 60 00 00 */ li r3, 0
lbl_801008CC:
/* 801008CC 000FD80C  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 801008D0 000FD810  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 801008D4 000FD814  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 801008D8 000FD818  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 801008DC 000FD81C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 801008E0 000FD820  7C 08 03 A6 */ mtlr r0
/* 801008E4 000FD824  38 21 00 30 */ addi r1, r1, 0x30
/* 801008E8 000FD828  4E 80 00 20 */ blr
