/* 8013E240 0013B180  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013E244 0013B184  7C 08 02 A6 */ mflr r0
/* 8013E248 0013B188  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013E24C 0013B18C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013E250 0013B190  7C 7F 1B 78 */ mr r31, r3
/* 8013E254 0013B194  38 80 01 30 */ li r4, 0x130
/* 8013E258 0013B198  4B F8 3D 15 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013E25C 0013B19C  38 7F 28 0C */ addi r3, r31, 0x280c
/* 8013E260 0013B1A0  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 8013E264 0013B1A4  48 02 0A 55 */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013E268 0013B1A8  7F E3 FB 78 */ mr r3, r31
/* 8013E26C 0013B1AC  38 80 00 50 */ li r4, 0x50
/* 8013E270 0013B1B0  3C A0 80 39 */ lis r5, lbl_8038F578@ha
/* 8013E274 0013B1B4  38 A5 F5 78 */ addi r5, r5, lbl_8038F578@l
/* 8013E278 0013B1B8  4B FE B5 D1 */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013E27C 0013B1BC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013E280 0013B1C0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013E284 0013B1C4  38 00 00 00 */ li r0, 0
/* 8013E288 0013B1C8  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8013E28C 0013B1CC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 8013E290 0013B1D0  38 60 00 01 */ li r3, 1
/* 8013E294 0013B1D4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013E298 0013B1D8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013E29C 0013B1DC  7C 08 03 A6 */ mtlr r0
/* 8013E2A0 0013B1E0  38 21 00 10 */ addi r1, r1, 0x10
/* 8013E2A4 0013B1E4  4E 80 00 20 */ blr