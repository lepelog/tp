/* 800C77F4 000C4734  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800C77F8 000C4738  7C 08 02 A6 */ mflr r0
/* 800C77FC 000C473C  90 01 00 64 */ stw r0, 0x64(r1)
/* 800C7800 000C4740  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 800C7804 000C4744  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 800C7808 000C4748  39 61 00 50 */ addi r11, r1, 0x50
/* 800C780C 000C474C  48 29 A9 C9 */ bl _savegpr_27
/* 800C7810 000C4750  7C 7E 1B 78 */ mr r30, r3
/* 800C7814 000C4754  3B A0 00 00 */ li r29, 0
/* 800C7818 000C4758  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C781C 000C475C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C7820 000C4760  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 800C7824 000C4764  38 7F 3F 90 */ addi r3, r31, 0x3f90
/* 800C7828 000C4768  38 00 00 00 */ li r0, 0
/* 800C782C 000C476C  88 9F 40 75 */ lbz r4, 0x4075(r31)
/* 800C7830 000C4770  28 04 00 00 */ cmplwi r4, 0
/* 800C7834 000C4774  41 82 00 0C */ beq lbl_800C7840
/* 800C7838 000C4778  28 04 00 02 */ cmplwi r4, 2
/* 800C783C 000C477C  40 82 00 08 */ bne lbl_800C7844
lbl_800C7840:
/* 800C7840 000C4780  38 00 00 01 */ li r0, 1
lbl_800C7844:
/* 800C7844 000C4784  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 800C7848 000C4788  41 82 00 3C */ beq lbl_800C7884
/* 800C784C 000C478C  7F C4 F3 78 */ mr r4, r30
/* 800C7850 000C4790  38 A0 00 00 */ li r5, 0
/* 800C7854 000C4794  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800C7858 000C4798  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800C785C 000C479C  4B F7 B9 11 */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 800C7860 000C47A0  2C 03 00 00 */ cmpwi r3, 0
/* 800C7864 000C47A4  40 82 00 0C */ bne lbl_800C7870
/* 800C7868 000C47A8  38 60 00 00 */ li r3, 0
/* 800C786C 000C47AC  48 00 03 D8 */ b lbl_800C7C44
lbl_800C7870:
/* 800C7870 000C47B0  38 00 00 05 */ li r0, 5
/* 800C7874 000C47B4  B0 1E 06 04 */ sth r0, 0x604(r30)
/* 800C7878 000C47B8  38 00 00 00 */ li r0, 0
/* 800C787C 000C47BC  B0 1E 05 6C */ sth r0, 0x56c(r30)
/* 800C7880 000C47C0  3B A0 00 01 */ li r29, 1
lbl_800C7884:
/* 800C7884 000C47C4  7F C3 F3 78 */ mr r3, r30
/* 800C7888 000C47C8  38 80 01 4D */ li r4, 0x14d
/* 800C788C 000C47CC  4B FF B5 19 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800C7890 000C47D0  2C 03 00 00 */ cmpwi r3, 0
/* 800C7894 000C47D4  40 82 00 0C */ bne lbl_800C78A0
/* 800C7898 000C47D8  38 60 00 01 */ li r3, 1
/* 800C789C 000C47DC  48 00 03 A8 */ b lbl_800C7C44
lbl_800C78A0:
/* 800C78A0 000C47E0  93 BE 31 98 */ stw r29, 0x3198(r30)
/* 800C78A4 000C47E4  38 00 00 00 */ li r0, 0
/* 800C78A8 000C47E8  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800C78AC 000C47EC  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800C78B0 000C47F0  B0 1E 30 10 */ sth r0, 0x3010(r30)
/* 800C78B4 000C47F4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C78B8 000C47F8  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800C78BC 000C47FC  B0 1E 30 14 */ sth r0, 0x3014(r30)
/* 800C78C0 000C4800  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800C78C4 000C4804  54 03 01 8D */ rlwinm. r3, r0, 0, 6, 6
/* 800C78C8 000C4808  41 82 00 10 */ beq lbl_800C78D8
/* 800C78CC 000C480C  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C78D0 000C4810  28 00 00 39 */ cmplwi r0, 0x39
/* 800C78D4 000C4814  41 82 00 18 */ beq lbl_800C78EC
lbl_800C78D8:
/* 800C78D8 000C4818  28 03 00 00 */ cmplwi r3, 0
/* 800C78DC 000C481C  40 82 00 3C */ bne lbl_800C7918
/* 800C78E0 000C4820  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C78E4 000C4824  28 00 00 3A */ cmplwi r0, 0x3a
/* 800C78E8 000C4828  40 82 00 30 */ bne lbl_800C7918
lbl_800C78EC:
/* 800C78EC 000C482C  38 00 00 01 */ li r0, 1
/* 800C78F0 000C4830  B0 1E 30 0A */ sth r0, 0x300a(r30)
/* 800C78F4 000C4834  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C78F8 000C4838  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 800C78FC 000C483C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C7900 000C4840  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800C7904 000C4844  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800C7908 000C4848  41 82 03 30 */ beq lbl_800C7C38
/* 800C790C 000C484C  A8 1E 04 E4 */ lha r0, 0x4e4(r30)
/* 800C7910 000C4850  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800C7914 000C4854  48 00 03 24 */ b lbl_800C7C38
lbl_800C7918:
/* 800C7918 000C4858  7F C3 F3 78 */ mr r3, r30
/* 800C791C 000C485C  38 80 00 00 */ li r4, 0
/* 800C7920 000C4860  38 A0 00 01 */ li r5, 1
/* 800C7924 000C4864  4B FF 99 B9 */ bl deleteEquipItem__9daAlink_cFii
/* 800C7928 000C4868  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800C792C 000C486C  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C7930 000C4870  41 82 00 24 */ beq lbl_800C7954
/* 800C7934 000C4874  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800C7938 000C4878  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800C793C 000C487C  38 63 01 70 */ addi r3, r3, 0x170
/* 800C7940 000C4880  4B FD 61 21 */ bl checkStageName__9daAlink_cFPCc
/* 800C7944 000C4884  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C7948 000C4888  41 82 00 0C */ beq lbl_800C7954
/* 800C794C 000C488C  38 00 00 01 */ li r0, 1
/* 800C7950 000C4890  B0 1E 30 10 */ sth r0, 0x3010(r30)
lbl_800C7954:
/* 800C7954 000C4894  38 00 00 00 */ li r0, 0
/* 800C7958 000C4898  B0 1E 30 0A */ sth r0, 0x300a(r30)
/* 800C795C 000C489C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800C7960 000C48A0  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800C7964 000C48A4  41 82 00 B8 */ beq lbl_800C7A1C
/* 800C7968 000C48A8  7F C3 F3 78 */ mr r3, r30
/* 800C796C 000C48AC  38 80 00 70 */ li r4, 0x70
/* 800C7970 000C48B0  48 06 1D 09 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 800C7974 000C48B4  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 800C7978 000C48B8  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 800C797C 000C48BC  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 800C7980 000C48C0  C0 03 00 04 */ lfs f0, 4(r3)
/* 800C7984 000C48C4  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 800C7988 000C48C8  C0 03 00 08 */ lfs f0, 8(r3)
/* 800C798C 000C48CC  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 800C7990 000C48D0  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C7994 000C48D4  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800C7998 000C48D8  3C 60 80 39 */ lis r3, lbl_8038D664@ha
/* 800C799C 000C48DC  38 63 D6 64 */ addi r3, r3, lbl_8038D664@l
/* 800C79A0 000C48E0  C0 03 00 40 */ lfs f0, 0x40(r3)
/* 800C79A4 000C48E4  D0 1E 34 80 */ stfs f0, 0x3480(r30)
/* 800C79A8 000C48E8  A8 1E 04 E4 */ lha r0, 0x4e4(r30)
/* 800C79AC 000C48EC  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800C79B0 000C48F0  83 ED 8A 98 */ lwz r31, lbl_80451018-_SDA_BASE_(r13)
/* 800C79B4 000C48F4  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C79B8 000C48F8  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C79BC 000C48FC  41 82 02 68 */ beq lbl_800C7C24
/* 800C79C0 000C4900  3B A0 00 01 */ li r29, 1
/* 800C79C4 000C4904  48 0E 4B B9 */ bl dKy_darkworld_check
/* 800C79C8 000C4908  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 800C79CC 000C490C  28 00 00 01 */ cmplwi r0, 1
/* 800C79D0 000C4910  41 82 00 24 */ beq lbl_800C79F4
/* 800C79D4 000C4914  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C79D8 000C4918  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C79DC 000C491C  38 63 00 28 */ addi r3, r3, 0x28
/* 800C79E0 000C4920  38 80 00 03 */ li r4, 3
/* 800C79E4 000C4924  4B F6 B2 09 */ bl isTransformLV__21dSv_player_status_b_cCFi
/* 800C79E8 000C4928  2C 03 00 00 */ cmpwi r3, 0
/* 800C79EC 000C492C  40 82 00 08 */ bne lbl_800C79F4
/* 800C79F0 000C4930  3B A0 00 00 */ li r29, 0
lbl_800C79F4:
/* 800C79F4 000C4934  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800C79F8 000C4938  41 82 02 2C */ beq lbl_800C7C24
/* 800C79FC 000C493C  88 1F 08 4F */ lbz r0, 0x84f(r31)
/* 800C7A00 000C4940  28 00 00 00 */ cmplwi r0, 0
/* 800C7A04 000C4944  40 82 02 20 */ bne lbl_800C7C24
/* 800C7A08 000C4948  38 00 00 03 */ li r0, 3
/* 800C7A0C 000C494C  98 1F 08 4F */ stb r0, 0x84f(r31)
/* 800C7A10 000C4950  38 00 00 0F */ li r0, 0xf
/* 800C7A14 000C4954  90 1F 08 C0 */ stw r0, 0x8c0(r31)
/* 800C7A18 000C4958  48 00 02 0C */ b lbl_800C7C24
lbl_800C7A1C:
/* 800C7A1C 000C495C  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C7A20 000C4960  28 00 00 39 */ cmplwi r0, 0x39
/* 800C7A24 000C4964  40 82 00 2C */ bne lbl_800C7A50
/* 800C7A28 000C4968  80 1E 06 10 */ lwz r0, 0x610(r30)
/* 800C7A2C 000C496C  2C 00 00 01 */ cmpwi r0, 1
/* 800C7A30 000C4970  40 82 00 20 */ bne lbl_800C7A50
/* 800C7A34 000C4974  7F C3 F3 78 */ mr r3, r30
/* 800C7A38 000C4978  3C 80 00 01 */ lis r4, 0x000100AD@ha
/* 800C7A3C 000C497C  38 84 00 AD */ addi r4, r4, 0x000100AD@l
/* 800C7A40 000C4980  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800C7A44 000C4984  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800C7A48 000C4988  7D 89 03 A6 */ mtctr r12
/* 800C7A4C 000C498C  4E 80 04 21 */ bctrl
lbl_800C7A50:
/* 800C7A50 000C4990  7F C3 F3 78 */ mr r3, r30
/* 800C7A54 000C4994  38 80 00 FD */ li r4, 0xfd
/* 800C7A58 000C4998  4B FE 55 29 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C7A5C 000C499C  7F C3 F3 78 */ mr r3, r30
/* 800C7A60 000C49A0  38 80 00 01 */ li r4, 1
/* 800C7A64 000C49A4  4B FF 7D 39 */ bl setMetamorphoseModel__9daAlink_cFi
/* 800C7A68 000C49A8  3C 60 80 42 */ lis r3, lbl_80425514@ha
/* 800C7A6C 000C49AC  C4 03 55 14 */ lfsu f0, lbl_80425514@l(r3)
/* 800C7A70 000C49B0  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 800C7A74 000C49B4  C0 03 00 04 */ lfs f0, 4(r3)
/* 800C7A78 000C49B8  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 800C7A7C 000C49BC  C0 03 00 08 */ lfs f0, 8(r3)
/* 800C7A80 000C49C0  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 800C7A84 000C49C4  3C 60 80 39 */ lis r3, lbl_8038D664@ha
/* 800C7A88 000C49C8  38 63 D6 64 */ addi r3, r3, lbl_8038D664@l
/* 800C7A8C 000C49CC  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 800C7A90 000C49D0  D0 1E 34 80 */ stfs f0, 0x3480(r30)
/* 800C7A94 000C49D4  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800C7A98 000C49D8  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800C7A9C 000C49DC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C7AA0 000C49E0  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C7AA4 000C49E4  7C 64 02 14 */ add r3, r4, r0
/* 800C7AA8 000C49E8  C0 03 00 04 */ lfs f0, 4(r3)
/* 800C7AAC 000C49EC  C0 3E 04 D8 */ lfs f1, 0x4d8(r30)
/* 800C7AB0 000C49F0  C0 42 93 50 */ lfs f2, lbl_80452D50-_SDA2_BASE_(r2)
/* 800C7AB4 000C49F4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800C7AB8 000C49F8  EC 81 00 2A */ fadds f4, f1, f0
/* 800C7ABC 000C49FC  C0 22 92 D0 */ lfs f1, lbl_80452CD0-_SDA2_BASE_(r2)
/* 800C7AC0 000C4A00  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800C7AC4 000C4A04  EC 61 00 2A */ fadds f3, f1, f0
/* 800C7AC8 000C4A08  7C 04 04 2E */ lfsx f0, r4, r0
/* 800C7ACC 000C4A0C  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 800C7AD0 000C4A10  EC 02 00 32 */ fmuls f0, f2, f0
/* 800C7AD4 000C4A14  EC 01 00 2A */ fadds f0, f1, f0
/* 800C7AD8 000C4A18  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 800C7ADC 000C4A1C  D0 61 00 24 */ stfs f3, 0x24(r1)
/* 800C7AE0 000C4A20  D0 81 00 28 */ stfs f4, 0x28(r1)
/* 800C7AE4 000C4A24  38 7E 1D 08 */ addi r3, r30, 0x1d08
/* 800C7AE8 000C4A28  38 81 00 20 */ addi r4, r1, 0x20
/* 800C7AEC 000C4A2C  48 1A 02 3D */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800C7AF0 000C4A30  7F E3 FB 78 */ mr r3, r31
/* 800C7AF4 000C4A34  38 9E 1D 08 */ addi r4, r30, 0x1d08
/* 800C7AF8 000C4A38  4B FA C9 A9 */ bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800C7AFC 000C4A3C  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 800C7B00 000C4A40  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 800C7B04 000C4A44  41 82 01 18 */ beq lbl_800C7C1C
/* 800C7B08 000C4A48  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 800C7B0C 000C4A4C  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800C7B10 000C4A50  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800C7B14 000C4A54  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800C7B18 000C4A58  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800C7B1C 000C4A5C  C0 1E 04 D8 */ lfs f0, 0x4d8(r30)
/* 800C7B20 000C4A60  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 800C7B24 000C4A64  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 800C7B28 000C4A68  D0 01 00 08 */ stfs f0, 8(r1)
/* 800C7B2C 000C4A6C  FC 00 08 18 */ frsp f0, f1
/* 800C7B30 000C4A70  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800C7B34 000C4A74  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 800C7B38 000C4A78  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800C7B3C 000C4A7C  3B 80 00 00 */ li r28, 0
/* 800C7B40 000C4A80  3B 60 00 00 */ li r27, 0
/* 800C7B44 000C4A84  3B A0 00 00 */ li r29, 0
/* 800C7B48 000C4A88  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800C7B4C 000C4A8C  EF E0 08 2A */ fadds f31, f0, f1
lbl_800C7B50:
/* 800C7B50 000C4A90  2C 1B 00 03 */ cmpwi r27, 3
/* 800C7B54 000C4A94  40 82 00 0C */ bne lbl_800C7B60
/* 800C7B58 000C4A98  D3 E1 00 18 */ stfs f31, 0x18(r1)
/* 800C7B5C 000C4A9C  48 00 00 18 */ b lbl_800C7B74
lbl_800C7B60:
/* 800C7B60 000C4AA0  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 800C7B64 000C4AA4  38 1D 18 E0 */ addi r0, r29, 0x18e0
/* 800C7B68 000C4AA8  7C 1E 04 2E */ lfsx f0, r30, r0
/* 800C7B6C 000C4AAC  EC 01 00 2A */ fadds f0, f1, f0
/* 800C7B70 000C4AB0  D0 01 00 18 */ stfs f0, 0x18(r1)
lbl_800C7B74:
/* 800C7B74 000C4AB4  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800C7B78 000C4AB8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800C7B7C 000C4ABC  7F C3 F3 78 */ mr r3, r30
/* 800C7B80 000C4AC0  38 81 00 14 */ addi r4, r1, 0x14
/* 800C7B84 000C4AC4  38 A1 00 08 */ addi r5, r1, 8
/* 800C7B88 000C4AC8  4B FD A6 11 */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800C7B8C 000C4ACC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C7B90 000C4AD0  41 82 00 30 */ beq lbl_800C7BC0
/* 800C7B94 000C4AD4  38 7E 1B 5C */ addi r3, r30, 0x1b5c
/* 800C7B98 000C4AD8  4B FA E1 75 */ bl dBgS_CheckBWallPoly
/* 800C7B9C 000C4ADC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C7BA0 000C4AE0  41 82 00 20 */ beq lbl_800C7BC0
/* 800C7BA4 000C4AE4  7F E3 FB 78 */ mr r3, r31
/* 800C7BA8 000C4AE8  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800C7BAC 000C4AEC  4B FA D2 55 */ bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800C7BB0 000C4AF0  2C 03 00 07 */ cmpwi r3, 7
/* 800C7BB4 000C4AF4  41 82 00 0C */ beq lbl_800C7BC0
/* 800C7BB8 000C4AF8  3B 80 00 01 */ li r28, 1
/* 800C7BBC 000C4AFC  48 00 00 14 */ b lbl_800C7BD0
lbl_800C7BC0:
/* 800C7BC0 000C4B00  3B 7B 00 01 */ addi r27, r27, 1
/* 800C7BC4 000C4B04  2C 1B 00 04 */ cmpwi r27, 4
/* 800C7BC8 000C4B08  3B BD 00 40 */ addi r29, r29, 0x40
/* 800C7BCC 000C4B0C  41 80 FF 84 */ blt lbl_800C7B50
lbl_800C7BD0:
/* 800C7BD0 000C4B10  2C 1C 00 00 */ cmpwi r28, 0
/* 800C7BD4 000C4B14  41 82 00 10 */ beq lbl_800C7BE4
/* 800C7BD8 000C4B18  A8 1E 2F F0 */ lha r0, 0x2ff0(r30)
/* 800C7BDC 000C4B1C  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800C7BE0 000C4B20  48 00 00 44 */ b lbl_800C7C24
lbl_800C7BE4:
/* 800C7BE4 000C4B24  38 61 00 20 */ addi r3, r1, 0x20
/* 800C7BE8 000C4B28  38 9E 04 D0 */ addi r4, r30, 0x4d0
/* 800C7BEC 000C4B2C  7C 65 1B 78 */ mr r5, r3
/* 800C7BF0 000C4B30  48 27 F4 C5 */ bl PSVECSubtract
/* 800C7BF4 000C4B34  38 61 00 20 */ addi r3, r1, 0x20
/* 800C7BF8 000C4B38  48 19 F5 59 */ bl atan2sY_XZ__4cXyzCFv
/* 800C7BFC 000C4B3C  B0 7E 30 0C */ sth r3, 0x300c(r30)
/* 800C7C00 000C4B40  A8 7E 30 0C */ lha r3, 0x300c(r30)
/* 800C7C04 000C4B44  48 29 D4 CD */ bl abs
/* 800C7C08 000C4B48  2C 03 31 C7 */ cmpwi r3, 0x31c7
/* 800C7C0C 000C4B4C  40 81 00 18 */ ble lbl_800C7C24
/* 800C7C10 000C4B50  A8 1E 2F F0 */ lha r0, 0x2ff0(r30)
/* 800C7C14 000C4B54  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800C7C18 000C4B58  48 00 00 0C */ b lbl_800C7C24
lbl_800C7C1C:
/* 800C7C1C 000C4B5C  38 00 00 00 */ li r0, 0
/* 800C7C20 000C4B60  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_800C7C24:
/* 800C7C24 000C4B64  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C7C28 000C4B68  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 800C7C2C 000C4B6C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C7C30 000C4B70  38 00 00 00 */ li r0, 0
/* 800C7C34 000C4B74  B0 1E 30 12 */ sth r0, 0x3012(r30)
lbl_800C7C38:
/* 800C7C38 000C4B78  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800C7C3C 000C4B7C  D0 1E 34 84 */ stfs f0, 0x3484(r30)
/* 800C7C40 000C4B80  38 60 00 01 */ li r3, 1
lbl_800C7C44:
/* 800C7C44 000C4B84  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 800C7C48 000C4B88  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 800C7C4C 000C4B8C  39 61 00 50 */ addi r11, r1, 0x50
/* 800C7C50 000C4B90  48 29 A5 D1 */ bl _restgpr_27
/* 800C7C54 000C4B94  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800C7C58 000C4B98  7C 08 03 A6 */ mtlr r0
/* 800C7C5C 000C4B9C  38 21 00 60 */ addi r1, r1, 0x60
/* 800C7C60 000C4BA0  4E 80 00 20 */ blr