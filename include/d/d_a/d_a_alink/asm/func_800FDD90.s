/* 800FDD90 000FACD0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800FDD94 000FACD4  7C 08 02 A6 */ mflr r0
/* 800FDD98 000FACD8  90 01 00 34 */ stw r0, 0x34(r1)
/* 800FDD9C 000FACDC  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 800FDDA0 000FACE0  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 800FDDA4 000FACE4  39 61 00 20 */ addi r11, r1, 0x20
/* 800FDDA8 000FACE8  48 26 44 2D */ bl _savegpr_27
/* 800FDDAC 000FACEC  7C 7B 1B 78 */ mr r27, r3
/* 800FDDB0 000FACF0  7C 9C 23 78 */ mr r28, r4
/* 800FDDB4 000FACF4  7C BD 2B 78 */ mr r29, r5
/* 800FDDB8 000FACF8  7C DE 33 78 */ mr r30, r6
/* 800FDDBC 000FACFC  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800FDDC0 000FAD00  54 1F FF FE */ rlwinm r31, r0, 0x1f, 0x1f, 0x1f
/* 800FDDC4 000FAD04  4B FF F4 C5 */ bl getLadderMoveAnmSpeed__9daAlink_cFv
/* 800FDDC8 000FAD08  FF E0 08 90 */ fmr f31, f1
/* 800FDDCC 000FAD0C  7F 63 DB 78 */ mr r3, r27
/* 800FDDD0 000FAD10  38 80 00 6B */ li r4, 0x6b
/* 800FDDD4 000FAD14  4B FC 41 99 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FDDD8 000FAD18  2C 1F 00 00 */ cmpwi r31, 0
/* 800FDDDC 000FAD1C  40 82 00 3C */ bne lbl_800FDE18
/* 800FDDE0 000FAD20  2C 1D 00 00 */ cmpwi r29, 0
/* 800FDDE4 000FAD24  40 82 00 18 */ bne lbl_800FDDFC
/* 800FDDE8 000FAD28  C0 22 95 84 */ lfs f1, lbl_80452F84-_SDA2_BASE_(r2)
/* 800FDDEC 000FAD2C  C0 1E 00 04 */ lfs f0, 4(r30)
/* 800FDDF0 000FAD30  EC 01 00 2A */ fadds f0, f1, f0
/* 800FDDF4 000FAD34  D0 1B 37 CC */ stfs f0, 0x37cc(r27)
/* 800FDDF8 000FAD38  48 00 00 28 */ b lbl_800FDE20
lbl_800FDDFC:
/* 800FDDFC 000FAD3C  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800FDE00 000FAD40  EF FF 00 32 */ fmuls f31, f31, f0
/* 800FDE04 000FAD44  C0 3E 00 04 */ lfs f1, 4(r30)
/* 800FDE08 000FAD48  C0 02 95 84 */ lfs f0, lbl_80452F84-_SDA2_BASE_(r2)
/* 800FDE0C 000FAD4C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800FDE10 000FAD50  D0 1B 37 CC */ stfs f0, 0x37cc(r27)
/* 800FDE14 000FAD54  48 00 00 0C */ b lbl_800FDE20
lbl_800FDE18:
/* 800FDE18 000FAD58  C0 1E 00 04 */ lfs f0, 4(r30)
/* 800FDE1C 000FAD5C  D0 1B 37 CC */ stfs f0, 0x37cc(r27)
lbl_800FDE20:
/* 800FDE20 000FAD60  C0 1E 00 00 */ lfs f0, 0(r30)
/* 800FDE24 000FAD64  D0 1B 37 C8 */ stfs f0, 0x37c8(r27)
/* 800FDE28 000FAD68  C0 1E 00 08 */ lfs f0, 8(r30)
/* 800FDE2C 000FAD6C  D0 1B 37 D0 */ stfs f0, 0x37d0(r27)
/* 800FDE30 000FAD70  2C 1C 00 00 */ cmpwi r28, 0
/* 800FDE34 000FAD74  41 82 00 40 */ beq lbl_800FDE74
/* 800FDE38 000FAD78  2C 1F 00 00 */ cmpwi r31, 0
/* 800FDE3C 000FAD7C  41 82 00 10 */ beq lbl_800FDE4C
/* 800FDE40 000FAD80  38 00 00 01 */ li r0, 1
/* 800FDE44 000FAD84  90 1B 31 98 */ stw r0, 0x3198(r27)
/* 800FDE48 000FAD88  48 00 00 0C */ b lbl_800FDE54
lbl_800FDE4C:
/* 800FDE4C 000FAD8C  38 00 00 00 */ li r0, 0
/* 800FDE50 000FAD90  90 1B 31 98 */ stw r0, 0x3198(r27)
lbl_800FDE54:
/* 800FDE54 000FAD94  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FDE58 000FAD98  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800FDE5C 000FAD9C  4C 41 13 82 */ cror 2, 1, 2
/* 800FDE60 000FADA0  40 82 00 0C */ bne lbl_800FDE6C
/* 800FDE64 000FADA4  38 80 00 A0 */ li r4, 0xa0
/* 800FDE68 000FADA8  48 00 00 30 */ b lbl_800FDE98
lbl_800FDE6C:
/* 800FDE6C 000FADAC  38 80 00 9F */ li r4, 0x9f
/* 800FDE70 000FADB0  48 00 00 28 */ b lbl_800FDE98
lbl_800FDE74:
/* 800FDE74 000FADB4  38 00 00 01 */ li r0, 1
/* 800FDE78 000FADB8  90 1B 31 98 */ stw r0, 0x3198(r27)
/* 800FDE7C 000FADBC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FDE80 000FADC0  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800FDE84 000FADC4  4C 41 13 82 */ cror 2, 1, 2
/* 800FDE88 000FADC8  40 82 00 0C */ bne lbl_800FDE94
/* 800FDE8C 000FADCC  38 80 00 9F */ li r4, 0x9f
/* 800FDE90 000FADD0  48 00 00 08 */ b lbl_800FDE98
lbl_800FDE94:
/* 800FDE94 000FADD4  38 80 00 A0 */ li r4, 0xa0
lbl_800FDE98:
/* 800FDE98 000FADD8  7F 63 DB 78 */ mr r3, r27
/* 800FDE9C 000FADDC  FC 20 F8 90 */ fmr f1, f31
/* 800FDEA0 000FADE0  3C A0 80 39 */ lis r5, lbl_8038EB8C@ha
/* 800FDEA4 000FADE4  38 A5 EB 8C */ addi r5, r5, lbl_8038EB8C@l
/* 800FDEA8 000FADE8  C0 45 00 50 */ lfs f2, 0x50(r5)
/* 800FDEAC 000FADEC  4B FA F1 35 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
/* 800FDEB0 000FADF0  9B BB 2F 98 */ stb r29, 0x2f98(r27)
/* 800FDEB4 000FADF4  2C 1D 00 00 */ cmpwi r29, 0
/* 800FDEB8 000FADF8  40 82 00 18 */ bne lbl_800FDED0
/* 800FDEBC 000FADFC  38 00 F8 00 */ li r0, -2048
/* 800FDEC0 000FAE00  B0 1B 30 A0 */ sth r0, 0x30a0(r27)
/* 800FDEC4 000FAE04  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800FDEC8 000FAE08  D0 1B 33 F4 */ stfs f0, 0x33f4(r27)
/* 800FDECC 000FAE0C  48 00 00 14 */ b lbl_800FDEE0
lbl_800FDED0:
/* 800FDED0 000FAE10  38 00 28 00 */ li r0, 0x2800
/* 800FDED4 000FAE14  B0 1B 30 A0 */ sth r0, 0x30a0(r27)
/* 800FDED8 000FAE18  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800FDEDC 000FAE1C  D0 1B 33 F4 */ stfs f0, 0x33f4(r27)
lbl_800FDEE0:
/* 800FDEE0 000FAE20  38 00 00 0E */ li r0, 0xe
/* 800FDEE4 000FAE24  98 1B 2F 99 */ stb r0, 0x2f99(r27)
/* 800FDEE8 000FAE28  7F 63 DB 78 */ mr r3, r27
/* 800FDEEC 000FAE2C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FDEF0 000FAE30  C0 5B 05 34 */ lfs f2, 0x534(r27)
/* 800FDEF4 000FAE34  38 80 00 00 */ li r4, 0
/* 800FDEF8 000FAE38  4B FB D8 79 */ bl setSpecialGravity__9daAlink_cFffi
/* 800FDEFC 000FAE3C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FDF00 000FAE40  D0 1B 04 FC */ stfs f0, 0x4fc(r27)
/* 800FDF04 000FAE44  D0 1B 33 98 */ stfs f0, 0x3398(r27)
/* 800FDF08 000FAE48  D0 1B 05 2C */ stfs f0, 0x52c(r27)
/* 800FDF0C 000FAE4C  38 00 00 01 */ li r0, 1
/* 800FDF10 000FAE50  B0 1B 30 0C */ sth r0, 0x300c(r27)
/* 800FDF14 000FAE54  B0 1B 30 10 */ sth r0, 0x3010(r27)
/* 800FDF18 000FAE58  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FDF1C 000FAE5C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FDF20 000FAE60  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800FDF24 000FAE64  64 00 02 00 */ oris r0, r0, 0x200
/* 800FDF28 000FAE68  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800FDF2C 000FAE6C  38 60 00 01 */ li r3, 1
/* 800FDF30 000FAE70  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 800FDF34 000FAE74  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 800FDF38 000FAE78  39 61 00 20 */ addi r11, r1, 0x20
/* 800FDF3C 000FAE7C  48 26 42 E5 */ bl _restgpr_27
/* 800FDF40 000FAE80  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800FDF44 000FAE84  7C 08 03 A6 */ mtlr r0
/* 800FDF48 000FAE88  38 21 00 30 */ addi r1, r1, 0x30
/* 800FDF4C 000FAE8C  4E 80 00 20 */ blr