/* 8013DB6C 0013AAAC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013DB70 0013AAB0  7C 08 02 A6 */ mflr r0
/* 8013DB74 0013AAB4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013DB78 0013AAB8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013DB7C 0013AABC  93 C1 00 08 */ stw r30, 8(r1)
/* 8013DB80 0013AAC0  7C 7E 1B 78 */ mr r30, r3
/* 8013DB84 0013AAC4  38 80 01 38 */ li r4, 0x138
/* 8013DB88 0013AAC8  4B F8 52 1D */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 8013DB8C 0013AACC  2C 03 00 00 */ cmpwi r3, 0
/* 8013DB90 0013AAD0  40 82 00 0C */ bne lbl_8013DB9C
/* 8013DB94 0013AAD4  38 60 00 01 */ li r3, 1
/* 8013DB98 0013AAD8  48 00 00 AC */ b lbl_8013DC44
lbl_8013DB9C:
/* 8013DB9C 0013AADC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013DBA0 0013AAE0  D0 3E 33 98 */ stfs f1, 0x3398(r30)
/* 8013DBA4 0013AAE4  D0 3E 04 FC */ stfs f1, 0x4fc(r30)
/* 8013DBA8 0013AAE8  7F C3 F3 78 */ mr r3, r30
/* 8013DBAC 0013AAEC  C0 5E 05 34 */ lfs f2, 0x534(r30)
/* 8013DBB0 0013AAF0  38 80 00 00 */ li r4, 0
/* 8013DBB4 0013AAF4  4B F7 DB BD */ bl setSpecialGravity__9daAlink_cFffi
/* 8013DBB8 0013AAF8  88 1E 05 6A */ lbz r0, 0x56a(r30)
/* 8013DBBC 0013AAFC  28 00 00 2C */ cmplwi r0, 0x2c
/* 8013DBC0 0013AB00  40 82 00 14 */ bne lbl_8013DBD4
/* 8013DBC4 0013AB04  38 00 00 01 */ li r0, 1
/* 8013DBC8 0013AB08  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8013DBCC 0013AB0C  3B E0 00 85 */ li r31, 0x85
/* 8013DBD0 0013AB10  48 00 00 30 */ b lbl_8013DC00
lbl_8013DBD4:
/* 8013DBD4 0013AB14  38 00 00 00 */ li r0, 0
/* 8013DBD8 0013AB18  B0 1E 30 0C */ sth r0, 0x300c(r30)
/*.global daAlink_searchEnemyCargo*/
/* 8013DBDC 0013AB1C  3C 60 80 14 */ lis r3, daAlink_searchEnemyCargo@ha
/*.global daAlink_searchEnemyCargo*/
/* 8013DBE0 0013AB20  38 63 DB 58 */ addi r3, r3, daAlink_searchEnemyCargo@l
/* 8013DBE4 0013AB24  38 80 00 00 */ li r4, 0
/* 8013DBE8 0013AB28  4B ED BC 11 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8013DBEC 0013AB2C  7C 64 1B 79 */ or. r4, r3, r3
/* 8013DBF0 0013AB30  41 82 00 0C */ beq lbl_8013DBFC
/* 8013DBF4 0013AB34  38 7E 28 0C */ addi r3, r30, 0x280c
/* 8013DBF8 0013AB38  48 02 10 C1 */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_8013DBFC:
/* 8013DBFC 0013AB3C  3B E0 00 86 */ li r31, 0x86
lbl_8013DC00:
/* 8013DC00 0013AB40  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013DC04 0013AB44  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013DC08 0013AB48  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8013DC0C 0013AB4C  4B F0 AC 21 */ bl checkStartDemo__16dEvent_manager_cFv
/* 8013DC10 0013AB50  2C 03 00 00 */ cmpwi r3, 0
/* 8013DC14 0013AB54  40 82 00 20 */ bne lbl_8013DC34
/* 8013DC18 0013AB58  7F C3 F3 78 */ mr r3, r30
/* 8013DC1C 0013AB5C  3C 80 00 01 */ lis r4, 0x000100AE@ha
/* 8013DC20 0013AB60  38 84 00 AE */ addi r4, r4, 0x000100AE@l
/* 8013DC24 0013AB64  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 8013DC28 0013AB68  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8013DC2C 0013AB6C  7D 89 03 A6 */ mtctr r12
/* 8013DC30 0013AB70  4E 80 04 21 */ bctrl
lbl_8013DC34:
/* 8013DC34 0013AB74  7F C3 F3 78 */ mr r3, r30
/* 8013DC38 0013AB78  7F E4 FB 78 */ mr r4, r31
/* 8013DC3C 0013AB7C  4B FE BA 3D */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 8013DC40 0013AB80  38 60 00 01 */ li r3, 1
lbl_8013DC44:
/* 8013DC44 0013AB84  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013DC48 0013AB88  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013DC4C 0013AB8C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013DC50 0013AB90  7C 08 03 A6 */ mtlr r0
/* 8013DC54 0013AB94  38 21 00 10 */ addi r1, r1, 0x10
/* 8013DC58 0013AB98  4E 80 00 20 */ blr