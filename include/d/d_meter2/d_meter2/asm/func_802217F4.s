/* 802217F4 0021E734  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 802217F8 0021E738  7C 08 02 A6 */ mflr r0
/* 802217FC 0021E73C  90 01 00 74 */ stw r0, 0x74(r1)
/* 80221800 0021E740  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 80221804 0021E744  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 80221808 0021E748  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 8022180C 0021E74C  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 80221810 0021E750  39 61 00 50 */ addi r11, r1, 0x50
/* 80221814 0021E754  48 14 09 A9 */ bl _savegpr_21
/* 80221818 0021E758  7C 7B 1B 78 */ mr r27, r3
/* 8022181C 0021E75C  3B C0 00 00 */ li r30, 0
/* 80221820 0021E760  3B A0 00 00 */ li r29, 0
/* 80221824 0021E764  3B 80 00 00 */ li r28, 0
/* 80221828 0021E768  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8022182C 0021E76C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221830 0021E770  88 83 5E 35 */ lbz r4, 0x5e35(r3)
/* 80221834 0021E774  28 04 00 00 */ cmplwi r4, 0
/* 80221838 0021E778  41 82 00 1C */ beq lbl_80221854
/* 8022183C 0021E77C  88 03 5E 50 */ lbz r0, 0x5e50(r3)
/* 80221840 0021E780  98 83 5E 1D */ stb r4, 0x5e1d(r3)
/* 80221844 0021E784  98 03 5E 43 */ stb r0, 0x5e43(r3)
/* 80221848 0021E788  38 00 00 00 */ li r0, 0
/* 8022184C 0021E78C  98 03 5E 35 */ stb r0, 0x5e35(r3)
/* 80221850 0021E790  98 03 5E 50 */ stb r0, 0x5e50(r3)
lbl_80221854:
/* 80221854 0021E794  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221858 0021E798  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8022185C 0021E79C  80 9F 5D AC */ lwz r4, 0x5dac(r31)
/* 80221860 0021E7A0  38 00 00 00 */ li r0, 0
/* 80221864 0021E7A4  88 64 05 6A */ lbz r3, 0x56a(r4)
/* 80221868 0021E7A8  28 03 00 00 */ cmplwi r3, 0
/* 8022186C 0021E7AC  41 82 00 10 */ beq lbl_8022187C
/* 80221870 0021E7B0  28 03 00 26 */ cmplwi r3, 0x26
/* 80221874 0021E7B4  40 80 00 08 */ bge lbl_8022187C
/* 80221878 0021E7B8  38 00 00 01 */ li r0, 1
lbl_8022187C:
/* 8022187C 0021E7BC  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80221880 0021E7C0  41 82 00 64 */ beq lbl_802218E4
/* 80221884 0021E7C4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221888 0021E7C8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8022188C 0021E7CC  88 03 5E 1D */ lbz r0, 0x5e1d(r3)
/* 80221890 0021E7D0  28 00 00 00 */ cmplwi r0, 0
/* 80221894 0021E7D4  41 82 00 0C */ beq lbl_802218A0
/* 80221898 0021E7D8  28 00 00 26 */ cmplwi r0, 0x26
/* 8022189C 0021E7DC  40 82 00 24 */ bne lbl_802218C0
lbl_802218A0:
/* 802218A0 0021E7E0  38 00 00 44 */ li r0, 0x44
/* 802218A4 0021E7E4  98 03 5E 1D */ stb r0, 0x5e1d(r3)
/* 802218A8 0021E7E8  38 00 00 00 */ li r0, 0
/* 802218AC 0021E7EC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802218B0 0021E7F0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802218B4 0021E7F4  98 03 5E 43 */ stb r0, 0x5e43(r3)
/* 802218B8 0021E7F8  3B 80 00 01 */ li r28, 1
/* 802218BC 0021E7FC  48 00 00 68 */ b lbl_80221924
lbl_802218C0:
/* 802218C0 0021E800  28 00 00 44 */ cmplwi r0, 0x44
/* 802218C4 0021E804  40 82 00 60 */ bne lbl_80221924
/* 802218C8 0021E808  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 802218CC 0021E80C  88 03 07 62 */ lbz r0, 0x762(r3)
/* 802218D0 0021E810  28 00 00 07 */ cmplwi r0, 7
/* 802218D4 0021E814  41 82 00 50 */ beq lbl_80221924
/* 802218D8 0021E818  3B A0 00 01 */ li r29, 1
/* 802218DC 0021E81C  3B C0 00 01 */ li r30, 1
/* 802218E0 0021E820  48 00 00 44 */ b lbl_80221924
lbl_802218E4:
/* 802218E4 0021E824  88 04 05 6A */ lbz r0, 0x56a(r4)
/* 802218E8 0021E828  28 00 00 2A */ cmplwi r0, 0x2a
/* 802218EC 0021E82C  41 82 00 24 */ beq lbl_80221910
/* 802218F0 0021E830  80 1B 01 24 */ lwz r0, 0x124(r27)
/* 802218F4 0021E834  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802218F8 0021E838  41 82 00 2C */ beq lbl_80221924
/* 802218FC 0021E83C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221900 0021E840  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221904 0021E844  88 03 5E 1D */ lbz r0, 0x5e1d(r3)
/* 80221908 0021E848  28 00 00 26 */ cmplwi r0, 0x26
/* 8022190C 0021E84C  40 82 00 18 */ bne lbl_80221924
lbl_80221910:
/* 80221910 0021E850  38 00 00 00 */ li r0, 0
/* 80221914 0021E854  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221918 0021E858  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8022191C 0021E85C  98 03 5E 1D */ stb r0, 0x5e1d(r3)
/* 80221920 0021E860  98 03 5E 43 */ stb r0, 0x5e43(r3)
lbl_80221924:
/* 80221924 0021E864  88 1B 01 C5 */ lbz r0, 0x1c5(r27)
/* 80221928 0021E868  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8022192C 0021E86C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221930 0021E870  88 83 5E 1D */ lbz r4, 0x5e1d(r3)
/* 80221934 0021E874  7C 00 20 40 */ cmplw r0, r4
/* 80221938 0021E878  41 82 00 38 */ beq lbl_80221970
/* 8022193C 0021E87C  98 9B 01 C5 */ stb r4, 0x1c5(r27)
/* 80221940 0021E880  88 1B 01 C5 */ lbz r0, 0x1c5(r27)
/* 80221944 0021E884  28 00 00 2D */ cmplwi r0, 0x2d
/* 80221948 0021E888  41 82 00 0C */ beq lbl_80221954
/* 8022194C 0021E88C  28 00 00 2E */ cmplwi r0, 0x2e
/* 80221950 0021E890  40 82 00 18 */ bne lbl_80221968
lbl_80221954:
/* 80221954 0021E894  98 03 5E 1D */ stb r0, 0x5e1d(r3)
/* 80221958 0021E898  38 00 00 01 */ li r0, 1
/* 8022195C 0021E89C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221960 0021E8A0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221964 0021E8A4  98 03 5E 43 */ stb r0, 0x5e43(r3)
lbl_80221968:
/* 80221968 0021E8A8  3B A0 00 01 */ li r29, 1
/* 8022196C 0021E8AC  3B C0 00 01 */ li r30, 1
lbl_80221970:
/* 80221970 0021E8B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221974 0021E8B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221978 0021E8B8  88 03 5E 43 */ lbz r0, 0x5e43(r3)
/* 8022197C 0021E8BC  54 04 07 BC */ rlwinm r4, r0, 0, 0x1e, 0x1e
/* 80221980 0021E8C0  54 03 FF FE */ rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80221984 0021E8C4  88 1B 01 DD */ lbz r0, 0x1dd(r27)
/* 80221988 0021E8C8  7C 00 18 40 */ cmplw r0, r3
/* 8022198C 0021E8CC  41 82 00 18 */ beq lbl_802219A4
/* 80221990 0021E8D0  30 04 FF FF */ addic r0, r4, -1
/* 80221994 0021E8D4  7C 00 21 10 */ subfe r0, r0, r4
/* 80221998 0021E8D8  98 1B 01 DD */ stb r0, 0x1dd(r27)
/* 8022199C 0021E8DC  3B A0 00 01 */ li r29, 1
/* 802219A0 0021E8E0  3B C0 00 01 */ li r30, 1
lbl_802219A4:
/* 802219A4 0021E8E4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802219A8 0021E8E8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802219AC 0021E8EC  88 83 00 14 */ lbz r4, 0x14(r3)
/* 802219B0 0021E8F0  88 7B 01 E2 */ lbz r3, 0x1e2(r27)
/* 802219B4 0021E8F4  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 802219B8 0021E8F8  7C 03 00 40 */ cmplw r3, r0
/* 802219BC 0021E8FC  41 82 00 10 */ beq lbl_802219CC
/* 802219C0 0021E900  98 9B 01 E2 */ stb r4, 0x1e2(r27)
/* 802219C4 0021E904  3B A0 00 01 */ li r29, 1
/* 802219C8 0021E908  3B C0 00 01 */ li r30, 1
lbl_802219CC:
/* 802219CC 0021E90C  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 802219D0 0021E910  41 82 00 34 */ beq lbl_80221A04
/* 802219D4 0021E914  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 802219D8 0021E918  88 03 07 62 */ lbz r0, 0x762(r3)
/* 802219DC 0021E91C  28 00 00 07 */ cmplwi r0, 7
/* 802219E0 0021E920  40 82 00 24 */ bne lbl_80221A04
/* 802219E4 0021E924  88 1B 01 FE */ lbz r0, 0x1fe(r27)
/* 802219E8 0021E928  28 00 00 00 */ cmplwi r0, 0
/* 802219EC 0021E92C  40 82 00 4C */ bne lbl_80221A38
/* 802219F0 0021E930  3B A0 00 01 */ li r29, 1
/* 802219F4 0021E934  3B C0 00 01 */ li r30, 1
/* 802219F8 0021E938  38 00 00 01 */ li r0, 1
/* 802219FC 0021E93C  98 1B 01 FE */ stb r0, 0x1fe(r27)
/* 80221A00 0021E940  48 00 00 38 */ b lbl_80221A38
lbl_80221A04:
/* 80221A04 0021E944  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 80221A08 0021E948  40 82 00 30 */ bne lbl_80221A38
/* 80221A0C 0021E94C  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 80221A10 0021E950  88 03 07 62 */ lbz r0, 0x762(r3)
/* 80221A14 0021E954  28 00 00 07 */ cmplwi r0, 7
/* 80221A18 0021E958  41 82 00 20 */ beq lbl_80221A38
/* 80221A1C 0021E95C  88 1B 01 FE */ lbz r0, 0x1fe(r27)
/* 80221A20 0021E960  28 00 00 01 */ cmplwi r0, 1
/* 80221A24 0021E964  40 82 00 14 */ bne lbl_80221A38
/* 80221A28 0021E968  3B A0 00 01 */ li r29, 1
/* 80221A2C 0021E96C  3B C0 00 01 */ li r30, 1
/* 80221A30 0021E970  38 00 00 00 */ li r0, 0
/* 80221A34 0021E974  98 1B 01 FE */ stb r0, 0x1fe(r27)
lbl_80221A38:
/* 80221A38 0021E978  C0 1B 02 CC */ lfs f0, 0x2cc(r27)
/* 80221A3C 0021E97C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221A40 0021E980  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221A44 0021E984  C0 23 00 EC */ lfs f1, 0xec(r3)
/* 80221A48 0021E988  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221A4C 0021E98C  41 82 00 0C */ beq lbl_80221A58
/* 80221A50 0021E990  D0 3B 02 CC */ stfs f1, 0x2cc(r27)
/* 80221A54 0021E994  3B C0 00 01 */ li r30, 1
lbl_80221A58:
/* 80221A58 0021E998  38 60 00 00 */ li r3, 0
/* 80221A5C 0021E99C  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80221A60 0021E9A0  38 A4 EB C8 */ addi r5, r4, lbl_8042EBC8@l
/* 80221A64 0021E9A4  38 00 00 02 */ li r0, 2
/* 80221A68 0021E9A8  7C 09 03 A6 */ mtctr r0
lbl_80221A6C:
/* 80221A6C 0021E9AC  38 03 02 EC */ addi r0, r3, 0x2ec
/* 80221A70 0021E9B0  7C 1B 04 2E */ lfsx f0, r27, r0
/* 80221A74 0021E9B4  7C 85 1A 14 */ add r4, r5, r3
/* 80221A78 0021E9B8  C0 24 00 FC */ lfs f1, 0xfc(r4)
/* 80221A7C 0021E9BC  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221A80 0021E9C0  41 82 00 0C */ beq lbl_80221A8C
/* 80221A84 0021E9C4  7C 3B 05 2E */ stfsx f1, r27, r0
/* 80221A88 0021E9C8  3B C0 00 01 */ li r30, 1
lbl_80221A8C:
/* 80221A8C 0021E9CC  38 63 00 04 */ addi r3, r3, 4
/* 80221A90 0021E9D0  42 00 FF DC */ bdnz lbl_80221A6C
/* 80221A94 0021E9D4  C0 1B 02 D0 */ lfs f0, 0x2d0(r27)
/* 80221A98 0021E9D8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221A9C 0021E9DC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221AA0 0021E9E0  C0 23 00 F4 */ lfs f1, 0xf4(r3)
/* 80221AA4 0021E9E4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221AA8 0021E9E8  41 82 00 0C */ beq lbl_80221AB4
/* 80221AAC 0021E9EC  D0 3B 02 D0 */ stfs f1, 0x2d0(r27)
/* 80221AB0 0021E9F0  3B C0 00 01 */ li r30, 1
lbl_80221AB4:
/* 80221AB4 0021E9F4  C0 1B 02 D4 */ lfs f0, 0x2d4(r27)
/* 80221AB8 0021E9F8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221ABC 0021E9FC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221AC0 0021EA00  C0 23 00 F8 */ lfs f1, 0xf8(r3)
/* 80221AC4 0021EA04  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221AC8 0021EA08  41 82 00 0C */ beq lbl_80221AD4
/* 80221ACC 0021EA0C  D0 3B 02 D4 */ stfs f1, 0x2d4(r27)
/* 80221AD0 0021EA10  3B C0 00 01 */ li r30, 1
lbl_80221AD4:
/* 80221AD4 0021EA14  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221AD8 0021EA18  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221ADC 0021EA1C  88 03 04 29 */ lbz r0, 0x429(r3)
/* 80221AE0 0021EA20  28 00 00 00 */ cmplwi r0, 0
/* 80221AE4 0021EA24  41 82 00 08 */ beq lbl_80221AEC
/* 80221AE8 0021EA28  3B C0 00 01 */ li r30, 1
lbl_80221AEC:
/* 80221AEC 0021EA2C  38 60 00 00 */ li r3, 0
/* 80221AF0 0021EA30  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80221AF4 0021EA34  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80221AF8 0021EA38  38 00 00 02 */ li r0, 2
/* 80221AFC 0021EA3C  7C 09 03 A6 */ mtctr r0
lbl_80221B00:
/* 80221B00 0021EA40  7C DB 1A 14 */ add r6, r27, r3
/* 80221B04 0021EA44  C0 06 02 F4 */ lfs f0, 0x2f4(r6)
/* 80221B08 0021EA48  7C A4 1A 14 */ add r5, r4, r3
/* 80221B0C 0021EA4C  C0 25 02 20 */ lfs f1, 0x220(r5)
/* 80221B10 0021EA50  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221B14 0021EA54  41 82 00 0C */ beq lbl_80221B20
/* 80221B18 0021EA58  D0 26 02 F4 */ stfs f1, 0x2f4(r6)
/* 80221B1C 0021EA5C  3B C0 00 01 */ li r30, 1
lbl_80221B20:
/* 80221B20 0021EA60  C0 06 02 FC */ lfs f0, 0x2fc(r6)
/* 80221B24 0021EA64  C0 25 02 28 */ lfs f1, 0x228(r5)
/* 80221B28 0021EA68  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221B2C 0021EA6C  41 82 00 0C */ beq lbl_80221B38
/* 80221B30 0021EA70  D0 26 02 FC */ stfs f1, 0x2fc(r6)
/* 80221B34 0021EA74  3B C0 00 01 */ li r30, 1
lbl_80221B38:
/* 80221B38 0021EA78  C0 06 03 04 */ lfs f0, 0x304(r6)
/* 80221B3C 0021EA7C  C0 25 02 30 */ lfs f1, 0x230(r5)
/* 80221B40 0021EA80  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221B44 0021EA84  41 82 00 0C */ beq lbl_80221B50
/* 80221B48 0021EA88  D0 26 03 04 */ stfs f1, 0x304(r6)
/* 80221B4C 0021EA8C  3B C0 00 01 */ li r30, 1
lbl_80221B50:
/* 80221B50 0021EA90  38 63 00 04 */ addi r3, r3, 4
/* 80221B54 0021EA94  42 00 FF AC */ bdnz lbl_80221B00
/* 80221B58 0021EA98  C0 1B 03 0C */ lfs f0, 0x30c(r27)
/* 80221B5C 0021EA9C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221B60 0021EAA0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221B64 0021EAA4  C0 23 02 D4 */ lfs f1, 0x2d4(r3)
/* 80221B68 0021EAA8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221B6C 0021EAAC  41 82 00 0C */ beq lbl_80221B78
/* 80221B70 0021EAB0  D0 3B 03 0C */ stfs f1, 0x30c(r27)
/* 80221B74 0021EAB4  3B C0 00 01 */ li r30, 1
lbl_80221B78:
/* 80221B78 0021EAB8  C0 1B 03 10 */ lfs f0, 0x310(r27)
/* 80221B7C 0021EABC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221B80 0021EAC0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221B84 0021EAC4  C0 23 02 D8 */ lfs f1, 0x2d8(r3)
/* 80221B88 0021EAC8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221B8C 0021EACC  41 82 00 0C */ beq lbl_80221B98
/* 80221B90 0021EAD0  D0 3B 03 10 */ stfs f1, 0x310(r27)
/* 80221B94 0021EAD4  3B C0 00 01 */ li r30, 1
lbl_80221B98:
/* 80221B98 0021EAD8  C0 1B 03 14 */ lfs f0, 0x314(r27)
/* 80221B9C 0021EADC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221BA0 0021EAE0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221BA4 0021EAE4  C0 23 02 DC */ lfs f1, 0x2dc(r3)
/* 80221BA8 0021EAE8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221BAC 0021EAEC  41 82 00 0C */ beq lbl_80221BB8
/* 80221BB0 0021EAF0  D0 3B 03 14 */ stfs f1, 0x314(r27)
/* 80221BB4 0021EAF4  3B C0 00 01 */ li r30, 1
lbl_80221BB8:
/* 80221BB8 0021EAF8  7F 63 DB 78 */ mr r3, r27
/* 80221BBC 0021EAFC  48 00 3B 21 */ bl isShowLightDrop__9dMeter2_cFv
/* 80221BC0 0021EB00  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80221BC4 0021EB04  41 82 00 30 */ beq lbl_80221BF4
/* 80221BC8 0021EB08  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221BCC 0021EB0C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221BD0 0021EB10  C0 03 01 1C */ lfs f0, 0x11c(r3)
/* 80221BD4 0021EB14  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80221BD8 0021EB18  C0 03 01 20 */ lfs f0, 0x120(r3)
/* 80221BDC 0021EB1C  D0 01 00 08 */ stfs f0, 8(r1)
/* 80221BE0 0021EB20  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 80221BE4 0021EB24  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80221BE8 0021EB28  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80221BEC 0021EB2C  C3 E2 AF CC */ lfs f31, lbl_804549CC-_SDA2_BASE_(r2)
/* 80221BF0 0021EB30  48 00 00 B4 */ b lbl_80221CA4
lbl_80221BF4:
/* 80221BF4 0021EB34  88 1B 01 E6 */ lbz r0, 0x1e6(r27)
/* 80221BF8 0021EB38  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80221BFC 0021EB3C  41 82 00 44 */ beq lbl_80221C40
/* 80221C00 0021EB40  38 60 00 00 */ li r3, 0
/* 80221C04 0021EB44  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80221C08 0021EB48  38 C4 EB C8 */ addi r6, r4, lbl_8042EBC8@l
/* 80221C0C 0021EB4C  38 A1 00 10 */ addi r5, r1, 0x10
/* 80221C10 0021EB50  38 81 00 08 */ addi r4, r1, 8
/* 80221C14 0021EB54  38 00 00 02 */ li r0, 2
/* 80221C18 0021EB58  7C 09 03 A6 */ mtctr r0
lbl_80221C1C:
/* 80221C1C 0021EB5C  7C E6 1A 14 */ add r7, r6, r3
/* 80221C20 0021EB60  C0 07 01 04 */ lfs f0, 0x104(r7)
/* 80221C24 0021EB64  7C 05 1D 2E */ stfsx f0, r5, r3
/* 80221C28 0021EB68  C0 07 01 0C */ lfs f0, 0x10c(r7)
/* 80221C2C 0021EB6C  7C 04 1D 2E */ stfsx f0, r4, r3
/* 80221C30 0021EB70  38 63 00 04 */ addi r3, r3, 4
/* 80221C34 0021EB74  42 00 FF E8 */ bdnz lbl_80221C1C
/* 80221C38 0021EB78  C3 E2 AF CC */ lfs f31, lbl_804549CC-_SDA2_BASE_(r2)
/* 80221C3C 0021EB7C  48 00 00 68 */ b lbl_80221CA4
lbl_80221C40:
/* 80221C40 0021EB80  38 C0 00 00 */ li r6, 0
/* 80221C44 0021EB84  38 60 00 00 */ li r3, 0
/* 80221C48 0021EB88  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80221C4C 0021EB8C  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80221C50 0021EB90  C0 24 01 14 */ lfs f1, 0x114(r4)
/* 80221C54 0021EB94  C0 44 01 18 */ lfs f2, 0x118(r4)
/* 80221C58 0021EB98  38 A1 00 10 */ addi r5, r1, 0x10
/* 80221C5C 0021EB9C  38 81 00 08 */ addi r4, r1, 8
/* 80221C60 0021EBA0  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 80221C64 0021EBA4  38 00 00 02 */ li r0, 2
/* 80221C68 0021EBA8  7C 09 03 A6 */ mtctr r0
lbl_80221C6C:
/* 80221C6C 0021EBAC  80 1B 01 28 */ lwz r0, 0x128(r27)
/* 80221C70 0021EBB0  28 00 00 00 */ cmplwi r0, 0
/* 80221C74 0021EBB4  41 82 00 18 */ beq lbl_80221C8C
/* 80221C78 0021EBB8  2C 06 00 00 */ cmpwi r6, 0
/* 80221C7C 0021EBBC  40 82 00 10 */ bne lbl_80221C8C
/* 80221C80 0021EBC0  7C 25 1D 2E */ stfsx f1, r5, r3
/* 80221C84 0021EBC4  7C 44 1D 2E */ stfsx f2, r4, r3
/* 80221C88 0021EBC8  48 00 00 0C */ b lbl_80221C94
lbl_80221C8C:
/* 80221C8C 0021EBCC  7C 05 1D 2E */ stfsx f0, r5, r3
/* 80221C90 0021EBD0  7C 04 1D 2E */ stfsx f0, r4, r3
lbl_80221C94:
/* 80221C94 0021EBD4  38 C6 00 01 */ addi r6, r6, 1
/* 80221C98 0021EBD8  38 63 00 04 */ addi r3, r3, 4
/* 80221C9C 0021EBDC  42 00 FF D0 */ bdnz lbl_80221C6C
/* 80221CA0 0021EBE0  C3 E2 AF CC */ lfs f31, lbl_804549CC-_SDA2_BASE_(r2)
lbl_80221CA4:
/* 80221CA4 0021EBE4  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 80221CA8 0021EBE8  38 80 00 00 */ li r4, 0
/* 80221CAC 0021EBEC  4B FF A0 15 */ bl isBButtonShow__13dMeter2Draw_cFb
/* 80221CB0 0021EBF0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80221CB4 0021EBF4  41 82 00 20 */ beq lbl_80221CD4
/* 80221CB8 0021EBF8  88 1B 01 FF */ lbz r0, 0x1ff(r27)
/* 80221CBC 0021EBFC  28 00 00 00 */ cmplwi r0, 0
/* 80221CC0 0021EC00  40 82 00 2C */ bne lbl_80221CEC
/* 80221CC4 0021EC04  38 00 00 01 */ li r0, 1
/* 80221CC8 0021EC08  98 1B 01 FF */ stb r0, 0x1ff(r27)
/* 80221CCC 0021EC0C  3B C0 00 01 */ li r30, 1
/* 80221CD0 0021EC10  48 00 00 1C */ b lbl_80221CEC
lbl_80221CD4:
/* 80221CD4 0021EC14  88 1B 01 FF */ lbz r0, 0x1ff(r27)
/* 80221CD8 0021EC18  28 00 00 01 */ cmplwi r0, 1
/* 80221CDC 0021EC1C  40 82 00 10 */ bne lbl_80221CEC
/* 80221CE0 0021EC20  38 00 00 00 */ li r0, 0
/* 80221CE4 0021EC24  98 1B 01 FF */ stb r0, 0x1ff(r27)
/* 80221CE8 0021EC28  3B C0 00 01 */ li r30, 1
lbl_80221CEC:
/* 80221CEC 0021EC2C  3A A0 00 00 */ li r21, 0
/* 80221CF0 0021EC30  3B 40 00 00 */ li r26, 0
/* 80221CF4 0021EC34  3B 01 00 10 */ addi r24, r1, 0x10
/* 80221CF8 0021EC38  3B 21 00 08 */ addi r25, r1, 8
lbl_80221CFC:
/* 80221CFC 0021EC3C  7E FB D2 14 */ add r23, r27, r26
/* 80221D00 0021EC40  3A D7 01 48 */ addi r22, r23, 0x148
/* 80221D04 0021EC44  C0 17 01 48 */ lfs f0, 0x148(r23)
/* 80221D08 0021EC48  7F D8 D4 2E */ lfsx f30, r24, r26
/* 80221D0C 0021EC4C  FC 00 F0 00 */ fcmpu cr0, f0, f30
/* 80221D10 0021EC50  41 82 00 3C */ beq lbl_80221D4C
/* 80221D14 0021EC54  7E C3 B3 78 */ mr r3, r22
/* 80221D18 0021EC58  FC 20 F0 90 */ fmr f1, f30
/* 80221D1C 0021EC5C  C0 42 AF CC */ lfs f2, lbl_804549CC-_SDA2_BASE_(r2)
/* 80221D20 0021EC60  C0 62 AF F0 */ lfs f3, lbl_804549F0-_SDA2_BASE_(r2)
/* 80221D24 0021EC64  48 04 DD 19 */ bl cLib_addCalc2__FPffff
/* 80221D28 0021EC68  3B C0 00 01 */ li r30, 1
/* 80221D2C 0021EC6C  C0 16 00 00 */ lfs f0, 0(r22)
/* 80221D30 0021EC70  EC 00 F0 28 */ fsubs f0, f0, f30
/* 80221D34 0021EC74  FC 00 02 10 */ fabs f0, f0
/* 80221D38 0021EC78  FC 20 00 18 */ frsp f1, f0
/* 80221D3C 0021EC7C  C0 02 AF E8 */ lfs f0, lbl_804549E8-_SDA2_BASE_(r2)
/* 80221D40 0021EC80  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80221D44 0021EC84  40 80 00 08 */ bge lbl_80221D4C
/* 80221D48 0021EC88  D3 D6 00 00 */ stfs f30, 0(r22)
lbl_80221D4C:
/* 80221D4C 0021EC8C  3A D7 01 50 */ addi r22, r23, 0x150
/* 80221D50 0021EC90  C0 17 01 50 */ lfs f0, 0x150(r23)
/* 80221D54 0021EC94  7F D9 D4 2E */ lfsx f30, r25, r26
/* 80221D58 0021EC98  FC 00 F0 00 */ fcmpu cr0, f0, f30
/* 80221D5C 0021EC9C  41 82 00 3C */ beq lbl_80221D98
/* 80221D60 0021ECA0  7E C3 B3 78 */ mr r3, r22
/* 80221D64 0021ECA4  FC 20 F0 90 */ fmr f1, f30
/* 80221D68 0021ECA8  C0 42 AF CC */ lfs f2, lbl_804549CC-_SDA2_BASE_(r2)
/* 80221D6C 0021ECAC  C0 62 AF F0 */ lfs f3, lbl_804549F0-_SDA2_BASE_(r2)
/* 80221D70 0021ECB0  48 04 DC CD */ bl cLib_addCalc2__FPffff
/* 80221D74 0021ECB4  3B C0 00 01 */ li r30, 1
/* 80221D78 0021ECB8  C0 16 00 00 */ lfs f0, 0(r22)
/* 80221D7C 0021ECBC  EC 00 F0 28 */ fsubs f0, f0, f30
/* 80221D80 0021ECC0  FC 00 02 10 */ fabs f0, f0
/* 80221D84 0021ECC4  FC 20 00 18 */ frsp f1, f0
/* 80221D88 0021ECC8  C0 02 AF E8 */ lfs f0, lbl_804549E8-_SDA2_BASE_(r2)
/* 80221D8C 0021ECCC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80221D90 0021ECD0  40 80 00 08 */ bge lbl_80221D98
/* 80221D94 0021ECD4  D3 D6 00 00 */ stfs f30, 0(r22)
lbl_80221D98:
/* 80221D98 0021ECD8  3A B5 00 01 */ addi r21, r21, 1
/* 80221D9C 0021ECDC  2C 15 00 02 */ cmpwi r21, 2
/* 80221DA0 0021ECE0  3B 5A 00 04 */ addi r26, r26, 4
/* 80221DA4 0021ECE4  41 80 FF 58 */ blt lbl_80221CFC
/* 80221DA8 0021ECE8  C0 1B 01 58 */ lfs f0, 0x158(r27)
/* 80221DAC 0021ECEC  FC 00 F8 00 */ fcmpu cr0, f0, f31
/* 80221DB0 0021ECF0  41 82 00 3C */ beq lbl_80221DEC
/* 80221DB4 0021ECF4  38 7B 01 58 */ addi r3, r27, 0x158
/* 80221DB8 0021ECF8  FC 20 F8 90 */ fmr f1, f31
/* 80221DBC 0021ECFC  C0 42 AF CC */ lfs f2, lbl_804549CC-_SDA2_BASE_(r2)
/* 80221DC0 0021ED00  C0 62 AF F0 */ lfs f3, lbl_804549F0-_SDA2_BASE_(r2)
/* 80221DC4 0021ED04  48 04 DC 79 */ bl cLib_addCalc2__FPffff
/* 80221DC8 0021ED08  3B C0 00 01 */ li r30, 1
/* 80221DCC 0021ED0C  C0 1B 01 58 */ lfs f0, 0x158(r27)
/* 80221DD0 0021ED10  EC 00 F8 28 */ fsubs f0, f0, f31
/* 80221DD4 0021ED14  FC 00 02 10 */ fabs f0, f0
/* 80221DD8 0021ED18  FC 20 00 18 */ frsp f1, f0
/* 80221DDC 0021ED1C  C0 02 AF F8 */ lfs f0, lbl_804549F8-_SDA2_BASE_(r2)
/* 80221DE0 0021ED20  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80221DE4 0021ED24  40 80 00 08 */ bge lbl_80221DEC
/* 80221DE8 0021ED28  D3 FB 01 58 */ stfs f31, 0x158(r27)
lbl_80221DEC:
/* 80221DEC 0021ED2C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221DF0 0021ED30  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80221DF4 0021ED34  88 03 05 68 */ lbz r0, 0x568(r3)
/* 80221DF8 0021ED38  28 00 00 00 */ cmplwi r0, 0
/* 80221DFC 0021ED3C  41 82 00 1C */ beq lbl_80221E18
/* 80221E00 0021ED40  88 1B 04 BC */ lbz r0, 0x4bc(r27)
/* 80221E04 0021ED44  88 63 05 69 */ lbz r3, 0x569(r3)
/* 80221E08 0021ED48  7C 00 18 40 */ cmplw r0, r3
/* 80221E0C 0021ED4C  41 82 00 0C */ beq lbl_80221E18
/* 80221E10 0021ED50  98 7B 04 BC */ stb r3, 0x4bc(r27)
/* 80221E14 0021ED54  3B C0 00 01 */ li r30, 1
lbl_80221E18:
/* 80221E18 0021ED58  80 7F 5D AC */ lwz r3, 0x5dac(r31)
/* 80221E1C 0021ED5C  81 83 06 28 */ lwz r12, 0x628(r3)
/* 80221E20 0021ED60  81 8C 00 D0 */ lwz r12, 0xd0(r12)
/* 80221E24 0021ED64  7D 89 03 A6 */ mtctr r12
/* 80221E28 0021ED68  4E 80 04 21 */ bctrl
/* 80221E2C 0021ED6C  88 1B 01 C6 */ lbz r0, 0x1c6(r27)
/* 80221E30 0021ED70  7C 00 18 00 */ cmpw r0, r3
/* 80221E34 0021ED74  41 82 00 20 */ beq lbl_80221E54
/* 80221E38 0021ED78  80 7F 5D AC */ lwz r3, 0x5dac(r31)
/* 80221E3C 0021ED7C  81 83 06 28 */ lwz r12, 0x628(r3)
/* 80221E40 0021ED80  81 8C 00 D0 */ lwz r12, 0xd0(r12)
/* 80221E44 0021ED84  7D 89 03 A6 */ mtctr r12
/* 80221E48 0021ED88  4E 80 04 21 */ bctrl
/* 80221E4C 0021ED8C  98 7B 01 C6 */ stb r3, 0x1c6(r27)
/* 80221E50 0021ED90  3B C0 00 01 */ li r30, 1
lbl_80221E54:
/* 80221E54 0021ED94  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 80221E58 0021ED98  41 82 00 48 */ beq lbl_80221EA0
/* 80221E5C 0021ED9C  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 80221E60 0021EDA0  88 9B 01 C5 */ lbz r4, 0x1c5(r27)
/* 80221E64 0021EDA4  80 1B 01 28 */ lwz r0, 0x128(r27)
/* 80221E68 0021EDA8  7C 00 00 34 */ cntlzw r0, r0
/* 80221E6C 0021EDAC  54 05 D9 7E */ srwi r5, r0, 5
/* 80221E70 0021EDB0  C0 3B 01 48 */ lfs f1, 0x148(r27)
/* 80221E74 0021EDB4  C0 5B 01 50 */ lfs f2, 0x150(r27)
/* 80221E78 0021EDB8  C0 7B 01 4C */ lfs f3, 0x14c(r27)
/* 80221E7C 0021EDBC  C0 9B 01 54 */ lfs f4, 0x154(r27)
/* 80221E80 0021EDC0  C0 BB 01 58 */ lfs f5, 0x158(r27)
/* 80221E84 0021EDC4  7F A6 EB 78 */ mr r6, r29
/* 80221E88 0021EDC8  4B FF 52 5D */ bl drawButtonB__13dMeter2Draw_cFUcbfffffb
/* 80221E8C 0021EDCC  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 80221E90 0021EDD0  41 82 00 10 */ beq lbl_80221EA0
/* 80221E94 0021EDD4  38 00 00 00 */ li r0, 0
/* 80221E98 0021EDD8  80 7B 01 0C */ lwz r3, 0x10c(r27)
/* 80221E9C 0021EDDC  98 03 07 62 */ stb r0, 0x762(r3)
lbl_80221EA0:
/* 80221EA0 0021EDE0  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 80221EA4 0021EDE4  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 80221EA8 0021EDE8  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 80221EAC 0021EDEC  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 80221EB0 0021EDF0  39 61 00 50 */ addi r11, r1, 0x50
/* 80221EB4 0021EDF4  48 14 03 55 */ bl _restgpr_21
/* 80221EB8 0021EDF8  80 01 00 74 */ lwz r0, 0x74(r1)
/* 80221EBC 0021EDFC  7C 08 03 A6 */ mtlr r0
/* 80221EC0 0021EE00  38 21 00 70 */ addi r1, r1, 0x70
/* 80221EC4 0021EE04  4E 80 00 20 */ blr
