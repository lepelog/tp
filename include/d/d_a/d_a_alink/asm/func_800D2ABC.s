/* 800D2ABC 000CF9FC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800D2AC0 000CFA00  7C 08 02 A6 */ mflr r0
/* 800D2AC4 000CFA04  90 01 00 24 */ stw r0, 0x24(r1)
/* 800D2AC8 000CFA08  39 61 00 20 */ addi r11, r1, 0x20
/* 800D2ACC 000CFA0C  48 28 F7 0D */ bl _savegpr_28
/* 800D2AD0 000CFA10  7C 7C 1B 78 */ mr r28, r3
/* 800D2AD4 000CFA14  3B C0 00 01 */ li r30, 1
/* 800D2AD8 000CFA18  3B A0 00 00 */ li r29, 0
/* 800D2ADC 000CFA1C  7F DF F3 78 */ mr r31, r30
/* 800D2AE0 000CFA20  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D2AE4 000CFA24  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D2AE8 000CFA28  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 800D2AEC 000CFA2C  38 80 2A 20 */ li r4, 0x2a20
/* 800D2AF0 000CFA30  4B F6 1E CD */ bl isEventBit__11dSv_event_cCFUs
/* 800D2AF4 000CFA34  2C 03 00 00 */ cmpwi r3, 0
/* 800D2AF8 000CFA38  40 82 00 14 */ bne lbl_800D2B0C
/* 800D2AFC 000CFA3C  80 1C 05 7C */ lwz r0, 0x57c(r28)
/* 800D2B00 000CFA40  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800D2B04 000CFA44  40 82 00 08 */ bne lbl_800D2B0C
/* 800D2B08 000CFA48  3B E0 00 00 */ li r31, 0
lbl_800D2B0C:
/* 800D2B0C 000CFA4C  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 800D2B10 000CFA50  41 82 00 28 */ beq lbl_800D2B38
/* 800D2B14 000CFA54  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D2B18 000CFA58  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D2B1C 000CFA5C  A3 E3 00 02 */ lhz r31, 2(r3)
/* 800D2B20 000CFA60  4B F5 B1 89 */ bl dComIfGs_getMaxLifeGauge__Fv
/* 800D2B24 000CFA64  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 800D2B28 000CFA68  57 E0 04 3E */ clrlwi r0, r31, 0x10
/* 800D2B2C 000CFA6C  7C 00 18 40 */ cmplw r0, r3
/* 800D2B30 000CFA70  40 82 00 08 */ bne lbl_800D2B38
/* 800D2B34 000CFA74  3B A0 00 01 */ li r29, 1
lbl_800D2B38:
/* 800D2B38 000CFA78  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800D2B3C 000CFA7C  40 82 00 30 */ bne lbl_800D2B6C
/* 800D2B40 000CFA80  38 60 00 00 */ li r3, 0
/* 800D2B44 000CFA84  80 1C 06 14 */ lwz r0, 0x614(r28)
/* 800D2B48 000CFA88  28 00 00 24 */ cmplwi r0, 0x24
/* 800D2B4C 000CFA8C  40 82 00 14 */ bne lbl_800D2B60
/* 800D2B50 000CFA90  80 1C 06 0C */ lwz r0, 0x60c(r28)
/* 800D2B54 000CFA94  2C 00 00 33 */ cmpwi r0, 0x33
/* 800D2B58 000CFA98  40 82 00 08 */ bne lbl_800D2B60
/* 800D2B5C 000CFA9C  38 60 00 01 */ li r3, 1
lbl_800D2B60:
/* 800D2B60 000CFAA0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D2B64 000CFAA4  40 82 00 08 */ bne lbl_800D2B6C
/* 800D2B68 000CFAA8  3B C0 00 00 */ li r30, 0
lbl_800D2B6C:
/* 800D2B6C 000CFAAC  57 C3 06 3E */ clrlwi r3, r30, 0x18
/* 800D2B70 000CFAB0  39 61 00 20 */ addi r11, r1, 0x20
/* 800D2B74 000CFAB4  48 28 F6 B1 */ bl _restgpr_28
/* 800D2B78 000CFAB8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800D2B7C 000CFABC  7C 08 03 A6 */ mtlr r0
/* 800D2B80 000CFAC0  38 21 00 20 */ addi r1, r1, 0x20
/* 800D2B84 000CFAC4  4E 80 00 20 */ blr
