/* 8011EE94 0011BDD4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011EE98 0011BDD8  7C 08 02 A6 */ mflr r0
/* 8011EE9C 0011BDDC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011EEA0 0011BDE0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011EEA4 0011BDE4  93 C1 00 08 */ stw r30, 8(r1)
/* 8011EEA8 0011BDE8  7C 7E 1B 78 */ mr r30, r3
/* 8011EEAC 0011BDEC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011EEB0 0011BDF0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011EEB4 0011BDF4  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 8011EEB8 0011BDF8  7F C4 F3 78 */ mr r4, r30
/* 8011EEBC 0011BDFC  38 A0 00 00 */ li r5, 0
/* 8011EEC0 0011BE00  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 8011EEC4 0011BE04  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 8011EEC8 0011BE08  4B F2 42 A5 */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 8011EECC 0011BE0C  2C 03 00 00 */ cmpwi r3, 0
/* 8011EED0 0011BE10  40 82 00 0C */ bne lbl_8011EEDC
/* 8011EED4 0011BE14  38 60 00 00 */ li r3, 0
/* 8011EED8 0011BE18  48 00 00 C8 */ b lbl_8011EFA0
lbl_8011EEDC:
/* 8011EEDC 0011BE1C  7F C3 F3 78 */ mr r3, r30
/* 8011EEE0 0011BE20  38 80 00 25 */ li r4, 0x25
/* 8011EEE4 0011BE24  4B FA 13 25 */ bl daAlink_c_NS_checkItemSetButton
/* 8011EEE8 0011BE28  2C 03 00 02 */ cmpwi r3, 2
/* 8011EEEC 0011BE2C  41 82 00 30 */ beq lbl_8011EF1C
/* 8011EEF0 0011BE30  38 60 02 77 */ li r3, 0x277
/* 8011EEF4 0011BE34  38 80 00 00 */ li r4, 0
/* 8011EEF8 0011BE38  38 BE 04 D0 */ addi r5, r30, 0x4d0
/* 8011EEFC 0011BE3C  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 8011EF00 0011BE40  7C 06 07 74 */ extsb r6, r0
/* 8011EF04 0011BE44  38 FE 04 E4 */ addi r7, r30, 0x4e4
/* 8011EF08 0011BE48  39 00 00 00 */ li r8, 0
/* 8011EF0C 0011BE4C  39 20 FF FF */ li r9, -1
/* 8011EF10 0011BE50  4B EF AE 89 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8011EF14 0011BE54  7C 7F 1B 78 */ mr r31, r3
/* 8011EF18 0011BE58  48 00 00 2C */ b lbl_8011EF44
lbl_8011EF1C:
/* 8011EF1C 0011BE5C  38 60 02 76 */ li r3, 0x276
/* 8011EF20 0011BE60  38 80 00 02 */ li r4, 2
/* 8011EF24 0011BE64  38 BE 04 D0 */ addi r5, r30, 0x4d0
/* 8011EF28 0011BE68  88 1E 04 E2 */ lbz r0, 0x4e2(r30)
/* 8011EF2C 0011BE6C  7C 06 07 74 */ extsb r6, r0
/* 8011EF30 0011BE70  38 FE 04 E4 */ addi r7, r30, 0x4e4
/* 8011EF34 0011BE74  39 00 00 00 */ li r8, 0
/* 8011EF38 0011BE78  39 20 FF FF */ li r9, -1
/* 8011EF3C 0011BE7C  4B EF AE 5D */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8011EF40 0011BE80  7C 7F 1B 78 */ mr r31, r3
lbl_8011EF44:
/* 8011EF44 0011BE84  3C 1F 00 01 */ addis r0, r31, 1
/* 8011EF48 0011BE88  28 00 FF FF */ cmplwi r0, 0xffff
/* 8011EF4C 0011BE8C  40 82 00 0C */ bne lbl_8011EF58
/* 8011EF50 0011BE90  38 60 00 00 */ li r3, 0
/* 8011EF54 0011BE94  48 00 00 4C */ b lbl_8011EFA0
lbl_8011EF58:
/* 8011EF58 0011BE98  38 00 00 05 */ li r0, 5
/* 8011EF5C 0011BE9C  B0 1E 06 04 */ sth r0, 0x604(r30)
/* 8011EF60 0011BEA0  7F C3 F3 78 */ mr r3, r30
/* 8011EF64 0011BEA4  38 80 00 EA */ li r4, 0xea
/* 8011EF68 0011BEA8  4B FA 30 05 */ bl daAlink_c_NS_commonProcInit
/* 8011EF6C 0011BEAC  7F C3 F3 78 */ mr r3, r30
/* 8011EF70 0011BEB0  38 80 01 88 */ li r4, 0x188
/* 8011EF74 0011BEB4  4B F8 E0 0D */ bl daAlink_c_NS_setSingleAnimeBase
/* 8011EF78 0011BEB8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011EF7C 0011BEBC  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8011EF80 0011BEC0  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8011EF84 0011BEC4  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8011EF88 0011BEC8  93 FE 32 CC */ stw r31, 0x32cc(r30)
/* 8011EF8C 0011BECC  38 00 00 00 */ li r0, 0
/* 8011EF90 0011BED0  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8011EF94 0011BED4  7F C3 F3 78 */ mr r3, r30
/* 8011EF98 0011BED8  4B FA 08 BD */ bl daAlink_c_NS_keepItemData
/* 8011EF9C 0011BEDC  38 60 00 01 */ li r3, 1
lbl_8011EFA0:
/* 8011EFA0 0011BEE0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011EFA4 0011BEE4  83 C1 00 08 */ lwz r30, 8(r1)
/* 8011EFA8 0011BEE8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011EFAC 0011BEEC  7C 08 03 A6 */ mtlr r0
/* 8011EFB0 0011BEF0  38 21 00 10 */ addi r1, r1, 0x10
/* 8011EFB4 0011BEF4  4E 80 00 20 */ blr