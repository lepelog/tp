/* 8012EDD0 0012BD10  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8012EDD4 0012BD14  7C 08 02 A6 */ mflr r0
/* 8012EDD8 0012BD18  90 01 00 44 */ stw r0, 0x44(r1)
/* 8012EDDC 0012BD1C  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 8012EDE0 0012BD20  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 8012EDE4 0012BD24  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8012EDE8 0012BD28  93 C1 00 28 */ stw r30, 0x28(r1)
/* 8012EDEC 0012BD2C  7C 7E 1B 78 */ mr r30, r3
/* 8012EDF0 0012BD30  7C 9F 23 78 */ mr r31, r4
/* 8012EDF4 0012BD34  FF E0 08 90 */ fmr f31, f1
/* 8012EDF8 0012BD38  38 80 00 FD */ li r4, 0xfd
/* 8012EDFC 0012BD3C  4B F9 3F A9 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 8012EE00 0012BD40  2C 03 00 00 */ cmpwi r3, 0
/* 8012EE04 0012BD44  40 82 00 0C */ bne lbl_8012EE10
/* 8012EE08 0012BD48  38 60 00 00 */ li r3, 0
/* 8012EE0C 0012BD4C  48 00 01 8C */ b lbl_8012EF98
lbl_8012EE10:
/* 8012EE10 0012BD50  38 00 00 00 */ li r0, 0
/* 8012EE14 0012BD54  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 8012EE18 0012BD58  2C 1F 00 01 */ cmpwi r31, 1
/* 8012EE1C 0012BD5C  40 82 00 1C */ bne lbl_8012EE38
/* 8012EE20 0012BD60  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012EE24 0012BD64  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8012EE28 0012BD68  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 8012EE2C 0012BD6C  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8012EE30 0012BD70  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8012EE34 0012BD74  48 00 00 8C */ b lbl_8012EEC0
lbl_8012EE38:
/* 8012EE38 0012BD78  2C 1F 00 04 */ cmpwi r31, 4
/* 8012EE3C 0012BD7C  40 82 00 84 */ bne lbl_8012EEC0
/* 8012EE40 0012BD80  A8 1E 2F FE */ lha r0, 0x2ffe(r30)
/* 8012EE44 0012BD84  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8012EE48 0012BD88  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012EE4C 0012BD8C  D0 21 00 08 */ stfs f1, 8(r1)
/* 8012EE50 0012BD90  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012EE54 0012BD94  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8012EE58 0012BD98  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 8012EE5C 0012BD9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012EE60 0012BDA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012EE64 0012BDA4  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 8012EE68 0012BDA8  38 80 00 06 */ li r4, 6
/* 8012EE6C 0012BDAC  38 A0 00 1F */ li r5, 0x1f
/* 8012EE70 0012BDB0  38 C1 00 08 */ addi r6, r1, 8
/* 8012EE74 0012BDB4  4B F4 0B B1 */ bl StartShock__12dVibration_cFii4cXyz
/* 8012EE78 0012BDB8  7F C3 F3 78 */ mr r3, r30
/* 8012EE7C 0012BDBC  80 9E 31 8C */ lwz r4, 0x318c(r30)
/* 8012EE80 0012BDC0  4B FA 85 F9 */ bl setDamagePoint__9daAlink_cFiiiiNormal
/* 8012EE84 0012BDC4  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 8012EE88 0012BDC8  60 00 40 00 */ ori r0, r0, 0x4000
/* 8012EE8C 0012BDCC  90 1E 05 74 */ stw r0, 0x574(r30)
/* 8012EE90 0012BDD0  A8 1E 05 6C */ lha r0, 0x56c(r30)
/* 8012EE94 0012BDD4  2C 00 00 00 */ cmpwi r0, 0
/* 8012EE98 0012BDD8  41 82 00 10 */ beq lbl_8012EEA8
/* 8012EE9C 0012BDDC  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 8012EEA0 0012BDE0  60 00 00 08 */ ori r0, r0, 8
/* 8012EEA4 0012BDE4  90 1E 31 A0 */ stw r0, 0x31a0(r30)
lbl_8012EEA8:
/* 8012EEA8 0012BDE8  C0 1E 34 08 */ lfs f0, 0x3408(r30)
/* 8012EEAC 0012BDEC  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8012EEB0 0012BDF0  C0 1E 34 0C */ lfs f0, 0x340c(r30)
/* 8012EEB4 0012BDF4  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 8012EEB8 0012BDF8  38 00 00 01 */ li r0, 1
/* 8012EEBC 0012BDFC  B0 1E 30 12 */ sth r0, 0x3012(r30)
lbl_8012EEC0:
/* 8012EEC0 0012BE00  7F C3 F3 78 */ mr r3, r30
/* 8012EEC4 0012BE04  38 80 00 05 */ li r4, 5
/* 8012EEC8 0012BE08  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012EECC 0012BE0C  FC 40 F8 90 */ fmr f2, f31
/* 8012EED0 0012BE10  4B FF A8 09 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBaseSpeed
/* 8012EED4 0012BE14  A8 1E 1F D8 */ lha r0, 0x1fd8(r30)
/* 8012EED8 0012BE18  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8012EEDC 0012BE1C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8012EEE0 0012BE20  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8012EEE4 0012BE24  3C 00 43 30 */ lis r0, 0x4330
/* 8012EEE8 0012BE28  90 01 00 18 */ stw r0, 0x18(r1)
/* 8012EEEC 0012BE2C  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 8012EEF0 0012BE30  EC 20 08 28 */ fsubs f1, f0, f1
/* 8012EEF4 0012BE34  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 8012EEF8 0012BE38  EC 01 00 28 */ fsubs f0, f1, f0
/* 8012EEFC 0012BE3C  D0 1E 1F E0 */ stfs f0, 0x1fe0(r30)
/* 8012EF00 0012BE40  C0 1E 1F E0 */ lfs f0, 0x1fe0(r30)
/* 8012EF04 0012BE44  80 7E 1F 2C */ lwz r3, 0x1f2c(r30)
/* 8012EF08 0012BE48  D0 03 00 08 */ stfs f0, 8(r3)
/* 8012EF0C 0012BE4C  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8012EF10 0012BE50  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8012EF14 0012BE54  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 8012EF18 0012BE58  C0 03 00 04 */ lfs f0, 4(r3)
/* 8012EF1C 0012BE5C  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 8012EF20 0012BE60  C0 03 00 08 */ lfs f0, 8(r3)
/* 8012EF24 0012BE64  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 8012EF28 0012BE68  38 00 00 0C */ li r0, 0xc
/* 8012EF2C 0012BE6C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8012EF30 0012BE70  7F C3 F3 78 */ mr r3, r30
/* 8012EF34 0012BE74  4B F9 05 AD */ bl resetBasAnime__9daAlink_cFv
/* 8012EF38 0012BE78  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 8012EF3C 0012BE7C  54 00 03 98 */ rlwinm r0, r0, 0, 0xe, 0xc
/* 8012EF40 0012BE80  90 1E 05 70 */ stw r0, 0x570(r30)
/* 8012EF44 0012BE84  2C 1F 00 04 */ cmpwi r31, 4
/* 8012EF48 0012BE88  41 82 00 3C */ beq lbl_8012EF84
/* 8012EF4C 0012BE8C  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 8012EF50 0012BE90  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8012EF54 0012BE94  7C 03 00 00 */ cmpw r3, r0
/* 8012EF58 0012BE98  40 82 00 2C */ bne lbl_8012EF84
/* 8012EF5C 0012BE9C  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 8012EF60 0012BEA0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012EF64 0012BEA4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012EF68 0012BEA8  40 81 00 10 */ ble lbl_8012EF78
/* 8012EF6C 0012BEAC  38 00 00 02 */ li r0, 2
/* 8012EF70 0012BEB0  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 8012EF74 0012BEB4  48 00 00 18 */ b lbl_8012EF8C
lbl_8012EF78:
/* 8012EF78 0012BEB8  38 00 00 01 */ li r0, 1
/* 8012EF7C 0012BEBC  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 8012EF80 0012BEC0  48 00 00 0C */ b lbl_8012EF8C
lbl_8012EF84:
/* 8012EF84 0012BEC4  38 00 00 00 */ li r0, 0
/* 8012EF88 0012BEC8  B0 1E 30 08 */ sth r0, 0x3008(r30)
lbl_8012EF8C:
/* 8012EF8C 0012BECC  38 00 00 07 */ li r0, 7
/* 8012EF90 0012BED0  B0 1E 30 0A */ sth r0, 0x300a(r30)
/* 8012EF94 0012BED4  38 60 00 01 */ li r3, 1
lbl_8012EF98:
/* 8012EF98 0012BED8  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 8012EF9C 0012BEDC  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 8012EFA0 0012BEE0  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8012EFA4 0012BEE4  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 8012EFA8 0012BEE8  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8012EFAC 0012BEEC  7C 08 03 A6 */ mtlr r0
/* 8012EFB0 0012BEF0  38 21 00 40 */ addi r1, r1, 0x40
/* 8012EFB4 0012BEF4  4E 80 00 20 */ blr