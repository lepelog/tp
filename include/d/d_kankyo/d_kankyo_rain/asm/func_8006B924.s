/* 8006B924 00068864  94 21 FF 70 */ stwu r1, -0x90(r1)
/* 8006B928 00068868  7C 08 02 A6 */ mflr r0
/* 8006B92C 0006886C  90 01 00 94 */ stw r0, 0x94(r1)
/* 8006B930 00068870  39 61 00 90 */ addi r11, r1, 0x90
/* 8006B934 00068874  48 2F 68 A5 */ bl _savegpr_28
/* 8006B938 00068878  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006B93C 0006887C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8006B940 00068880  83 E3 0F 28 */ lwz r31, 0xf28(r3)
/* 8006B944 00068884  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006B948 00068888  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 8006B94C 0006888C  C0 02 88 14 */ lfs f0, lbl_80452214-_SDA2_BASE_(r2)
/* 8006B950 00068890  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8006B954 00068894  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 8006B958 00068898  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8006B95C 0006889C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8006B960 000688A0  80 63 61 B0 */ lwz r3, 0x61b0(r3)
/* 8006B964 000688A4  28 03 00 00 */ cmplwi r3, 0
/* 8006B968 000688A8  41 82 04 8C */ beq lbl_8006BDF4
/* 8006B96C 000688AC  38 63 01 E0 */ addi r3, r3, 0x1e0
/* 8006B970 000688B0  38 81 00 24 */ addi r4, r1, 0x24
/* 8006B974 000688B4  48 2D AC 3D */ bl PSMTXInverse
/* 8006B978 000688B8  48 00 00 08 */ b lbl_8006B980
/* 8006B97C 000688BC  48 00 04 78 */ b lbl_8006BDF4
lbl_8006B980:
/* 8006B980 000688C0  C0 22 8A B8 */ lfs f1, lbl_804524B8-_SDA2_BASE_(r2)
/* 8006B984 000688C4  48 1F BF D1 */ bl cM_rndF
/* 8006B988 000688C8  FC 00 08 1E */ fctiwz f0, f1
/* 8006B98C 000688CC  D8 01 00 58 */ stfd f0, 0x58(r1)
/* 8006B990 000688D0  80 61 00 5C */ lwz r3, 0x5c(r1)
/* 8006B994 000688D4  38 83 01 AE */ addi r4, r3, 0x1ae
/* 8006B998 000688D8  3C 7F 00 01 */ addis r3, r31, 1
/* 8006B99C 000688DC  A8 03 77 24 */ lha r0, 0x7724(r3)
/* 8006B9A0 000688E0  7C 04 00 50 */ subf r0, r4, r0
/* 8006B9A4 000688E4  B0 03 77 24 */ sth r0, 0x7724(r3)
/* 8006B9A8 000688E8  C0 22 88 7C */ lfs f1, lbl_8045227C-_SDA2_BASE_(r2)
/* 8006B9AC 000688EC  48 1F BF A9 */ bl cM_rndF
/* 8006B9B0 000688F0  FC 00 08 1E */ fctiwz f0, f1
/* 8006B9B4 000688F4  D8 01 00 60 */ stfd f0, 0x60(r1)
/* 8006B9B8 000688F8  80 61 00 64 */ lwz r3, 0x64(r1)
/* 8006B9BC 000688FC  38 83 00 C8 */ addi r4, r3, 0xc8
/* 8006B9C0 00068900  3C 7F 00 01 */ addis r3, r31, 1
/* 8006B9C4 00068904  A8 03 77 26 */ lha r0, 0x7726(r3)
/* 8006B9C8 00068908  7C 04 00 50 */ subf r0, r4, r0
/* 8006B9CC 0006890C  B0 03 77 26 */ sth r0, 0x7726(r3)
/* 8006B9D0 00068910  3B C0 00 00 */ li r30, 0
/* 8006B9D4 00068914  3B 80 00 00 */ li r28, 0
lbl_8006B9D8:
/* 8006B9D8 00068918  3B BC 00 14 */ addi r29, r28, 0x14
/* 8006B9DC 0006891C  7F BF EA 14 */ add r29, r31, r29
/* 8006B9E0 00068920  88 1D 00 00 */ lbz r0, 0(r29)
/* 8006B9E4 00068924  2C 00 00 04 */ cmpwi r0, 4
/* 8006B9E8 00068928  40 80 00 14 */ bge lbl_8006B9FC
/* 8006B9EC 0006892C  2C 00 00 01 */ cmpwi r0, 1
/* 8006B9F0 00068930  41 82 00 24 */ beq lbl_8006BA14
/* 8006B9F4 00068934  40 80 00 4C */ bge lbl_8006BA40
/* 8006B9F8 00068938  48 00 03 EC */ b lbl_8006BDE4
lbl_8006B9FC:
/* 8006B9FC 0006893C  2C 00 00 0B */ cmpwi r0, 0xb
/* 8006BA00 00068940  41 82 00 14 */ beq lbl_8006BA14
/* 8006BA04 00068944  41 80 03 E0 */ blt lbl_8006BDE4
/* 8006BA08 00068948  2C 00 00 0E */ cmpwi r0, 0xe
/* 8006BA0C 0006894C  40 80 03 D8 */ bge lbl_8006BDE4
/* 8006BA10 00068950  48 00 00 30 */ b lbl_8006BA40
lbl_8006BA14:
/* 8006BA14 00068954  C0 22 88 14 */ lfs f1, lbl_80452214-_SDA2_BASE_(r2)
/* 8006BA18 00068958  48 1F BF 3D */ bl cM_rndF
/* 8006BA1C 0006895C  C0 02 88 20 */ lfs f0, lbl_80452220-_SDA2_BASE_(r2)
/* 8006BA20 00068960  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006BA24 00068964  40 80 03 C0 */ bge lbl_8006BDE4
/* 8006BA28 00068968  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BA2C 0006896C  D0 1D 00 24 */ stfs f0, 0x24(r29)
/* 8006BA30 00068970  88 7D 00 00 */ lbz r3, 0(r29)
/* 8006BA34 00068974  38 03 00 01 */ addi r0, r3, 1
/* 8006BA38 00068978  98 1D 00 00 */ stb r0, 0(r29)
/* 8006BA3C 0006897C  48 00 03 A8 */ b lbl_8006BDE4
lbl_8006BA40:
/* 8006BA40 00068980  3C 7F 00 01 */ addis r3, r31, 1
/* 8006BA44 00068984  38 63 77 14 */ addi r3, r3, 0x7714
/* 8006BA48 00068988  38 9D 00 10 */ addi r4, r29, 0x10
/* 8006BA4C 0006898C  48 2D B9 51 */ bl PSVECSquareDistance
/* 8006BA50 00068990  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BA54 00068994  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006BA58 00068998  40 81 00 58 */ ble lbl_8006BAB0
/* 8006BA5C 0006899C  FC 00 08 34 */ frsqrte f0, f1
/* 8006BA60 000689A0  C8 82 87 E8 */ lfd f4, lbl_804521E8-_SDA2_BASE_(r2)
/* 8006BA64 000689A4  FC 44 00 32 */ fmul f2, f4, f0
/* 8006BA68 000689A8  C8 62 87 F0 */ lfd f3, lbl_804521F0-_SDA2_BASE_(r2)
/* 8006BA6C 000689AC  FC 00 00 32 */ fmul f0, f0, f0
/* 8006BA70 000689B0  FC 01 00 32 */ fmul f0, f1, f0
/* 8006BA74 000689B4  FC 03 00 28 */ fsub f0, f3, f0
/* 8006BA78 000689B8  FC 02 00 32 */ fmul f0, f2, f0
/* 8006BA7C 000689BC  FC 44 00 32 */ fmul f2, f4, f0
/* 8006BA80 000689C0  FC 00 00 32 */ fmul f0, f0, f0
/* 8006BA84 000689C4  FC 01 00 32 */ fmul f0, f1, f0
/* 8006BA88 000689C8  FC 03 00 28 */ fsub f0, f3, f0
/* 8006BA8C 000689CC  FC 02 00 32 */ fmul f0, f2, f0
/* 8006BA90 000689D0  FC 44 00 32 */ fmul f2, f4, f0
/* 8006BA94 000689D4  FC 00 00 32 */ fmul f0, f0, f0
/* 8006BA98 000689D8  FC 01 00 32 */ fmul f0, f1, f0
/* 8006BA9C 000689DC  FC 03 00 28 */ fsub f0, f3, f0
/* 8006BAA0 000689E0  FC 02 00 32 */ fmul f0, f2, f0
/* 8006BAA4 000689E4  FC 21 00 32 */ fmul f1, f1, f0
/* 8006BAA8 000689E8  FC 20 08 18 */ frsp f1, f1
/* 8006BAAC 000689EC  48 00 00 88 */ b lbl_8006BB34
lbl_8006BAB0:
/* 8006BAB0 000689F0  C8 02 87 B0 */ lfd f0, lbl_804521B0-_SDA2_BASE_(r2)
/* 8006BAB4 000689F4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006BAB8 000689F8  40 80 00 10 */ bge lbl_8006BAC8
/* 8006BABC 000689FC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006BAC0 00068A00  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8006BAC4 00068A04  48 00 00 70 */ b lbl_8006BB34
lbl_8006BAC8:
/* 8006BAC8 00068A08  D0 21 00 08 */ stfs f1, 8(r1)
/* 8006BACC 00068A0C  80 81 00 08 */ lwz r4, 8(r1)
/* 8006BAD0 00068A10  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8006BAD4 00068A14  3C 00 7F 80 */ lis r0, 0x7f80
/* 8006BAD8 00068A18  7C 03 00 00 */ cmpw r3, r0
/* 8006BADC 00068A1C  41 82 00 14 */ beq lbl_8006BAF0
/* 8006BAE0 00068A20  40 80 00 40 */ bge lbl_8006BB20
/* 8006BAE4 00068A24  2C 03 00 00 */ cmpwi r3, 0
/* 8006BAE8 00068A28  41 82 00 20 */ beq lbl_8006BB08
/* 8006BAEC 00068A2C  48 00 00 34 */ b lbl_8006BB20
lbl_8006BAF0:
/* 8006BAF0 00068A30  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006BAF4 00068A34  41 82 00 0C */ beq lbl_8006BB00
/* 8006BAF8 00068A38  38 00 00 01 */ li r0, 1
/* 8006BAFC 00068A3C  48 00 00 28 */ b lbl_8006BB24
lbl_8006BB00:
/* 8006BB00 00068A40  38 00 00 02 */ li r0, 2
/* 8006BB04 00068A44  48 00 00 20 */ b lbl_8006BB24
lbl_8006BB08:
/* 8006BB08 00068A48  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006BB0C 00068A4C  41 82 00 0C */ beq lbl_8006BB18
/* 8006BB10 00068A50  38 00 00 05 */ li r0, 5
/* 8006BB14 00068A54  48 00 00 10 */ b lbl_8006BB24
lbl_8006BB18:
/* 8006BB18 00068A58  38 00 00 03 */ li r0, 3
/* 8006BB1C 00068A5C  48 00 00 08 */ b lbl_8006BB24
lbl_8006BB20:
/* 8006BB20 00068A60  38 00 00 04 */ li r0, 4
lbl_8006BB24:
/* 8006BB24 00068A64  2C 00 00 01 */ cmpwi r0, 1
/* 8006BB28 00068A68  40 82 00 0C */ bne lbl_8006BB34
/* 8006BB2C 00068A6C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006BB30 00068A70  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8006BB34:
/* 8006BB34 00068A74  3C 9F 00 01 */ addis r4, r31, 1
/* 8006BB38 00068A78  A8 A4 77 24 */ lha r5, 0x7724(r4)
/* 8006BB3C 00068A7C  FC 00 08 1E */ fctiwz f0, f1
/* 8006BB40 00068A80  D8 01 00 60 */ stfd f0, 0x60(r1)
/* 8006BB44 00068A84  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8006BB48 00068A88  7C 00 07 34 */ extsh r0, r0
/* 8006BB4C 00068A8C  1C 60 00 26 */ mulli r3, r0, 0x26
/* 8006BB50 00068A90  7C 65 1A 14 */ add r3, r5, r3
/* 8006BB54 00068A94  54 65 04 38 */ rlwinm r5, r3, 0, 0x10, 0x1c
/* 8006BB58 00068A98  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8006BB5C 00068A9C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8006BB60 00068AA0  7C A3 2A 14 */ add r5, r3, r5
/* 8006BB64 00068AA4  C0 05 00 04 */ lfs f0, 4(r5)
/* 8006BB68 00068AA8  C0 42 8A AC */ lfs f2, lbl_804524AC-_SDA2_BASE_(r2)
/* 8006BB6C 00068AAC  C0 82 88 44 */ lfs f4, lbl_80452244-_SDA2_BASE_(r2)
/* 8006BB70 00068AB0  EC 00 01 32 */ fmuls f0, f0, f4
/* 8006BB74 00068AB4  EC 02 00 32 */ fmuls f0, f2, f0
/* 8006BB78 00068AB8  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8006BB7C 00068ABC  D0 1D 00 0C */ stfs f0, 0xc(r29)
/* 8006BB80 00068AC0  88 BD 00 00 */ lbz r5, 0(r29)
/* 8006BB84 00068AC4  28 05 00 0A */ cmplwi r5, 0xa
/* 8006BB88 00068AC8  40 80 00 68 */ bge lbl_8006BBF0
/* 8006BB8C 00068ACC  A8 C4 77 24 */ lha r6, 0x7724(r4)
/* 8006BB90 00068AD0  1C A0 00 A0 */ mulli r5, r0, 0xa0
/* 8006BB94 00068AD4  7C A6 2A 14 */ add r5, r6, r5
/* 8006BB98 00068AD8  54 A5 04 38 */ rlwinm r5, r5, 0, 0x10, 0x1c
/* 8006BB9C 00068ADC  7C A3 2A 14 */ add r5, r3, r5
/* 8006BBA0 00068AE0  C0 05 00 04 */ lfs f0, 4(r5)
/* 8006BBA4 00068AE4  C0 22 88 50 */ lfs f1, lbl_80452250-_SDA2_BASE_(r2)
/* 8006BBA8 00068AE8  C0 62 88 48 */ lfs f3, lbl_80452248-_SDA2_BASE_(r2)
/* 8006BBAC 00068AEC  EC 03 00 2A */ fadds f0, f3, f0
/* 8006BBB0 00068AF0  EC 00 01 32 */ fmuls f0, f0, f4
/* 8006BBB4 00068AF4  EC 01 00 32 */ fmuls f0, f1, f0
/* 8006BBB8 00068AF8  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8006BBBC 00068AFC  A8 84 77 26 */ lha r4, 0x7726(r4)
/* 8006BBC0 00068B00  1C 00 00 2D */ mulli r0, r0, 0x2d
/* 8006BBC4 00068B04  7C 04 02 14 */ add r0, r4, r0
/* 8006BBC8 00068B08  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006BBCC 00068B0C  7C 03 04 2E */ lfsx f0, r3, r0
/* 8006BBD0 00068B10  C0 5D 00 08 */ lfs f2, 8(r29)
/* 8006BBD4 00068B14  C0 22 88 00 */ lfs f1, lbl_80452200-_SDA2_BASE_(r2)
/* 8006BBD8 00068B18  EC 03 00 2A */ fadds f0, f3, f0
/* 8006BBDC 00068B1C  EC 00 01 32 */ fmuls f0, f0, f4
/* 8006BBE0 00068B20  EC 01 00 32 */ fmuls f0, f1, f0
/* 8006BBE4 00068B24  EC 02 00 2A */ fadds f0, f2, f0
/* 8006BBE8 00068B28  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8006BBEC 00068B2C  48 00 00 D0 */ b lbl_8006BCBC
lbl_8006BBF0:
/* 8006BBF0 00068B30  C0 02 8B CC */ lfs f0, lbl_804525CC-_SDA2_BASE_(r2)
/* 8006BBF4 00068B34  EC 00 00 72 */ fmuls f0, f0, f1
/* 8006BBF8 00068B38  FC 00 00 1E */ fctiwz f0, f0
/* 8006BBFC 00068B3C  D8 01 00 60 */ stfd f0, 0x60(r1)
/* 8006BC00 00068B40  80 E1 00 64 */ lwz r7, 0x64(r1)
/* 8006BC04 00068B44  A8 A4 77 24 */ lha r5, 0x7724(r4)
/* 8006BC08 00068B48  C8 22 87 C8 */ lfd f1, lbl_804521C8-_SDA2_BASE_(r2)
/* 8006BC0C 00068B4C  6C A5 80 00 */ xoris r5, r5, 0x8000
/* 8006BC10 00068B50  90 A1 00 5C */ stw r5, 0x5c(r1)
/* 8006BC14 00068B54  3C C0 43 30 */ lis r6, 0x4330
/* 8006BC18 00068B58  90 C1 00 58 */ stw r6, 0x58(r1)
/* 8006BC1C 00068B5C  C8 01 00 58 */ lfd f0, 0x58(r1)
/* 8006BC20 00068B60  EC 00 08 28 */ fsubs f0, f0, f1
/* 8006BC24 00068B64  FC 00 00 1E */ fctiwz f0, f0
/* 8006BC28 00068B68  D8 01 00 68 */ stfd f0, 0x68(r1)
/* 8006BC2C 00068B6C  80 A1 00 6C */ lwz r5, 0x6c(r1)
/* 8006BC30 00068B70  7C A7 2A 14 */ add r5, r7, r5
/* 8006BC34 00068B74  54 A5 04 38 */ rlwinm r5, r5, 0, 0x10, 0x1c
/* 8006BC38 00068B78  7C A3 2A 14 */ add r5, r3, r5
/* 8006BC3C 00068B7C  C0 45 00 04 */ lfs f2, 4(r5)
/* 8006BC40 00068B80  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BC44 00068B84  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8006BC48 00068B88  C0 02 8A B8 */ lfs f0, lbl_804524B8-_SDA2_BASE_(r2)
/* 8006BC4C 00068B8C  EC 42 01 32 */ fmuls f2, f2, f4
/* 8006BC50 00068B90  EC 00 00 B2 */ fmuls f0, f0, f2
/* 8006BC54 00068B94  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8006BC58 00068B98  C0 02 8A A4 */ lfs f0, lbl_804524A4-_SDA2_BASE_(r2)
/* 8006BC5C 00068B9C  EC 00 00 B2 */ fmuls f0, f0, f2
/* 8006BC60 00068BA0  D0 1D 00 0C */ stfs f0, 0xc(r29)
/* 8006BC64 00068BA4  A8 84 77 26 */ lha r4, 0x7726(r4)
/* 8006BC68 00068BA8  6C 84 80 00 */ xoris r4, r4, 0x8000
/* 8006BC6C 00068BAC  90 81 00 74 */ stw r4, 0x74(r1)
/* 8006BC70 00068BB0  90 C1 00 70 */ stw r6, 0x70(r1)
/* 8006BC74 00068BB4  C8 01 00 70 */ lfd f0, 0x70(r1)
/* 8006BC78 00068BB8  EC 00 08 28 */ fsubs f0, f0, f1
/* 8006BC7C 00068BBC  FC 00 00 1E */ fctiwz f0, f0
/* 8006BC80 00068BC0  D8 01 00 78 */ stfd f0, 0x78(r1)
/* 8006BC84 00068BC4  80 81 00 7C */ lwz r4, 0x7c(r1)
/* 8006BC88 00068BC8  1C 00 00 2D */ mulli r0, r0, 0x2d
/* 8006BC8C 00068BCC  7C 04 02 14 */ add r0, r4, r0
/* 8006BC90 00068BD0  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006BC94 00068BD4  7C 03 04 2E */ lfsx f0, r3, r0
/* 8006BC98 00068BD8  C0 5D 00 04 */ lfs f2, 4(r29)
/* 8006BC9C 00068BDC  C0 22 89 A4 */ lfs f1, lbl_804523A4-_SDA2_BASE_(r2)
/* 8006BCA0 00068BE0  EC 00 01 32 */ fmuls f0, f0, f4
/* 8006BCA4 00068BE4  EC 21 00 32 */ fmuls f1, f1, f0
/* 8006BCA8 00068BE8  EC 02 08 2A */ fadds f0, f2, f1
/* 8006BCAC 00068BEC  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8006BCB0 00068BF0  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8006BCB4 00068BF4  EC 00 08 2A */ fadds f0, f0, f1
/* 8006BCB8 00068BF8  D0 1D 00 0C */ stfs f0, 0xc(r29)
lbl_8006BCBC:
/* 8006BCBC 00068BFC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8006BCC0 00068C00  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8006BCC4 00068C04  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BCC8 00068C08  FC 40 08 90 */ fmr f2, f1
/* 8006BCCC 00068C0C  FC 60 08 90 */ fmr f3, f1
/* 8006BCD0 00068C10  48 2D AC 19 */ bl PSMTXTrans
/* 8006BCD4 00068C14  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8006BCD8 00068C18  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8006BCDC 00068C1C  A8 9D 00 1C */ lha r4, 0x1c(r29)
/* 8006BCE0 00068C20  A8 BD 00 1E */ lha r5, 0x1e(r29)
/* 8006BCE4 00068C24  38 C0 00 00 */ li r6, 0
/* 8006BCE8 00068C28  4B FA 05 B9 */ bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8006BCEC 00068C2C  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8006BCF0 00068C30  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8006BCF4 00068C34  38 81 00 18 */ addi r4, r1, 0x18
/* 8006BCF8 00068C38  38 A1 00 0C */ addi r5, r1, 0xc
/* 8006BCFC 00068C3C  48 2D B0 71 */ bl PSMTXMultVec
/* 8006BD00 00068C40  C0 5D 00 10 */ lfs f2, 0x10(r29)
/* 8006BD04 00068C44  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8006BD08 00068C48  C0 1D 00 20 */ lfs f0, 0x20(r29)
/* 8006BD0C 00068C4C  EC 01 00 32 */ fmuls f0, f1, f0
/* 8006BD10 00068C50  EC 02 00 2A */ fadds f0, f2, f0
/* 8006BD14 00068C54  D0 1D 00 10 */ stfs f0, 0x10(r29)
/* 8006BD18 00068C58  C0 5D 00 14 */ lfs f2, 0x14(r29)
/* 8006BD1C 00068C5C  C0 21 00 10 */ lfs f1, 0x10(r1)
/* 8006BD20 00068C60  C0 1D 00 20 */ lfs f0, 0x20(r29)
/* 8006BD24 00068C64  EC 01 00 32 */ fmuls f0, f1, f0
/* 8006BD28 00068C68  EC 02 00 2A */ fadds f0, f2, f0
/* 8006BD2C 00068C6C  D0 1D 00 14 */ stfs f0, 0x14(r29)
/* 8006BD30 00068C70  C0 5D 00 18 */ lfs f2, 0x18(r29)
/* 8006BD34 00068C74  C0 21 00 14 */ lfs f1, 0x14(r1)
/* 8006BD38 00068C78  C0 1D 00 20 */ lfs f0, 0x20(r29)
/* 8006BD3C 00068C7C  EC 01 00 32 */ fmuls f0, f1, f0
/* 8006BD40 00068C80  EC 02 00 2A */ fadds f0, f2, f0
/* 8006BD44 00068C84  D0 1D 00 18 */ stfs f0, 0x18(r29)
/* 8006BD48 00068C88  88 1D 00 00 */ lbz r0, 0(r29)
/* 8006BD4C 00068C8C  28 00 00 02 */ cmplwi r0, 2
/* 8006BD50 00068C90  41 82 00 0C */ beq lbl_8006BD5C
/* 8006BD54 00068C94  28 00 00 0C */ cmplwi r0, 0xc
/* 8006BD58 00068C98  40 82 00 40 */ bne lbl_8006BD98
lbl_8006BD5C:
/* 8006BD5C 00068C9C  38 7D 00 24 */ addi r3, r29, 0x24
/* 8006BD60 00068CA0  C0 22 88 14 */ lfs f1, lbl_80452214-_SDA2_BASE_(r2)
/* 8006BD64 00068CA4  C0 42 88 20 */ lfs f2, lbl_80452220-_SDA2_BASE_(r2)
/* 8006BD68 00068CA8  C0 62 88 40 */ lfs f3, lbl_80452240-_SDA2_BASE_(r2)
/* 8006BD6C 00068CAC  C0 82 88 38 */ lfs f4, lbl_80452238-_SDA2_BASE_(r2)
/* 8006BD70 00068CB0  48 20 3C 0D */ bl cLib_addCalc__FPfffff
/* 8006BD74 00068CB4  C0 3D 00 24 */ lfs f1, 0x24(r29)
/* 8006BD78 00068CB8  C0 02 88 14 */ lfs f0, lbl_80452214-_SDA2_BASE_(r2)
/* 8006BD7C 00068CBC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006BD80 00068CC0  4C 41 13 82 */ cror 2, 1, 2
/* 8006BD84 00068CC4  40 82 00 60 */ bne lbl_8006BDE4
/* 8006BD88 00068CC8  88 7D 00 00 */ lbz r3, 0(r29)
/* 8006BD8C 00068CCC  38 03 00 01 */ addi r0, r3, 1
/* 8006BD90 00068CD0  98 1D 00 00 */ stb r0, 0(r29)
/* 8006BD94 00068CD4  48 00 00 50 */ b lbl_8006BDE4
lbl_8006BD98:
/* 8006BD98 00068CD8  28 00 00 03 */ cmplwi r0, 3
/* 8006BD9C 00068CDC  41 82 00 0C */ beq lbl_8006BDA8
/* 8006BDA0 00068CE0  28 00 00 0D */ cmplwi r0, 0xd
/* 8006BDA4 00068CE4  40 82 00 40 */ bne lbl_8006BDE4
lbl_8006BDA8:
/* 8006BDA8 00068CE8  38 7D 00 24 */ addi r3, r29, 0x24
/* 8006BDAC 00068CEC  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BDB0 00068CF0  C0 42 88 20 */ lfs f2, lbl_80452220-_SDA2_BASE_(r2)
/* 8006BDB4 00068CF4  C0 62 8B D0 */ lfs f3, lbl_804525D0-_SDA2_BASE_(r2)
/* 8006BDB8 00068CF8  C0 82 88 38 */ lfs f4, lbl_80452238-_SDA2_BASE_(r2)
/* 8006BDBC 00068CFC  48 20 3B C1 */ bl cLib_addCalc__FPfffff
/* 8006BDC0 00068D00  C0 3D 00 24 */ lfs f1, 0x24(r29)
/* 8006BDC4 00068D04  C0 02 88 20 */ lfs f0, lbl_80452220-_SDA2_BASE_(r2)
/* 8006BDC8 00068D08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006BDCC 00068D0C  4C 40 13 82 */ cror 2, 0, 2
/* 8006BDD0 00068D10  40 82 00 14 */ bne lbl_8006BDE4
/* 8006BDD4 00068D14  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006BDD8 00068D18  D0 1D 00 24 */ stfs f0, 0x24(r29)
/* 8006BDDC 00068D1C  38 00 00 00 */ li r0, 0
/* 8006BDE0 00068D20  98 1D 00 00 */ stb r0, 0(r29)
lbl_8006BDE4:
/* 8006BDE4 00068D24  3B DE 00 01 */ addi r30, r30, 1
/* 8006BDE8 00068D28  2C 1E 07 D0 */ cmpwi r30, 0x7d0
/* 8006BDEC 00068D2C  3B 9C 00 30 */ addi r28, r28, 0x30
/* 8006BDF0 00068D30  41 80 FB E8 */ blt lbl_8006B9D8
lbl_8006BDF4:
/* 8006BDF4 00068D34  39 61 00 90 */ addi r11, r1, 0x90
/* 8006BDF8 00068D38  48 2F 64 2D */ bl _restgpr_28
/* 8006BDFC 00068D3C  80 01 00 94 */ lwz r0, 0x94(r1)
/* 8006BE00 00068D40  7C 08 03 A6 */ mtlr r0
/* 8006BE04 00068D44  38 21 00 90 */ addi r1, r1, 0x90
/* 8006BE08 00068D48  4E 80 00 20 */ blr
