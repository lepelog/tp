/* 80026D38 00023C78  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80026D3C 00023C7C  7C 08 02 A6 */ mflr r0
/* 80026D40 00023C80  90 01 00 14 */ stw r0, 0x14(r1)
/* 80026D44 00023C84  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80026D48 00023C88  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80026D4C 00023C8C  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80026D50 00023C90  38 63 01 19 */ addi r3, r3, 0x119
/* 80026D54 00023C94  48 00 86 E1 */ bl dComIfG_getStageRes
/* 80026D58 00023C98  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80026D5C 00023C9C  3B E4 61 C0 */ addi r31, r4, g_dComIfG_gameInfo@l
/* 80026D60 00023CA0  38 9F 4E 20 */ addi r4, r31, 0x4e20
/* 80026D64 00023CA4  4B FF FD F5 */ bl dStage_dt_c_stageLoader
/* 80026D68 00023CA8  48 00 A8 3D */ bl execute__7daSus_cFv
/* 80026D6C 00023CAC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80026D70 00023CB0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80026D74 00023CB4  88 03 4E 0A */ lbz r0, 0x4e0a(r3)
/* 80026D78 00023CB8  7C 03 07 75 */ extsb. r3, r0
/* 80026D7C 00023CBC  41 80 00 08 */ blt lbl_80026D84
/* 80026D80 00023CC0  4B FF DF 91 */ bl func_80024D10
lbl_80026D84:
/* 80026D84 00023CC4  38 00 00 00 */ li r0, 0
/* 80026D88 00023CC8  3C 60 80 40 */ lis r3, lbl_80406194@ha
/* 80026D8C 00023CCC  98 03 61 94 */ stb r0, lbl_80406194@l(r3)
/* 80026D90 00023CD0  4B FF FB 09 */ bl dKankyo_create
/* 80026D94 00023CD4  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80026D98 00023CD8  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80026D9C 00023CDC  38 63 01 23 */ addi r3, r3, 0x123
/* 80026DA0 00023CE0  48 00 86 95 */ bl dComIfG_getStageRes
/* 80026DA4 00023CE4  28 03 00 00 */ cmplwi r3, 0
/* 80026DA8 00023CE8  41 82 00 34 */ beq lbl_80026DDC
/* 80026DAC 00023CEC  4B FF A9 49 */ bl fpcLy_CurrentLayer
/* 80026DB0 00023CF0  38 80 02 DA */ li r4, 0x2da
/* 80026DB4 00023CF4  38 A0 00 00 */ li r5, 0
/* 80026DB8 00023CF8  38 C0 00 00 */ li r6, 0
/* 80026DBC 00023CFC  38 E0 00 00 */ li r7, 0
/* 80026DC0 00023D00  4B FF CF D5 */ bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 80026DC4 00023D04  4B FF A9 31 */ bl fpcLy_CurrentLayer
/* 80026DC8 00023D08  38 80 02 DB */ li r4, 0x2db
/* 80026DCC 00023D0C  38 A0 00 00 */ li r5, 0
/* 80026DD0 00023D10  38 C0 00 00 */ li r6, 0
/* 80026DD4 00023D14  38 E0 00 00 */ li r7, 0
/* 80026DD8 00023D18  4B FF CF BD */ bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_80026DDC:
/* 80026DDC 00023D1C  38 7F 4F F8 */ addi r3, r31, 0x4ff8
/* 80026DE0 00023D20  48 01 F9 31 */ bl create__16dEvent_manager_cFv
/* 80026DE4 00023D24  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80026DE8 00023D28  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80026DEC 00023D2C  7C 08 03 A6 */ mtlr r0
/* 80026DF0 00023D30  38 21 00 10 */ addi r1, r1, 0x10
/* 80026DF4 00023D34  4E 80 00 20 */ blr
