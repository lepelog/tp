/* 8001FD34 0001CC74  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8001FD38 0001CC78  7C 08 02 A6 */ mflr r0
/* 8001FD3C 0001CC7C  90 01 00 34 */ stw r0, 0x34(r1)
/* 8001FD40 0001CC80  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FD44 0001CC84  48 34 24 95 */ bl _savegpr_28
/* 8001FD48 0001CC88  7C 7C 1B 78 */ mr r28, r3
/* 8001FD4C 0001CC8C  7C 9D 23 78 */ mr r29, r4
/* 8001FD50 0001CC90  7C BE 2B 78 */ mr r30, r5
/* 8001FD54 0001CC94  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001FD58 0001CC98  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8001FD5C 0001CC9C  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8001FD60 0001CCA0  28 00 00 08 */ cmplwi r0, 8
/* 8001FD64 0001CCA4  40 82 00 14 */ bne lbl_8001FD78
/* 8001FD68 0001CCA8  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8001FD6C 0001CCAC  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8001FD70 0001CCB0  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 8001FD74 0001CCB4  48 1F F9 79 */ bl dMeter2_c_NS_emphasisButtonDelete
lbl_8001FD78:
/* 8001FD78 0001CCB8  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8001FD7C 0001CCBC  28 00 00 00 */ cmplwi r0, 0
/* 8001FD80 0001CCC0  41 82 00 2C */ beq lbl_8001FDAC
/* 8001FD84 0001CCC4  28 00 00 05 */ cmplwi r0, 5
/* 8001FD88 0001CCC8  41 82 00 24 */ beq lbl_8001FDAC
/* 8001FD8C 0001CCCC  28 00 00 02 */ cmplwi r0, 2
/* 8001FD90 0001CCD0  41 82 00 1C */ beq lbl_8001FDAC
/* 8001FD94 0001CCD4  28 00 00 03 */ cmplwi r0, 3
/* 8001FD98 0001CCD8  41 82 00 14 */ beq lbl_8001FDAC
/* 8001FD9C 0001CCDC  28 00 00 01 */ cmplwi r0, 1
/* 8001FDA0 0001CCE0  41 82 00 0C */ beq lbl_8001FDAC
/* 8001FDA4 0001CCE4  38 60 FF FF */ li r3, -1
/* 8001FDA8 0001CCE8  48 00 00 C4 */ b lbl_8001FE6C
lbl_8001FDAC:
/* 8001FDAC 0001CCEC  38 00 00 FF */ li r0, 0xff
/* 8001FDB0 0001CCF0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001FDB4 0001CCF4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8001FDB8 0001CCF8  98 03 5E 7C */ stb r0, 0x5e7c(r3)
/* 8001FDBC 0001CCFC  38 00 FF FF */ li r0, -1
/* 8001FDC0 0001CD00  90 03 5E E8 */ stw r0, 0x5ee8(r3)
/* 8001FDC4 0001CD04  28 1D 00 00 */ cmplwi r29, 0
/* 8001FDC8 0001CD08  41 82 00 20 */ beq lbl_8001FDE8
/* 8001FDCC 0001CD0C  C0 1D 05 38 */ lfs f0, 0x538(r29)
/* 8001FDD0 0001CD10  D0 01 00 08 */ stfs f0, 8(r1)
/* 8001FDD4 0001CD14  C0 1D 05 3C */ lfs f0, 0x53c(r29)
/* 8001FDD8 0001CD18  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8001FDDC 0001CD1C  C0 1D 05 40 */ lfs f0, 0x540(r29)
/* 8001FDE0 0001CD20  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8001FDE4 0001CD24  48 00 00 14 */ b lbl_8001FDF8
lbl_8001FDE8:
/* 8001FDE8 0001CD28  C0 02 82 70 */ lfs f0, lbl_80451C70-_SDA2_BASE_(r2)
/* 8001FDEC 0001CD2C  D0 01 00 08 */ stfs f0, 8(r1)
/* 8001FDF0 0001CD30  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8001FDF4 0001CD34  D0 01 00 10 */ stfs f0, 0x10(r1)
lbl_8001FDF8:
/* 8001FDF8 0001CD38  3C 60 80 43 */ lis r3, lbl_8043028C@ha
/* 8001FDFC 0001CD3C  38 63 02 8C */ addi r3, r3, lbl_8043028C@l
/* 8001FE00 0001CD40  88 03 03 1F */ lbz r0, 0x31f(r3)
/* 8001FE04 0001CD44  28 00 00 01 */ cmplwi r0, 1
/* 8001FE08 0001CD48  40 82 00 08 */ bne lbl_8001FE10
/* 8001FE0C 0001CD4C  AB 83 02 F4 */ lha r28, 0x2f4(r3)
lbl_8001FE10:
/* 8001FE10 0001CD50  80 6D 80 48 */ lwz r3, lbl_804505C8-_SDA_BASE_(r13)
/* 8001FE14 0001CD54  4B FF FC 11 */ bl fopMsgM_SearchByID
/* 8001FE18 0001CD58  28 03 00 00 */ cmplwi r3, 0
/* 8001FE1C 0001CD5C  41 82 00 4C */ beq lbl_8001FE68
/* 8001FE20 0001CD60  A0 03 00 F8 */ lhz r0, 0xf8(r3)
/* 8001FE24 0001CD64  28 00 00 01 */ cmplwi r0, 1
/* 8001FE28 0001CD68  40 82 00 40 */ bne lbl_8001FE68
/* 8001FE2C 0001CD6C  C0 01 00 08 */ lfs f0, 8(r1)
/* 8001FE30 0001CD70  D0 03 00 E0 */ stfs f0, 0xe0(r3)
/* 8001FE34 0001CD74  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8001FE38 0001CD78  D0 03 00 E4 */ stfs f0, 0xe4(r3)
/* 8001FE3C 0001CD7C  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8001FE40 0001CD80  D0 03 00 E8 */ stfs f0, 0xe8(r3)
/* 8001FE44 0001CD84  93 83 00 EC */ stw r28, 0xec(r3)
/* 8001FE48 0001CD88  93 C3 00 F0 */ stw r30, 0xf0(r3)
/* 8001FE4C 0001CD8C  93 A3 00 DC */ stw r29, 0xdc(r3)
/* 8001FE50 0001CD90  7F 84 E3 78 */ mr r4, r28
/* 8001FE54 0001CD94  7F C5 F3 78 */ mr r5, r30
/* 8001FE58 0001CD98  38 C0 00 00 */ li r6, 0
/* 8001FE5C 0001CD9C  48 21 3E A9 */ bl setMessageIndex__12dMsgObject_cFUlUlb
/* 8001FE60 0001CDA0  80 6D 80 48 */ lwz r3, lbl_804505C8-_SDA_BASE_(r13)
/* 8001FE64 0001CDA4  48 00 00 08 */ b lbl_8001FE6C
lbl_8001FE68:
/* 8001FE68 0001CDA8  38 60 00 00 */ li r3, 0
lbl_8001FE6C:
/* 8001FE6C 0001CDAC  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FE70 0001CDB0  48 34 23 B5 */ bl _restgpr_28
/* 8001FE74 0001CDB4  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8001FE78 0001CDB8  7C 08 03 A6 */ mtlr r0
/* 8001FE7C 0001CDBC  38 21 00 30 */ addi r1, r1, 0x30
/* 8001FE80 0001CDC0  4E 80 00 20 */ blr
