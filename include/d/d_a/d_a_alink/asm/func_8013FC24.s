/* 8013FC24 0013CB64  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013FC28 0013CB68  7C 08 02 A6 */ mflr r0
/* 8013FC2C 0013CB6C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013FC30 0013CB70  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013FC34 0013CB74  93 C1 00 08 */ stw r30, 8(r1)
/* 8013FC38 0013CB78  7C 7E 1B 78 */ mr r30, r3
/* 8013FC3C 0013CB7C  83 E3 28 10 */ lwz r31, 0x2810(r3)
/* 8013FC40 0013CB80  80 83 31 9C */ lwz r4, 0x319c(r3)
/* 8013FC44 0013CB84  2C 04 00 00 */ cmpwi r4, 0
/* 8013FC48 0013CB88  41 80 00 E0 */ blt lbl_8013FD28
/* 8013FC4C 0013CB8C  A0 1E 06 04 */ lhz r0, 0x604(r30)
/* 8013FC50 0013CB90  2C 00 00 05 */ cmpwi r0, 5
/* 8013FC54 0013CB94  40 82 00 90 */ bne lbl_8013FCE4
/* 8013FC58 0013CB98  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FC5C 0013CB9C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FC60 0013CBA0  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 8013FC64 0013CBA4  7F C4 F3 78 */ mr r4, r30
/* 8013FC68 0013CBA8  4B F0 28 B1 */ bl reset__14dEvt_control_cFv_X1_
/* 8013FC6C 0013CBAC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FC70 0013CBB0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FC74 0013CBB4  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8013FC78 0013CBB8  54 00 01 88 */ rlwinm r0, r0, 0, 6, 4
/* 8013FC7C 0013CBBC  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 8013FC80 0013CBC0  A8 1E 30 12 */ lha r0, 0x3012(r30)
/* 8013FC84 0013CBC4  2C 00 00 B0 */ cmpwi r0, 0xb0
/* 8013FC88 0013CBC8  40 82 00 2C */ bne lbl_8013FCB4
/* 8013FC8C 0013CBCC  7F C3 F3 78 */ mr r3, r30
/* 8013FC90 0013CBD0  3C 80 80 39 */ lis r4, lbl_80392094@ha
/* 8013FC94 0013CBD4  38 84 20 94 */ addi r4, r4, lbl_80392094@l
/* 8013FC98 0013CBD8  38 84 03 1E */ addi r4, r4, 0x31e
/* 8013FC9C 0013CBDC  3C A0 00 01 */ lis r5, 0x0000FFFF@ha
/* 8013FCA0 0013CBE0  38 A5 FF FF */ addi r5, r5, 0x0000FFFF@l
/* 8013FCA4 0013CBE4  38 C0 04 00 */ li r6, 0x400
/* 8013FCA8 0013CBE8  38 E0 00 01 */ li r7, 1
/* 8013FCAC 0013CBEC  4B ED B7 21 */ bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8013FCB0 0013CBF0  48 00 00 28 */ b lbl_8013FCD8
lbl_8013FCB4:
/* 8013FCB4 0013CBF4  7F C3 F3 78 */ mr r3, r30
/* 8013FCB8 0013CBF8  3C 80 80 39 */ lis r4, lbl_80392094@ha
/* 8013FCBC 0013CBFC  38 84 20 94 */ addi r4, r4, lbl_80392094@l
/* 8013FCC0 0013CC00  38 84 03 28 */ addi r4, r4, 0x328
/* 8013FCC4 0013CC04  3C A0 00 01 */ lis r5, 0x0000FFFF@ha
/* 8013FCC8 0013CC08  38 A5 FF FF */ addi r5, r5, 0x0000FFFF@l
/* 8013FCCC 0013CC0C  38 C0 04 00 */ li r6, 0x400
/* 8013FCD0 0013CC10  38 E0 00 01 */ li r7, 1
/* 8013FCD4 0013CC14  4B ED B6 F9 */ bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
lbl_8013FCD8:
/* 8013FCD8 0013CC18  38 00 00 02 */ li r0, 2
/* 8013FCDC 0013CC1C  B0 1E 06 04 */ sth r0, 0x604(r30)
/* 8013FCE0 0013CC20  48 00 00 48 */ b lbl_8013FD28
lbl_8013FCE4:
/* 8013FCE4 0013CC24  80 1E 06 0C */ lwz r0, 0x60c(r30)
/* 8013FCE8 0013CC28  2C 00 00 00 */ cmpwi r0, 0
/* 8013FCEC 0013CC2C  40 82 00 3C */ bne lbl_8013FD28
/* 8013FCF0 0013CC30  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FCF4 0013CC34  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FCF8 0013CC38  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 8013FCFC 0013CC3C  54 84 04 3E */ clrlwi r4, r4, 0x10
/* 8013FD00 0013CC40  4B EF 4C 8D */ bl onEventBit__11dSv_event_cFUs
/* 8013FD04 0013CC44  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FD08 0013CC48  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FD0C 0013CC4C  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8013FD10 0013CC50  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 8013FD14 0013CC54  4B F0 84 69 */ bl cutEnd__16dEvent_manager_cFi
/* 8013FD18 0013CC58  28 1F 00 00 */ cmplwi r31, 0
/* 8013FD1C 0013CC5C  41 82 00 0C */ beq lbl_8013FD28
/* 8013FD20 0013CC60  38 00 00 00 */ li r0, 0
/* 8013FD24 0013CC64  98 1F 05 88 */ stb r0, 0x588(r31)
lbl_8013FD28:
/* 8013FD28 0013CC68  7F C3 F3 78 */ mr r3, r30
/* 8013FD2C 0013CC6C  38 80 00 72 */ li r4, 0x72
/* 8013FD30 0013CC70  4B FE 8A DD */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANMWolf
/* 8013FD34 0013CC74  2C 03 00 00 */ cmpwi r3, 0
/* 8013FD38 0013CC78  41 82 00 14 */ beq lbl_8013FD4C
/* 8013FD3C 0013CC7C  7F C3 F3 78 */ mr r3, r30
/* 8013FD40 0013CC80  3C 80 00 01 */ lis r4, 0x0001003E@ha
/* 8013FD44 0013CC84  38 84 00 3E */ addi r4, r4, 0x0001003E@l
/* 8013FD48 0013CC88  4B F7 F3 71 */ bl voiceStartLevel__9daAlink_cFUl
lbl_8013FD4C:
/* 8013FD4C 0013CC8C  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 8013FD50 0013CC90  2C 00 00 00 */ cmpwi r0, 0
/* 8013FD54 0013CC94  41 82 00 0C */ beq lbl_8013FD60
/* 8013FD58 0013CC98  38 00 00 04 */ li r0, 4
/* 8013FD5C 0013CC9C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
lbl_8013FD60:
/* 8013FD60 0013CCA0  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 8013FD64 0013CCA4  2C 00 00 00 */ cmpwi r0, 0
/* 8013FD68 0013CCA8  41 82 00 6C */ beq lbl_8013FDD4
/* 8013FD6C 0013CCAC  38 7E 28 64 */ addi r3, r30, 0x2864
/* 8013FD70 0013CCB0  7F C4 F3 78 */ mr r4, r30
/* 8013FD74 0013CCB4  38 A0 00 00 */ li r5, 0
/* 8013FD78 0013CCB8  38 C0 00 00 */ li r6, 0
/* 8013FD7C 0013CCBC  48 10 A5 5D */ bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8013FD80 0013CCC0  2C 03 00 00 */ cmpwi r3, 0
/* 8013FD84 0013CCC4  41 82 00 20 */ beq lbl_8013FDA4
/* 8013FD88 0013CCC8  28 1F 00 00 */ cmplwi r31, 0
/* 8013FD8C 0013CCCC  41 82 00 0C */ beq lbl_8013FD98
/* 8013FD90 0013CCD0  38 00 00 00 */ li r0, 0
/* 8013FD94 0013CCD4  98 1F 05 88 */ stb r0, 0x588(r31)
lbl_8013FD98:
/* 8013FD98 0013CCD8  7F C3 F3 78 */ mr r3, r30
/* 8013FD9C 0013CCDC  4B FD 7E F5 */ bl resetSpecialEvent__9daAlink_cFv
/* 8013FDA0 0013CCE0  48 00 01 6C */ b lbl_8013FF0C
lbl_8013FDA4:
/* 8013FDA4 0013CCE4  A0 1E 28 9E */ lhz r0, 0x289e(r30)
/* 8013FDA8 0013CCE8  7C 00 07 35 */ extsh. r0, r0
/* 8013FDAC 0013CCEC  40 82 01 60 */ bne lbl_8013FF0C
/* 8013FDB0 0013CCF0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FDB4 0013CCF4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FDB8 0013CCF8  88 63 00 16 */ lbz r3, 0x16(r3)
/* 8013FDBC 0013CCFC  A8 1E 30 12 */ lha r0, 0x3012(r30)
/* 8013FDC0 0013CD00  7C 00 18 00 */ cmpw r0, r3
/* 8013FDC4 0013CD04  41 82 01 48 */ beq lbl_8013FF0C
/* 8013FDC8 0013CD08  7F C3 F3 78 */ mr r3, r30
/* 8013FDCC 0013CD0C  4B FF FB 41 */ bl setSmellSave__9daAlink_cFv
/* 8013FDD0 0013CD10  48 00 01 3C */ b lbl_8013FF0C
lbl_8013FDD4:
/* 8013FDD4 0013CD14  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 8013FDD8 0013CD18  2C 00 00 00 */ cmpwi r0, 0
/* 8013FDDC 0013CD1C  40 82 00 EC */ bne lbl_8013FEC8
/* 8013FDE0 0013CD20  28 1F 00 00 */ cmplwi r31, 0
/* 8013FDE4 0013CD24  41 82 00 34 */ beq lbl_8013FE18
/* 8013FDE8 0013CD28  80 1E 31 9C */ lwz r0, 0x319c(r30)
/* 8013FDEC 0013CD2C  2C 00 00 00 */ cmpwi r0, 0
/* 8013FDF0 0013CD30  40 80 00 10 */ bge lbl_8013FE00
/* 8013FDF4 0013CD34  88 1F 05 88 */ lbz r0, 0x588(r31)
/* 8013FDF8 0013CD38  28 00 00 02 */ cmplwi r0, 2
/* 8013FDFC 0013CD3C  41 82 00 1C */ beq lbl_8013FE18
lbl_8013FE00:
/* 8013FE00 0013CD40  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 8013FE04 0013CD44  28 00 00 37 */ cmplwi r0, 0x37
/* 8013FE08 0013CD48  40 82 00 A8 */ bne lbl_8013FEB0
/* 8013FE0C 0013CD4C  80 1E 06 0C */ lwz r0, 0x60c(r30)
/* 8013FE10 0013CD50  2C 00 00 01 */ cmpwi r0, 1
/* 8013FE14 0013CD54  40 82 00 9C */ bne lbl_8013FEB0
lbl_8013FE18:
/* 8013FE18 0013CD58  7F C3 F3 78 */ mr r3, r30
/* 8013FE1C 0013CD5C  38 80 00 83 */ li r4, 0x83
/* 8013FE20 0013CD60  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013FE24 0013CD64  C0 42 93 30 */ lfs f2, lbl_80452D30-_SDA2_BASE_(r2)
/* 8013FE28 0013CD68  38 A0 FF FF */ li r5, -1
/* 8013FE2C 0013CD6C  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8013FE30 0013CD70  4B FE 98 D5 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolf
/* 8013FE34 0013CD74  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013FE38 0013CD78  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013FE3C 0013CD7C  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8013FE40 0013CD80  64 00 04 00 */ oris r0, r0, 0x400
/* 8013FE44 0013CD84  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 8013FE48 0013CD88  28 1F 00 00 */ cmplwi r31, 0
/* 8013FE4C 0013CD8C  41 82 00 10 */ beq lbl_8013FE5C
/* 8013FE50 0013CD90  80 1F 04 9C */ lwz r0, 0x49c(r31)
/* 8013FE54 0013CD94  60 00 08 00 */ ori r0, r0, 0x800
/* 8013FE58 0013CD98  90 1F 04 9C */ stw r0, 0x49c(r31)
lbl_8013FE5C:
/* 8013FE5C 0013CD9C  38 00 00 01 */ li r0, 1
/* 8013FE60 0013CDA0  B0 1E 30 10 */ sth r0, 0x3010(r30)
/* 8013FE64 0013CDA4  28 1E 00 00 */ cmplwi r30, 0
/* 8013FE68 0013CDA8  41 82 00 0C */ beq lbl_8013FE74
/* 8013FE6C 0013CDAC  83 FE 00 04 */ lwz r31, 4(r30)
/* 8013FE70 0013CDB0  48 00 00 08 */ b lbl_8013FE78
lbl_8013FE74:
/* 8013FE74 0013CDB4  3B E0 FF FF */ li r31, -1
lbl_8013FE78:
/* 8013FE78 0013CDB8  48 04 17 C9 */ bl dCam_getBody
/* 8013FE7C 0013CDBC  38 80 00 08 */ li r4, 8
/* 8013FE80 0013CDC0  7F E5 FB 78 */ mr r5, r31
/* 8013FE84 0013CDC4  38 C0 00 00 */ li r6, 0
/* 8013FE88 0013CDC8  4C C6 31 82 */ crclr 6
/* 8013FE8C 0013CDCC  4B F4 8B F1 */ bl StartEventCamera__9dCamera_cFiie
/* 8013FE90 0013CDD0  38 00 00 0C */ li r0, 0xc
/* 8013FE94 0013CDD4  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8013FE98 0013CDD8  80 1E 31 98 */ lwz r0, 0x3198(r30)
/* 8013FE9C 0013CDDC  2C 00 0B BC */ cmpwi r0, 0xbbc
/* 8013FEA0 0013CDE0  40 82 00 6C */ bne lbl_8013FF0C
/* 8013FEA4 0013CDE4  7F C3 F3 78 */ mr r3, r30
/* 8013FEA8 0013CDE8  4B FF FA 65 */ bl setSmellSave__9daAlink_cFv
/* 8013FEAC 0013CDEC  48 00 00 60 */ b lbl_8013FF0C
lbl_8013FEB0:
/* 8013FEB0 0013CDF0  A8 7E 30 08 */ lha r3, 0x3008(r30)
/* 8013FEB4 0013CDF4  2C 03 00 00 */ cmpwi r3, 0
/* 8013FEB8 0013CDF8  41 82 00 54 */ beq lbl_8013FF0C
/* 8013FEBC 0013CDFC  38 03 FF FF */ addi r0, r3, -1
/* 8013FEC0 0013CE00  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 8013FEC4 0013CE04  48 00 00 48 */ b lbl_8013FF0C
lbl_8013FEC8:
/* 8013FEC8 0013CE08  38 7E 1F D0 */ addi r3, r30, 0x1fd0
/* 8013FECC 0013CE0C  48 01 E6 01 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013FED0 0013CE10  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013FED4 0013CE14  41 82 00 38 */ beq lbl_8013FF0C
/* 8013FED8 0013CE18  7F C3 F3 78 */ mr r3, r30
/* 8013FEDC 0013CE1C  38 80 00 84 */ li r4, 0x84
/* 8013FEE0 0013CE20  4B FE 97 99 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 8013FEE4 0013CE24  38 00 00 0C */ li r0, 0xc
/* 8013FEE8 0013CE28  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8013FEEC 0013CE2C  38 00 00 01 */ li r0, 1
/* 8013FEF0 0013CE30  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8013FEF4 0013CE34  38 7E 28 64 */ addi r3, r30, 0x2864
/* 8013FEF8 0013CE38  7F C4 F3 78 */ mr r4, r30
/* 8013FEFC 0013CE3C  80 BE 31 98 */ lwz r5, 0x3198(r30)
/* 8013FF00 0013CE40  38 C0 00 00 */ li r6, 0
/* 8013FF04 0013CE44  38 E0 00 00 */ li r7, 0
/* 8013FF08 0013CE48  48 10 A0 89 */ bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8013FF0C:
/* 8013FF0C 0013CE4C  38 60 00 01 */ li r3, 1
/* 8013FF10 0013CE50  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013FF14 0013CE54  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013FF18 0013CE58  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013FF1C 0013CE5C  7C 08 03 A6 */ mtlr r0
/* 8013FF20 0013CE60  38 21 00 10 */ addi r1, r1, 0x10
/* 8013FF24 0013CE64  4E 80 00 20 */ blr
