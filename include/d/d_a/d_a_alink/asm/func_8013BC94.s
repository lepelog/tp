/* 8013BC94 00138BD4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8013BC98 00138BD8  7C 08 02 A6 */ mflr r0
/* 8013BC9C 00138BDC  90 01 00 24 */ stw r0, 0x24(r1)
/* 8013BCA0 00138BE0  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8013BCA4 00138BE4  7C 7F 1B 78 */ mr r31, r3
/* 8013BCA8 00138BE8  38 80 01 24 */ li r4, 0x124
/* 8013BCAC 00138BEC  4B F8 62 C1 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013BCB0 00138BF0  7F E3 FB 78 */ mr r3, r31
/* 8013BCB4 00138BF4  38 80 00 65 */ li r4, 0x65
/* 8013BCB8 00138BF8  3C A0 80 39 */ lis r5, lbl_8038F658@ha
/* 8013BCBC 00138BFC  38 A5 F6 58 */ addi r5, r5, lbl_8038F658@l
/* 8013BCC0 00138C00  38 A5 00 64 */ addi r5, r5, 0x64
/* 8013BCC4 00138C04  4B FE DB 85 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfParam
/* 8013BCC8 00138C08  7F E3 FB 78 */ mr r3, r31
/* 8013BCCC 00138C0C  38 80 00 97 */ li r4, 0x97
/* 8013BCD0 00138C10  4B F7 3B D1 */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013BCD4 00138C14  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013BCD8 00138C18  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013BCDC 00138C1C  7F E3 FB 78 */ mr r3, r31
/* 8013BCE0 00138C20  38 80 00 01 */ li r4, 1
/* 8013BCE4 00138C24  4B FE 54 DD */ bl setFootEffectProcType__9daAlink_cFi
/* 8013BCE8 00138C28  38 00 00 18 */ li r0, 0x18
/* 8013BCEC 00138C2C  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 8013BCF0 00138C30  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8013BCF4 00138C34  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8013BCF8 00138C38  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 8013BCFC 00138C3C  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013BD00 00138C40  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 8013BD04 00138C44  C0 03 00 08 */ lfs f0, 8(r3)
/* 8013BD08 00138C48  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 8013BD0C 00138C4C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013BD10 00138C50  D0 21 00 08 */ stfs f1, 8(r1)
/* 8013BD14 00138C54  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013BD18 00138C58  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8013BD1C 00138C5C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 8013BD20 00138C60  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013BD24 00138C64  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013BD28 00138C68  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 8013BD2C 00138C6C  38 80 00 01 */ li r4, 1
/* 8013BD30 00138C70  38 A0 00 0F */ li r5, 0xf
/* 8013BD34 00138C74  38 C1 00 08 */ addi r6, r1, 8
/* 8013BD38 00138C78  4B F3 3C ED */ bl StartShock__12dVibration_cFii4cXyz
/* 8013BD3C 00138C7C  38 60 00 01 */ li r3, 1
/* 8013BD40 00138C80  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8013BD44 00138C84  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8013BD48 00138C88  7C 08 03 A6 */ mtlr r0
/* 8013BD4C 00138C8C  38 21 00 20 */ addi r1, r1, 0x20
/* 8013BD50 00138C90  4E 80 00 20 */ blr