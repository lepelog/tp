/* 8001CB48 00019A88  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001CB4C 00019A8C  7C 08 02 A6 */ mflr r0
/* 8001CB50 00019A90  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001CB54 00019A94  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001CB58 00019A98  7C 7F 1B 78 */ mr r31, r3
/* 8001CB5C 00019A9C  80 03 04 9C */ lwz r0, 0x49c(r3)
/* 8001CB60 00019AA0  60 00 20 00 */ ori r0, r0, 0x2000
/* 8001CB64 00019AA4  90 03 04 9C */ stw r0, 0x49c(r3)
/* 8001CB68 00019AA8  2C 04 00 00 */ cmpwi r4, 0
/* 8001CB6C 00019AAC  41 82 00 20 */ beq lbl_8001CB8C
/* 8001CB70 00019AB0  4B FF CD 55 */ bl fopAcM_setStageLayer__FPv
/* 8001CB74 00019AB4  A0 9F 04 94 */ lhz r4, 0x494(r31)
/* 8001CB78 00019AB8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001CB7C 00019ABC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8001CB80 00019AC0  88 1F 04 BA */ lbz r0, 0x4ba(r31)
/* 8001CB84 00019AC4  7C 05 07 74 */ extsb r5, r0
/* 8001CB88 00019AC8  48 01 8A BD */ bl onActor__10dSv_info_cFii
lbl_8001CB8C:
/* 8001CB8C 00019ACC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001CB90 00019AD0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001CB94 00019AD4  7C 08 03 A6 */ mtlr r0
/* 8001CB98 00019AD8  38 21 00 10 */ addi r1, r1, 0x10
/* 8001CB9C 00019ADC  4E 80 00 20 */ blr
