/* 80181ECC 0017EE0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80181ED0 0017EE10  7C 08 02 A6 */ mflr r0
/* 80181ED4 0017EE14  90 01 00 14 */ stw r0, 0x14(r1)
/* 80181ED8 0017EE18  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80181EDC 0017EE1C  7C 7F 1B 78 */ mr r31, r3
/* 80181EE0 0017EE20  4B FF F7 85 */ bl preparation
/* 80181EE4 0017EE24  80 6D 88 A0 */ lwz r3, lbl_80450E20-_SDA_BASE_(r13)
/* 80181EE8 0017EE28  4B EB 72 41 */ bl getActiveCamera__14dDemo_object_cFv
/* 80181EEC 0017EE2C  28 03 00 00 */ cmplwi r3, 0
/* 80181EF0 0017EE30  41 82 00 1C */ beq lbl_80181F0C
/* 80181EF4 0017EE34  38 7F 02 48 */ addi r3, r31, 0x248
/* 80181EF8 0017EE38  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80181EFC 0017EE3C  FC 40 08 90 */ fmr f2, f1
/* 80181F00 0017EE40  C0 62 9D 08 */ lfs f3, lbl_80453708-_SDA2_BASE_(r2)
/* 80181F04 0017EE44  C0 82 9C FC */ lfs f4, lbl_804536FC-_SDA2_BASE_(r2)
/* 80181F08 0017EE48  4B FE 40 AD */ bl setView__9dCamera_cFffff
lbl_80181F0C:
/* 80181F0C 0017EE4C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80181F10 0017EE50  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80181F14 0017EE54  80 03 5D 7C */ lwz r0, 0x5d7c(r3)
/* 80181F18 0017EE58  54 00 06 B0 */ rlwinm r0, r0, 0, 0x1a, 0x18
/* 80181F1C 0017EE5C  90 03 5D 7C */ stw r0, 0x5d7c(r3)
/* 80181F20 0017EE60  80 1F 02 6C */ lwz r0, 0x26c(r31)
/* 80181F24 0017EE64  2C 00 00 00 */ cmpwi r0, 0
/* 80181F28 0017EE68  40 82 00 10 */ bne lbl_80181F38
/* 80181F2C 0017EE6C  38 7F 02 48 */ addi r3, r31, 0x248
/* 80181F30 0017EE70  4B FE 03 85 */ bl Run__9dCamera_cFv
/* 80181F34 0017EE74  48 00 00 0C */ b lbl_80181F40
lbl_80181F38:
/* 80181F38 0017EE78  38 7F 02 48 */ addi r3, r31, 0x248
/* 80181F3C 0017EE7C  4B FE 0D FD */ bl NotRun__9dCamera_cFv
lbl_80181F40:
/* 80181F40 0017EE80  38 7F 02 48 */ addi r3, r31, 0x248
/* 80181F44 0017EE84  4B FE 10 F1 */ bl CalcTrimSize__9dCamera_cFv
/* 80181F48 0017EE88  7F E3 FB 78 */ mr r3, r31
/* 80181F4C 0017EE8C  4B FF F8 B9 */ bl store
/* 80181F50 0017EE90  7F E3 FB 78 */ mr r3, r31
/* 80181F54 0017EE94  4B FF F7 B5 */ bl view_setup
/* 80181F58 0017EE98  38 60 00 01 */ li r3, 1
/* 80181F5C 0017EE9C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80181F60 0017EEA0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80181F64 0017EEA4  7C 08 03 A6 */ mtlr r0
/* 80181F68 0017EEA8  38 21 00 10 */ addi r1, r1, 0x10
/* 80181F6C 0017EEAC  4E 80 00 20 */ blr