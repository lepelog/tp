/* 800F69D4 000F3914  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F69D8 000F3918  7C 08 02 A6 */ mflr r0
/* 800F69DC 000F391C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F69E0 000F3920  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F69E4 000F3924  93 C1 00 08 */ stw r30, 8(r1)
/* 800F69E8 000F3928  7C 7E 1B 78 */ mr r30, r3
/* 800F69EC 000F392C  38 80 00 97 */ li r4, 0x97
/* 800F69F0 000F3930  4B FC B5 7D */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F69F4 000F3934  A8 1E 05 9E */ lha r0, 0x59e(r30)
/* 800F69F8 000F3938  2C 00 00 00 */ cmpwi r0, 0
/* 800F69FC 000F393C  41 80 00 24 */ blt lbl_800F6A20
/* 800F6A00 000F3940  3B E0 00 E0 */ li r31, 0xe0
/* 800F6A04 000F3944  C0 02 93 20 */ lfs f0, lbl_80452D20-_SDA2_BASE_(r2)
/* 800F6A08 000F3948  D0 1E 34 78 */ stfs f0, 0x3478(r30)
/* 800F6A0C 000F394C  C0 02 95 30 */ lfs f0, lbl_80452F30-_SDA2_BASE_(r2)
/* 800F6A10 000F3950  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800F6A14 000F3954  38 00 00 00 */ li r0, 0
/* 800F6A18 000F3958  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800F6A1C 000F395C  48 00 00 20 */ b lbl_800F6A3C
lbl_800F6A20:
/* 800F6A20 000F3960  3B E0 00 E1 */ li r31, 0xe1
/* 800F6A24 000F3964  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 800F6A28 000F3968  D0 1E 34 78 */ stfs f0, 0x3478(r30)
/* 800F6A2C 000F396C  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800F6A30 000F3970  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800F6A34 000F3974  38 00 00 01 */ li r0, 1
/* 800F6A38 000F3978  B0 1E 30 0E */ sth r0, 0x300e(r30)
lbl_800F6A3C:
/* 800F6A3C 000F397C  7F C3 F3 78 */ mr r3, r30
/* 800F6A40 000F3980  4B FF DB 5D */ bl setSyncCanoePos__9daAlink_cFv
/* 800F6A44 000F3984  7F C3 F3 78 */ mr r3, r30
/* 800F6A48 000F3988  7F E4 FB 78 */ mr r4, r31
/* 800F6A4C 000F398C  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800F6A50 000F3990  4B FB 65 61 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMMorf
/* 800F6A54 000F3994  38 60 00 01 */ li r3, 1
/* 800F6A58 000F3998  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F6A5C 000F399C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800F6A60 000F39A0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F6A64 000F39A4  7C 08 03 A6 */ mtlr r0
/* 800F6A68 000F39A8  38 21 00 10 */ addi r1, r1, 0x10
/* 800F6A6C 000F39AC  4E 80 00 20 */ blr