/* 800F99FC 000F693C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F9A00 000F6940  7C 08 02 A6 */ mflr r0
/* 800F9A04 000F6944  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F9A08 000F6948  39 61 00 20 */ addi r11, r1, 0x20
/* 800F9A0C 000F694C  48 26 87 C9 */ bl _savegpr_27
/* 800F9A10 000F6950  7C 7B 1B 78 */ mr r27, r3
/* 800F9A14 000F6954  7C 9C 23 78 */ mr r28, r4
/* 800F9A18 000F6958  7C BD 2B 78 */ mr r29, r5
/* 800F9A1C 000F695C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 800F9A20 000F6960  3B E4 61 C0 */ addi r31, r4, g_dComIfG_gameInfo@l
/* 800F9A24 000F6964  80 1F 5F 18 */ lwz r0, 0x5f18(r31)
/* 800F9A28 000F6968  54 1E 9F FE */ rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 800F9A2C 000F696C  38 80 00 37 */ li r4, 0x37
/* 800F9A30 000F6970  4B FC 85 3D */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F9A34 000F6974  C0 1D 00 00 */ lfs f0, 0(r29)
/* 800F9A38 000F6978  D0 1B 37 C8 */ stfs f0, 0x37c8(r27)
/* 800F9A3C 000F697C  C0 1D 00 04 */ lfs f0, 4(r29)
/* 800F9A40 000F6980  D0 1B 37 CC */ stfs f0, 0x37cc(r27)
/* 800F9A44 000F6984  C0 1D 00 08 */ lfs f0, 8(r29)
/* 800F9A48 000F6988  D0 1B 37 D0 */ stfs f0, 0x37d0(r27)
/* 800F9A4C 000F698C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F9A50 000F6990  D0 1B 33 CC */ stfs f0, 0x33cc(r27)
/* 800F9A54 000F6994  93 9B 31 98 */ stw r28, 0x3198(r27)
/* 800F9A58 000F6998  38 00 00 14 */ li r0, 0x14
/* 800F9A5C 000F699C  B0 1B 30 08 */ sth r0, 0x3008(r27)
/* 800F9A60 000F69A0  38 00 01 2C */ li r0, 0x12c
/* 800F9A64 000F69A4  B0 1B 30 0A */ sth r0, 0x300a(r27)
/* 800F9A68 000F69A8  80 1F 5F 18 */ lwz r0, 0x5f18(r31)
/* 800F9A6C 000F69AC  64 00 08 00 */ oris r0, r0, 0x800
/* 800F9A70 000F69B0  90 1F 5F 18 */ stw r0, 0x5f18(r31)
/* 800F9A74 000F69B4  7F 63 DB 78 */ mr r3, r27
/* 800F9A78 000F69B8  4B FF E2 71 */ bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 800F9A7C 000F69BC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F9A80 000F69C0  D0 1B 33 98 */ stfs f0, 0x3398(r27)
/* 800F9A84 000F69C4  38 00 00 0C */ li r0, 0xc
/* 800F9A88 000F69C8  98 1B 2F 99 */ stb r0, 0x2f99(r27)
/* 800F9A8C 000F69CC  2C 1E 00 00 */ cmpwi r30, 0
/* 800F9A90 000F69D0  41 82 00 10 */ beq lbl_800F9AA0
/* 800F9A94 000F69D4  80 1F 5F 18 */ lwz r0, 0x5f18(r31)
/* 800F9A98 000F69D8  60 00 20 00 */ ori r0, r0, 0x2000
/* 800F9A9C 000F69DC  90 1F 5F 18 */ stw r0, 0x5f18(r31)
lbl_800F9AA0:
/* 800F9AA0 000F69E0  38 60 00 01 */ li r3, 1
/* 800F9AA4 000F69E4  39 61 00 20 */ addi r11, r1, 0x20
/* 800F9AA8 000F69E8  48 26 87 79 */ bl _restgpr_27
/* 800F9AAC 000F69EC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F9AB0 000F69F0  7C 08 03 A6 */ mtlr r0
/* 800F9AB4 000F69F4  38 21 00 20 */ addi r1, r1, 0x20
/* 800F9AB8 000F69F8  4E 80 00 20 */ blr