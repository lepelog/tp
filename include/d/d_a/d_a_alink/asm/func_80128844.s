/* 80128844 00125784  94 21 FF 00 */ stwu r1, -0x100(r1)
/* 80128848 00125788  7C 08 02 A6 */ mflr r0
/* 8012884C 0012578C  90 01 01 04 */ stw r0, 0x104(r1)
/* 80128850 00125790  DB E1 00 F0 */ stfd f31, 0xf0(r1)
/* 80128854 00125794  F3 E1 00 F8 */ psq_st f31, 248(r1), 0, 0
/* 80128858 00125798  DB C1 00 E0 */ stfd f30, 0xe0(r1)
/* 8012885C 0012579C  F3 C1 00 E8 */ psq_st f30, 232(r1), 0, 0
/* 80128860 001257A0  DB A1 00 D0 */ stfd f29, 0xd0(r1)
/* 80128864 001257A4  F3 A1 00 D8 */ psq_st f29, 216(r1), 0, 0
/* 80128868 001257A8  DB 81 00 C0 */ stfd f28, 0xc0(r1)
/* 8012886C 001257AC  F3 81 00 C8 */ psq_st f28, 200(r1), 0, 0
/* 80128870 001257B0  DB 61 00 B0 */ stfd f27, 0xb0(r1)
/* 80128874 001257B4  F3 61 00 B8 */ psq_st f27, 184(r1), 0, 0
/* 80128878 001257B8  DB 41 00 A0 */ stfd f26, 0xa0(r1)
/* 8012887C 001257BC  F3 41 00 A8 */ psq_st f26, 168(r1), 0, 0
/* 80128880 001257C0  DB 21 00 90 */ stfd f25, 0x90(r1)
/* 80128884 001257C4  F3 21 00 98 */ psq_st f25, 152(r1), 0, 0
/* 80128888 001257C8  DB 01 00 80 */ stfd f24, 0x80(r1)
/* 8012888C 001257CC  F3 01 00 88 */ psq_st f24, 136(r1), 0, 0
/* 80128890 001257D0  DA E1 00 70 */ stfd f23, 0x70(r1)
/* 80128894 001257D4  F2 E1 00 78 */ psq_st f23, 120(r1), 0, 0
/* 80128898 001257D8  DA C1 00 60 */ stfd f22, 0x60(r1)
/* 8012889C 001257DC  F2 C1 00 68 */ psq_st f22, 104(r1), 0, 0
/* 801288A0 001257E0  DA A1 00 50 */ stfd f21, 0x50(r1)
/* 801288A4 001257E4  F2 A1 00 58 */ psq_st f21, 88(r1), 0, 0
/* 801288A8 001257E8  DA 81 00 40 */ stfd f20, 0x40(r1)
/* 801288AC 001257EC  F2 81 00 48 */ psq_st f20, 72(r1), 0, 0
/* 801288B0 001257F0  39 61 00 40 */ addi r11, r1, 0x40
/* 801288B4 001257F4  48 23 99 1D */ bl _savegpr_26
/* 801288B8 001257F8  7C 7D 1B 78 */ mr r29, r3
/* 801288BC 001257FC  FF 80 08 90 */ fmr f28, f1
/* 801288C0 00125800  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 801288C4 00125804  3B E3 D6 58 */ addi r31, r3, lbl_8038D658@l
/* 801288C8 00125808  80 1D 31 74 */ lwz r0, 0x3174(r29)
/* 801288CC 0012580C  2C 00 00 08 */ cmpwi r0, 8
/* 801288D0 00125810  40 82 00 0C */ bne lbl_801288DC
/* 801288D4 00125814  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801288D8 00125818  48 00 00 1C */ b lbl_801288F4
lbl_801288DC:
/* 801288DC 0012581C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 801288E0 00125820  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 801288E4 00125824  A8 1D 2F F0 */ lha r0, 0x2ff0(r29)
/* 801288E8 00125828  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 801288EC 0012582C  7C 63 02 14 */ add r3, r3, r0
/* 801288F0 00125830  C0 23 00 04 */ lfs f1, 4(r3)
lbl_801288F4:
/* 801288F4 00125834  C0 1D 33 98 */ lfs f0, 0x3398(r29)
/* 801288F8 00125838  EC 00 00 72 */ fmuls f0, f0, f1
/* 801288FC 0012583C  FC 00 02 10 */ fabs f0, f0
/* 80128900 00125840  FC 20 00 18 */ frsp f1, f0
/* 80128904 00125844  C0 1D 05 94 */ lfs f0, 0x594(r29)
/* 80128908 00125848  EF 61 00 24 */ fdivs f27, f1, f0
/* 8012890C 0012584C  3B DD 1F E8 */ addi r30, r29, 0x1fe8
/* 80128910 00125850  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128914 00125854  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80128918 00125858  41 82 00 38 */ beq lbl_80128950
/* 8012891C 0012585C  38 9F 17 D0 */ addi r4, r31, 0x17d0
/* 80128920 00125860  C3 04 00 88 */ lfs f24, 0x88(r4)
/* 80128924 00125864  C2 A4 00 98 */ lfs f21, 0x98(r4)
/* 80128928 00125868  C2 E4 00 84 */ lfs f23, 0x84(r4)
/* 8012892C 0012586C  C2 C4 00 8C */ lfs f22, 0x8c(r4)
/* 80128930 00125870  C3 E4 00 70 */ lfs f31, 0x70(r4)
/* 80128934 00125874  C3 C4 00 74 */ lfs f30, 0x74(r4)
/* 80128938 00125878  C3 44 00 78 */ lfs f26, 0x78(r4)
/* 8012893C 0012587C  C3 A4 00 7C */ lfs f29, 0x7c(r4)
/* 80128940 00125880  38 7F 1D 98 */ addi r3, r31, 0x1d98
/* 80128944 00125884  C3 23 00 64 */ lfs f25, 0x64(r3)
/* 80128948 00125888  C2 84 00 9C */ lfs f20, 0x9c(r4)
/* 8012894C 0012588C  48 00 00 34 */ b lbl_80128980
lbl_80128950:
/* 80128950 00125890  38 9F 18 D0 */ addi r4, r31, 0x18d0
/* 80128954 00125894  C3 04 00 28 */ lfs f24, 0x28(r4)
/* 80128958 00125898  C2 A4 00 30 */ lfs f21, 0x30(r4)
/* 8012895C 0012589C  C2 E4 00 24 */ lfs f23, 0x24(r4)
/* 80128960 001258A0  C2 C4 00 2C */ lfs f22, 0x2c(r4)
/* 80128964 001258A4  C3 E4 00 14 */ lfs f31, 0x14(r4)
/* 80128968 001258A8  C3 C4 00 18 */ lfs f30, 0x18(r4)
/* 8012896C 001258AC  C3 44 00 1C */ lfs f26, 0x1c(r4)
/* 80128970 001258B0  C3 A4 00 20 */ lfs f29, 0x20(r4)
/* 80128974 001258B4  38 7F 1D 98 */ addi r3, r31, 0x1d98
/* 80128978 001258B8  C3 23 00 6C */ lfs f25, 0x6c(r3)
/* 8012897C 001258BC  C2 84 00 34 */ lfs f20, 0x34(r4)
lbl_80128980:
/* 80128980 001258C0  FC 1B C0 40 */ fcmpo cr0, f27, f24
/* 80128984 001258C4  41 80 00 3C */ blt lbl_801289C0
/* 80128988 001258C8  7F A3 EB 78 */ mr r3, r29
/* 8012898C 001258CC  4B F8 AB 75 */ bl checkAttentionState__9daAlink_cFv
/* 80128990 001258D0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80128994 001258D4  40 82 00 2C */ bne lbl_801289C0
/* 80128998 001258D8  7F A3 EB 78 */ mr r3, r29
/* 8012899C 001258DC  38 80 00 01 */ li r4, 1
/* 801289A0 001258E0  38 A0 00 01 */ li r5, 1
/* 801289A4 001258E4  4B F9 2B 15 */ bl checkHeavyStateOn__9daAlink_cFii
/* 801289A8 001258E8  2C 03 00 00 */ cmpwi r3, 0
/* 801289AC 001258EC  40 82 00 14 */ bne lbl_801289C0
/* 801289B0 001258F0  7F A3 EB 78 */ mr r3, r29
/* 801289B4 001258F4  4B F8 98 39 */ bl checkSlope__9daAlink_cCFv
/* 801289B8 001258F8  2C 03 00 00 */ cmpwi r3, 0
/* 801289BC 001258FC  41 82 02 B4 */ beq lbl_80128C70
lbl_801289C0:
/* 801289C0 00125900  38 00 00 00 */ li r0, 0
/* 801289C4 00125904  98 1D 2F C1 */ stb r0, 0x2fc1(r29)
/* 801289C8 00125908  FC 1B C0 40 */ fcmpo cr0, f27, f24
/* 801289CC 0012590C  41 80 00 2C */ blt lbl_801289F8
/* 801289D0 00125910  7F A3 EB 78 */ mr r3, r29
/* 801289D4 00125914  4B F8 AB 2D */ bl checkAttentionState__9daAlink_cFv
/* 801289D8 00125918  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801289DC 0012591C  40 82 00 1C */ bne lbl_801289F8
/* 801289E0 00125920  7F A3 EB 78 */ mr r3, r29
/* 801289E4 00125924  38 80 00 01 */ li r4, 1
/* 801289E8 00125928  38 A0 00 01 */ li r5, 1
/* 801289EC 0012592C  4B F9 2A CD */ bl checkHeavyStateOn__9daAlink_cFii
/* 801289F0 00125930  2C 03 00 00 */ cmpwi r3, 0
/* 801289F4 00125934  41 82 00 24 */ beq lbl_80128A18
lbl_801289F8:
/* 801289F8 00125938  A8 1D 30 D0 */ lha r0, 0x30d0(r29)
/* 801289FC 0012593C  2C 00 00 00 */ cmpwi r0, 0
/* 80128A00 00125940  41 82 00 18 */ beq lbl_80128A18
/* 80128A04 00125944  38 00 00 00 */ li r0, 0
/* 80128A08 00125948  B0 1D 30 D0 */ sth r0, 0x30d0(r29)
/* 80128A0C 0012594C  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128A10 00125950  54 00 02 90 */ rlwinm r0, r0, 0, 0xa, 8
/* 80128A14 00125954  90 1D 05 74 */ stw r0, 0x574(r29)
lbl_80128A18:
/* 80128A18 00125958  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128A1C 0012595C  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 80128A20 00125960  41 82 00 14 */ beq lbl_80128A34
/* 80128A24 00125964  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128A28 00125968  54 00 02 4E */ rlwinm r0, r0, 0, 9, 7
/* 80128A2C 0012596C  90 1D 05 74 */ stw r0, 0x574(r29)
/* 80128A30 00125970  FF 80 A8 90 */ fmr f28, f21
lbl_80128A34:
/* 80128A34 00125974  3B 60 00 01 */ li r27, 1
/* 80128A38 00125978  3B 40 00 00 */ li r26, 0
/* 80128A3C 0012597C  7F A3 EB 78 */ mr r3, r29
/* 80128A40 00125980  38 80 00 01 */ li r4, 1
/* 80128A44 00125984  38 A0 00 01 */ li r5, 1
/* 80128A48 00125988  4B F9 2A 71 */ bl checkHeavyStateOn__9daAlink_cFii
/* 80128A4C 0012598C  2C 03 00 00 */ cmpwi r3, 0
/* 80128A50 00125990  41 82 00 18 */ beq lbl_80128A68
/* 80128A54 00125994  3B C0 00 45 */ li r30, 0x45
/* 80128A58 00125998  3B 80 00 45 */ li r28, 0x45
/* 80128A5C 0012599C  C3 C2 94 DC */ lfs f30, lbl_80452EDC-_SDA2_BASE_(r2)
/* 80128A60 001259A0  FF 40 F0 90 */ fmr f26, f30
/* 80128A64 001259A4  48 00 00 0C */ b lbl_80128A70
lbl_80128A68:
/* 80128A68 001259A8  3B 80 00 02 */ li r28, 2
/* 80128A6C 001259AC  3B C0 00 01 */ li r30, 1
lbl_80128A70:
/* 80128A70 001259B0  FC 1B B8 40 */ fcmpo cr0, f27, f23
/* 80128A74 001259B4  40 80 01 64 */ bge lbl_80128BD8
/* 80128A78 001259B8  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 80128A7C 001259BC  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80128A80 001259C0  41 82 01 0C */ beq lbl_80128B8C
/* 80128A84 001259C4  3B 60 00 02 */ li r27, 2
/* 80128A88 001259C8  A8 7D 2F E6 */ lha r3, 0x2fe6(r29)
/* 80128A8C 001259CC  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 80128A90 001259D0  7C 03 00 50 */ subf r0, r3, r0
/* 80128A94 001259D4  7C 03 07 34 */ extsh r3, r0
/* 80128A98 001259D8  7C 7C 1B 78 */ mr r28, r3
/* 80128A9C 001259DC  48 23 C6 35 */ bl abs
/* 80128AA0 001259E0  2C 03 00 00 */ cmpwi r3, 0
/* 80128AA4 001259E4  40 81 00 84 */ ble lbl_80128B28
/* 80128AA8 001259E8  7F A3 EB 78 */ mr r3, r29
/* 80128AAC 001259EC  4B F8 AA 55 */ bl checkAttentionState__9daAlink_cFv
/* 80128AB0 001259F0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80128AB4 001259F4  40 82 00 74 */ bne lbl_80128B28
/* 80128AB8 001259F8  7F 83 E3 78 */ mr r3, r28
/* 80128ABC 001259FC  48 23 C6 15 */ bl abs
/* 80128AC0 00125A00  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80128AC4 00125A04  6C 60 80 00 */ xoris r0, r3, 0x8000
/* 80128AC8 00125A08  90 01 00 1C */ stw r0, 0x1c(r1)
/* 80128ACC 00125A0C  3C 00 43 30 */ lis r0, 0x4330
/* 80128AD0 00125A10  90 01 00 18 */ stw r0, 0x18(r1)
/* 80128AD4 00125A14  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 80128AD8 00125A18  EC 20 08 28 */ fsubs f1, f0, f1
/* 80128ADC 00125A1C  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 80128AE0 00125A20  EC 20 00 72 */ fmuls f1, f0, f1
/* 80128AE4 00125A24  C0 02 97 00 */ lfs f0, lbl_80453100-_SDA2_BASE_(r2)
/* 80128AE8 00125A28  EC 20 08 2A */ fadds f1, f0, f1
/* 80128AEC 00125A2C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128AF0 00125A30  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80128AF4 00125A34  40 81 00 08 */ ble lbl_80128AFC
/* 80128AF8 00125A38  FC 20 00 90 */ fmr f1, f0
lbl_80128AFC:
/* 80128AFC 00125A3C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128B00 00125A40  EC 20 08 28 */ fsubs f1, f0, f1
/* 80128B04 00125A44  7F A3 EB 78 */ mr r3, r29
/* 80128B08 00125A48  FC 40 F0 90 */ fmr f2, f30
/* 80128B0C 00125A4C  FC 60 F8 90 */ fmr f3, f31
/* 80128B10 00125A50  7F C4 F3 78 */ mr r4, r30
/* 80128B14 00125A54  38 A0 00 00 */ li r5, 0
/* 80128B18 00125A58  38 C0 00 02 */ li r6, 2
/* 80128B1C 00125A5C  FC 80 E0 90 */ fmr f4, f28
/* 80128B20 00125A60  48 00 09 6D */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128B24 00125A64  48 00 03 70 */ b lbl_80128E94
lbl_80128B28:
/* 80128B28 00125A68  7F A3 EB 78 */ mr r3, r29
/* 80128B2C 00125A6C  4B F8 A9 D5 */ bl checkAttentionState__9daAlink_cFv
/* 80128B30 00125A70  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80128B34 00125A74  41 82 00 14 */ beq lbl_80128B48
/* 80128B38 00125A78  3B 40 00 1C */ li r26, 0x1c
/* 80128B3C 00125A7C  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128B40 00125A80  C3 E3 00 B8 */ lfs f31, 0xb8(r3)
/* 80128B44 00125A84  48 00 00 48 */ b lbl_80128B8C
lbl_80128B48:
/* 80128B48 00125A88  C0 3D 35 C0 */ lfs f1, 0x35c0(r29)
/* 80128B4C 00125A8C  C0 1D 35 B8 */ lfs f0, 0x35b8(r29)
/* 80128B50 00125A90  D0 01 00 08 */ stfs f0, 8(r1)
/* 80128B54 00125A94  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80128B58 00125A98  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80128B5C 00125A9C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 80128B60 00125AA0  38 61 00 08 */ addi r3, r1, 8
/* 80128B64 00125AA4  48 21 E5 D5 */ bl PSVECSquareMag
/* 80128B68 00125AA8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128B6C 00125AAC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80128B70 00125AB0  40 81 00 1C */ ble lbl_80128B8C
/* 80128B74 00125AB4  7F A3 EB 78 */ mr r3, r29
/* 80128B78 00125AB8  4B FE D0 A9 */ bl checkEventRun__9daAlink_cCFv
/* 80128B7C 00125ABC  2C 03 00 00 */ cmpwi r3, 0
/* 80128B80 00125AC0  40 82 00 0C */ bne lbl_80128B8C
/* 80128B84 00125AC4  3B 40 00 71 */ li r26, 0x71
/* 80128B88 00125AC8  C3 E2 92 B8 */ lfs f31, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_80128B8C:
/* 80128B8C 00125ACC  7F A3 EB 78 */ mr r3, r29
/* 80128B90 00125AD0  4B F8 96 5D */ bl checkSlope__9daAlink_cCFv
/* 80128B94 00125AD4  2C 03 00 00 */ cmpwi r3, 0
/* 80128B98 00125AD8  41 82 00 18 */ beq lbl_80128BB0
/* 80128B9C 00125ADC  3B C0 00 1D */ li r30, 0x1d
/* 80128BA0 00125AE0  3B 40 00 00 */ li r26, 0
/* 80128BA4 00125AE4  FF C0 C8 90 */ fmr f30, f25
/* 80128BA8 00125AE8  38 00 00 02 */ li r0, 2
/* 80128BAC 00125AEC  98 1D 2F C1 */ stb r0, 0x2fc1(r29)
lbl_80128BB0:
/* 80128BB0 00125AF0  EC 3B B8 24 */ fdivs f1, f27, f23
/* 80128BB4 00125AF4  7F A3 EB 78 */ mr r3, r29
/* 80128BB8 00125AF8  FC 40 F8 90 */ fmr f2, f31
/* 80128BBC 00125AFC  FC 60 F0 90 */ fmr f3, f30
/* 80128BC0 00125B00  7F 44 D3 78 */ mr r4, r26
/* 80128BC4 00125B04  7F C5 F3 78 */ mr r5, r30
/* 80128BC8 00125B08  7F 66 DB 78 */ mr r6, r27
/* 80128BCC 00125B0C  FC 80 E0 90 */ fmr f4, f28
/* 80128BD0 00125B10  48 00 08 BD */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128BD4 00125B14  48 00 00 88 */ b lbl_80128C5C
lbl_80128BD8:
/* 80128BD8 00125B18  7F A3 EB 78 */ mr r3, r29
/* 80128BDC 00125B1C  4B F8 96 11 */ bl checkSlope__9daAlink_cCFv
/* 80128BE0 00125B20  2C 03 00 00 */ cmpwi r3, 0
/* 80128BE4 00125B24  41 82 00 3C */ beq lbl_80128C20
/* 80128BE8 00125B28  38 00 00 02 */ li r0, 2
/* 80128BEC 00125B2C  98 1D 2F C1 */ stb r0, 0x2fc1(r29)
/* 80128BF0 00125B30  7F A3 EB 78 */ mr r3, r29
/* 80128BF4 00125B34  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128BF8 00125B38  FC 40 C8 90 */ fmr f2, f25
/* 80128BFC 00125B3C  FC 60 C8 90 */ fmr f3, f25
/* 80128C00 00125B40  38 80 00 1D */ li r4, 0x1d
/* 80128C04 00125B44  38 A0 00 1D */ li r5, 0x1d
/* 80128C08 00125B48  38 C0 00 01 */ li r6, 1
/* 80128C0C 00125B4C  FC 80 E0 90 */ fmr f4, f28
/* 80128C10 00125B50  48 00 08 7D */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128C14 00125B54  38 00 00 02 */ li r0, 2
/* 80128C18 00125B58  98 1D 2F C1 */ stb r0, 0x2fc1(r29)
/* 80128C1C 00125B5C  48 00 00 40 */ b lbl_80128C5C
lbl_80128C20:
/* 80128C20 00125B60  EC 3B B8 28 */ fsubs f1, f27, f23
/* 80128C24 00125B64  EC 18 B8 28 */ fsubs f0, f24, f23
/* 80128C28 00125B68  EC 21 00 24 */ fdivs f1, f1, f0
/* 80128C2C 00125B6C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128C30 00125B70  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80128C34 00125B74  40 81 00 08 */ ble lbl_80128C3C
/* 80128C38 00125B78  FC 20 00 90 */ fmr f1, f0
lbl_80128C3C:
/* 80128C3C 00125B7C  7F A3 EB 78 */ mr r3, r29
/* 80128C40 00125B80  FC 40 F0 90 */ fmr f2, f30
/* 80128C44 00125B84  FC 60 D0 90 */ fmr f3, f26
/* 80128C48 00125B88  7F C4 F3 78 */ mr r4, r30
/* 80128C4C 00125B8C  7F 85 E3 78 */ mr r5, r28
/* 80128C50 00125B90  38 C0 00 01 */ li r6, 1
/* 80128C54 00125B94  FC 80 E0 90 */ fmr f4, f28
/* 80128C58 00125B98  48 00 08 35 */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
lbl_80128C5C:
/* 80128C5C 00125B9C  2C 1B 00 01 */ cmpwi r27, 1
/* 80128C60 00125BA0  41 82 02 34 */ beq lbl_80128E94
/* 80128C64 00125BA4  7F A3 EB 78 */ mr r3, r29
/* 80128C68 00125BA8  4B F8 A8 99 */ bl checkAttentionState__9daAlink_cFv
/* 80128C6C 00125BAC  48 00 02 28 */ b lbl_80128E94
lbl_80128C70:
/* 80128C70 00125BB0  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128C74 00125BB4  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 80128C78 00125BB8  40 82 00 14 */ bne lbl_80128C8C
/* 80128C7C 00125BBC  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128C80 00125BC0  64 00 00 80 */ oris r0, r0, 0x80
/* 80128C84 00125BC4  90 1D 05 74 */ stw r0, 0x574(r29)
/* 80128C88 00125BC8  FF 80 A8 90 */ fmr f28, f21
lbl_80128C8C:
/* 80128C8C 00125BCC  38 00 00 01 */ li r0, 1
/* 80128C90 00125BD0  98 1D 2F C1 */ stb r0, 0x2fc1(r29)
/* 80128C94 00125BD4  FC 1B B0 40 */ fcmpo cr0, f27, f22
/* 80128C98 00125BD8  40 80 00 44 */ bge lbl_80128CDC
/* 80128C9C 00125BDC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128CA0 00125BE0  EC 20 A0 28 */ fsubs f1, f0, f20
/* 80128CA4 00125BE4  EC 1B C0 28 */ fsubs f0, f27, f24
/* 80128CA8 00125BE8  EC 21 00 32 */ fmuls f1, f1, f0
/* 80128CAC 00125BEC  EC 16 C0 28 */ fsubs f0, f22, f24
/* 80128CB0 00125BF0  EC 01 00 24 */ fdivs f0, f1, f0
/* 80128CB4 00125BF4  EC 34 00 2A */ fadds f1, f20, f0
/* 80128CB8 00125BF8  7F A3 EB 78 */ mr r3, r29
/* 80128CBC 00125BFC  FC 40 F8 90 */ fmr f2, f31
/* 80128CC0 00125C00  FC 60 E8 90 */ fmr f3, f29
/* 80128CC4 00125C04  38 80 00 00 */ li r4, 0
/* 80128CC8 00125C08  38 A0 00 03 */ li r5, 3
/* 80128CCC 00125C0C  38 C0 00 01 */ li r6, 1
/* 80128CD0 00125C10  FC 80 E0 90 */ fmr f4, f28
/* 80128CD4 00125C14  48 00 07 B9 */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128CD8 00125C18  48 00 01 8C */ b lbl_80128E64
lbl_80128CDC:
/* 80128CDC 00125C1C  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80128CE0 00125C20  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80128CE4 00125C24  40 82 00 2C */ bne lbl_80128D10
/* 80128CE8 00125C28  7F A3 EB 78 */ mr r3, r29
/* 80128CEC 00125C2C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128CF0 00125C30  FC 40 E8 90 */ fmr f2, f29
/* 80128CF4 00125C34  FC 60 E8 90 */ fmr f3, f29
/* 80128CF8 00125C38  38 80 00 03 */ li r4, 3
/* 80128CFC 00125C3C  38 A0 00 03 */ li r5, 3
/* 80128D00 00125C40  38 C0 00 01 */ li r6, 1
/* 80128D04 00125C44  FC 80 E0 90 */ fmr f4, f28
/* 80128D08 00125C48  48 00 07 85 */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128D0C 00125C4C  48 00 00 98 */ b lbl_80128DA4
lbl_80128D10:
/* 80128D10 00125C50  EC 3B B0 28 */ fsubs f1, f27, f22
/* 80128D14 00125C54  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128D18 00125C58  C0 03 00 90 */ lfs f0, 0x90(r3)
/* 80128D1C 00125C5C  EC 00 B0 28 */ fsubs f0, f0, f22
/* 80128D20 00125C60  EF C1 00 24 */ fdivs f30, f1, f0
/* 80128D24 00125C64  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80128D28 00125C68  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 80128D2C 00125C6C  40 81 00 08 */ ble lbl_80128D34
/* 80128D30 00125C70  FF C0 00 90 */ fmr f30, f0
lbl_80128D34:
/* 80128D34 00125C74  28 00 00 00 */ cmplwi r0, 0
/* 80128D38 00125C78  41 82 00 44 */ beq lbl_80128D7C
/* 80128D3C 00125C7C  7F A3 EB 78 */ mr r3, r29
/* 80128D40 00125C80  4B FF F1 E1 */ bl checkWolfSlowDash__9daAlink_cFv
/* 80128D44 00125C84  2C 03 00 00 */ cmpwi r3, 0
/* 80128D48 00125C88  41 82 00 10 */ beq lbl_80128D58
/* 80128D4C 00125C8C  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128D50 00125C90  C0 63 00 E8 */ lfs f3, 0xe8(r3)
/* 80128D54 00125C94  48 00 00 30 */ b lbl_80128D84
lbl_80128D58:
/* 80128D58 00125C98  88 1D 2F C7 */ lbz r0, 0x2fc7(r29)
/* 80128D5C 00125C9C  28 00 00 02 */ cmplwi r0, 2
/* 80128D60 00125CA0  40 82 00 10 */ bne lbl_80128D70
/* 80128D64 00125CA4  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128D68 00125CA8  C0 63 00 F8 */ lfs f3, 0xf8(r3)
/* 80128D6C 00125CAC  48 00 00 18 */ b lbl_80128D84
lbl_80128D70:
/* 80128D70 00125CB0  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128D74 00125CB4  C0 63 00 CC */ lfs f3, 0xcc(r3)
/* 80128D78 00125CB8  48 00 00 0C */ b lbl_80128D84
lbl_80128D7C:
/* 80128D7C 00125CBC  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80128D80 00125CC0  C0 63 00 80 */ lfs f3, 0x80(r3)
lbl_80128D84:
/* 80128D84 00125CC4  7F A3 EB 78 */ mr r3, r29
/* 80128D88 00125CC8  FC 20 F0 90 */ fmr f1, f30
/* 80128D8C 00125CCC  FC 40 E8 90 */ fmr f2, f29
/* 80128D90 00125CD0  38 80 00 03 */ li r4, 3
/* 80128D94 00125CD4  38 A0 00 27 */ li r5, 0x27
/* 80128D98 00125CD8  38 C0 00 01 */ li r6, 1
/* 80128D9C 00125CDC  FC 80 E0 90 */ fmr f4, f28
/* 80128DA0 00125CE0  48 00 06 ED */ bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
lbl_80128DA4:
/* 80128DA4 00125CE4  7F C3 F3 78 */ mr r3, r30
/* 80128DA8 00125CE8  38 9F 25 04 */ addi r4, r31, 0x2504
/* 80128DAC 00125CEC  C0 24 00 10 */ lfs f1, 0x10(r4)
/* 80128DB0 00125CF0  48 1F F6 7D */ bl checkPass__12J3DFrameCtrlFf
/* 80128DB4 00125CF4  2C 03 00 00 */ cmpwi r3, 0
/* 80128DB8 00125CF8  41 82 00 10 */ beq lbl_80128DC8
/* 80128DBC 00125CFC  38 00 00 08 */ li r0, 8
/* 80128DC0 00125D00  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
/* 80128DC4 00125D04  48 00 00 6C */ b lbl_80128E30
lbl_80128DC8:
/* 80128DC8 00125D08  7F C3 F3 78 */ mr r3, r30
/* 80128DCC 00125D0C  38 9F 25 04 */ addi r4, r31, 0x2504
/* 80128DD0 00125D10  C0 24 00 14 */ lfs f1, 0x14(r4)
/* 80128DD4 00125D14  48 1F F6 59 */ bl checkPass__12J3DFrameCtrlFf
/* 80128DD8 00125D18  2C 03 00 00 */ cmpwi r3, 0
/* 80128DDC 00125D1C  41 82 00 10 */ beq lbl_80128DEC
/* 80128DE0 00125D20  38 00 00 10 */ li r0, 0x10
/* 80128DE4 00125D24  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
/* 80128DE8 00125D28  48 00 00 48 */ b lbl_80128E30
lbl_80128DEC:
/* 80128DEC 00125D2C  7F C3 F3 78 */ mr r3, r30
/* 80128DF0 00125D30  38 9F 25 04 */ addi r4, r31, 0x2504
/* 80128DF4 00125D34  C0 24 00 18 */ lfs f1, 0x18(r4)
/* 80128DF8 00125D38  48 1F F6 35 */ bl checkPass__12J3DFrameCtrlFf
/* 80128DFC 00125D3C  2C 03 00 00 */ cmpwi r3, 0
/* 80128E00 00125D40  41 82 00 10 */ beq lbl_80128E10
/* 80128E04 00125D44  38 00 00 20 */ li r0, 0x20
/* 80128E08 00125D48  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
/* 80128E0C 00125D4C  48 00 00 24 */ b lbl_80128E30
lbl_80128E10:
/* 80128E10 00125D50  7F C3 F3 78 */ mr r3, r30
/* 80128E14 00125D54  38 9F 25 04 */ addi r4, r31, 0x2504
/* 80128E18 00125D58  C0 24 00 1C */ lfs f1, 0x1c(r4)
/* 80128E1C 00125D5C  48 1F F6 11 */ bl checkPass__12J3DFrameCtrlFf
/* 80128E20 00125D60  2C 03 00 00 */ cmpwi r3, 0
/* 80128E24 00125D64  41 82 00 0C */ beq lbl_80128E30
/* 80128E28 00125D68  38 00 00 40 */ li r0, 0x40
/* 80128E2C 00125D6C  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
lbl_80128E30:
/* 80128E30 00125D70  7F A3 EB 78 */ mr r3, r29
/* 80128E34 00125D74  4B F7 EB 1D */ bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 80128E38 00125D78  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80128E3C 00125D7C  41 82 00 28 */ beq lbl_80128E64
/* 80128E40 00125D80  80 1D 05 88 */ lwz r0, 0x588(r29)
/* 80128E44 00125D84  60 00 20 00 */ ori r0, r0, 0x2000
/* 80128E48 00125D88  90 1D 05 88 */ stw r0, 0x588(r29)
/* 80128E4C 00125D8C  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 80128E50 00125D90  28 00 FF FF */ cmplwi r0, 0xffff
/* 80128E54 00125D94  40 82 00 10 */ bne lbl_80128E64
/* 80128E58 00125D98  7F A3 EB 78 */ mr r3, r29
/* 80128E5C 00125D9C  38 80 02 B7 */ li r4, 0x2b7
/* 80128E60 00125DA0  4B F8 44 E1 */ bl setUpperAnimeBase__9daAlink_cFUs
lbl_80128E64:
/* 80128E64 00125DA4  7F C3 F3 78 */ mr r3, r30
/* 80128E68 00125DA8  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 80128E6C 00125DAC  48 1F F5 C1 */ bl checkPass__12J3DFrameCtrlFf
/* 80128E70 00125DB0  2C 03 00 00 */ cmpwi r3, 0
/* 80128E74 00125DB4  41 82 00 20 */ beq lbl_80128E94
/* 80128E78 00125DB8  7F A3 EB 78 */ mr r3, r29
/* 80128E7C 00125DBC  3C 80 00 01 */ lis r4, 0x00010032@ha
/* 80128E80 00125DC0  38 84 00 32 */ addi r4, r4, 0x00010032@l
/* 80128E84 00125DC4  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 80128E88 00125DC8  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 80128E8C 00125DCC  7D 89 03 A6 */ mtctr r12
/* 80128E90 00125DD0  4E 80 04 21 */ bctrl
lbl_80128E94:
/* 80128E94 00125DD4  E3 E1 00 F8 */ psq_l f31, 248(r1), 0, 0
/* 80128E98 00125DD8  CB E1 00 F0 */ lfd f31, 0xf0(r1)
/* 80128E9C 00125DDC  E3 C1 00 E8 */ psq_l f30, 232(r1), 0, 0
/* 80128EA0 00125DE0  CB C1 00 E0 */ lfd f30, 0xe0(r1)
/* 80128EA4 00125DE4  E3 A1 00 D8 */ psq_l f29, 216(r1), 0, 0
/* 80128EA8 00125DE8  CB A1 00 D0 */ lfd f29, 0xd0(r1)
/* 80128EAC 00125DEC  E3 81 00 C8 */ psq_l f28, 200(r1), 0, 0
/* 80128EB0 00125DF0  CB 81 00 C0 */ lfd f28, 0xc0(r1)
/* 80128EB4 00125DF4  E3 61 00 B8 */ psq_l f27, 184(r1), 0, 0
/* 80128EB8 00125DF8  CB 61 00 B0 */ lfd f27, 0xb0(r1)
/* 80128EBC 00125DFC  E3 41 00 A8 */ psq_l f26, 168(r1), 0, 0
/* 80128EC0 00125E00  CB 41 00 A0 */ lfd f26, 0xa0(r1)
/* 80128EC4 00125E04  E3 21 00 98 */ psq_l f25, 152(r1), 0, 0
/* 80128EC8 00125E08  CB 21 00 90 */ lfd f25, 0x90(r1)
/* 80128ECC 00125E0C  E3 01 00 88 */ psq_l f24, 136(r1), 0, 0
/* 80128ED0 00125E10  CB 01 00 80 */ lfd f24, 0x80(r1)
/* 80128ED4 00125E14  E2 E1 00 78 */ psq_l f23, 120(r1), 0, 0
/* 80128ED8 00125E18  CA E1 00 70 */ lfd f23, 0x70(r1)
/* 80128EDC 00125E1C  E2 C1 00 68 */ psq_l f22, 104(r1), 0, 0
/* 80128EE0 00125E20  CA C1 00 60 */ lfd f22, 0x60(r1)
/* 80128EE4 00125E24  E2 A1 00 58 */ psq_l f21, 88(r1), 0, 0
/* 80128EE8 00125E28  CA A1 00 50 */ lfd f21, 0x50(r1)
/* 80128EEC 00125E2C  E2 81 00 48 */ psq_l f20, 72(r1), 0, 0
/* 80128EF0 00125E30  CA 81 00 40 */ lfd f20, 0x40(r1)
/* 80128EF4 00125E34  39 61 00 40 */ addi r11, r1, 0x40
/* 80128EF8 00125E38  48 23 93 25 */ bl _restgpr_26
/* 80128EFC 00125E3C  80 01 01 04 */ lwz r0, 0x104(r1)
/* 80128F00 00125E40  7C 08 03 A6 */ mtlr r0
/* 80128F04 00125E44  38 21 01 00 */ addi r1, r1, 0x100
/* 80128F08 00125E48  4E 80 00 20 */ blr
