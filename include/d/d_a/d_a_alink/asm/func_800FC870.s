/* 800FC870 000F97B0  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800FC874 000F97B4  7C 08 02 A6 */ mflr r0
/* 800FC878 000F97B8  90 01 00 64 */ stw r0, 0x64(r1)
/* 800FC87C 000F97BC  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 800FC880 000F97C0  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 800FC884 000F97C4  39 61 00 50 */ addi r11, r1, 0x50
/* 800FC888 000F97C8  48 26 59 51 */ bl _savegpr_28
/* 800FC88C 000F97CC  7C 7D 1B 78 */ mr r29, r3
/* 800FC890 000F97D0  83 E3 28 10 */ lwz r31, 0x2810(r3)
/* 800FC894 000F97D4  80 03 32 CC */ lwz r0, 0x32cc(r3)
/* 800FC898 000F97D8  28 00 00 00 */ cmplwi r0, 0
/* 800FC89C 000F97DC  41 82 00 08 */ beq lbl_800FC8A4
/* 800FC8A0 000F97E0  4B FB 80 31 */ bl setJumpMode__9daAlink_cFv
lbl_800FC8A4:
/* 800FC8A4 000F97E4  A8 1D 30 0E */ lha r0, 0x300e(r29)
/* 800FC8A8 000F97E8  2C 00 00 00 */ cmpwi r0, 0
/* 800FC8AC 000F97EC  40 82 00 14 */ bne lbl_800FC8C0
/* 800FC8B0 000F97F0  7F A3 EB 78 */ mr r3, r29
/* 800FC8B4 000F97F4  4B FF FE 95 */ bl setBossBodyHangPos__9daAlink_cFv
/* 800FC8B8 000F97F8  2C 03 00 00 */ cmpwi r3, 0
/* 800FC8BC 000F97FC  40 82 00 80 */ bne lbl_800FC93C
lbl_800FC8C0:
/* 800FC8C0 000F9800  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FC8C4 000F9804  28 00 00 00 */ cmplwi r0, 0
/* 800FC8C8 000F9808  41 82 00 4C */ beq lbl_800FC914
/* 800FC8CC 000F980C  A8 1D 30 0E */ lha r0, 0x300e(r29)
/* 800FC8D0 000F9810  2C 00 00 00 */ cmpwi r0, 0
/* 800FC8D4 000F9814  40 80 00 14 */ bge lbl_800FC8E8
/* 800FC8D8 000F9818  7F A3 EB 78 */ mr r3, r29
/* 800FC8DC 000F981C  38 80 00 00 */ li r4, 0
/* 800FC8E0 000F9820  4B FC 8E C5 */ bl procBackJumpInit__9daAlink_cFi
/* 800FC8E4 000F9824  48 00 06 54 */ b lbl_800FCF38
lbl_800FC8E8:
/* 800FC8E8 000F9828  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800FC8EC 000F982C  B0 1D 31 02 */ sth r0, 0x3102(r29)
/* 800FC8F0 000F9830  7F A3 EB 78 */ mr r3, r29
/* 800FC8F4 000F9834  38 80 FF FA */ li r4, -6
/* 800FC8F8 000F9838  38 A0 00 01 */ li r5, 1
/* 800FC8FC 000F983C  38 C0 00 00 */ li r6, 0
/* 800FC900 000F9840  38 E0 00 00 */ li r7, 0
/* 800FC904 000F9844  39 00 00 00 */ li r8, 0
/* 800FC908 000F9848  39 20 00 00 */ li r9, 0
/* 800FC90C 000F984C  4B FD CD D1 */ bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800FC910 000F9850  48 00 06 28 */ b lbl_800FCF38
lbl_800FC914:
/* 800FC914 000F9854  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FC918 000F9858  D0 1D 34 08 */ stfs f0, 0x3408(r29)
/* 800FC91C 000F985C  D0 1D 34 0C */ stfs f0, 0x340c(r29)
/* 800FC920 000F9860  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800FC924 000F9864  B0 1D 2F FE */ sth r0, 0x2ffe(r29)
/* 800FC928 000F9868  38 00 00 00 */ li r0, 0
/* 800FC92C 000F986C  90 1D 31 8C */ stw r0, 0x318c(r29)
/* 800FC930 000F9870  7F A3 EB 78 */ mr r3, r29
/* 800FC934 000F9874  48 00 8F 6D */ bl procOctaIealSpitInit__9daAlink_cFv
/* 800FC938 000F9878  48 00 06 00 */ b lbl_800FCF38
lbl_800FC93C:
/* 800FC93C 000F987C  A0 1F 05 8E */ lhz r0, 0x58e(r31)
/* 800FC940 000F9880  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800FC944 000F9884  41 82 00 1C */ beq lbl_800FC960
/* 800FC948 000F9888  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 800FC94C 000F988C  2C 00 00 00 */ cmpwi r0, 0
/* 800FC950 000F9890  41 82 00 10 */ beq lbl_800FC960
/* 800FC954 000F9894  7F A3 EB 78 */ mr r3, r29
/* 800FC958 000F9898  38 80 00 30 */ li r4, 0x30
/* 800FC95C 000F989C  4B FB 69 0D */ bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800FC960:
/* 800FC960 000F98A0  3B DD 1F D0 */ addi r30, r29, 0x1fd0
/* 800FC964 000F98A4  7F C3 F3 78 */ mr r3, r30
/* 800FC968 000F98A8  48 06 1B 65 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC96C 000F98AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FC970 000F98B0  41 82 00 5C */ beq lbl_800FC9CC
/* 800FC974 000F98B4  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FC978 000F98B8  2C 00 01 6D */ cmpwi r0, 0x16d
/* 800FC97C 000F98BC  41 82 00 14 */ beq lbl_800FC990
/* 800FC980 000F98C0  2C 00 01 6E */ cmpwi r0, 0x16e
/* 800FC984 000F98C4  41 82 00 0C */ beq lbl_800FC990
/* 800FC988 000F98C8  38 00 00 01 */ li r0, 1
/* 800FC98C 000F98CC  B0 1D 30 0C */ sth r0, 0x300c(r29)
lbl_800FC990:
/* 800FC990 000F98D0  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FC994 000F98D4  2C 00 01 69 */ cmpwi r0, 0x169
/* 800FC998 000F98D8  40 82 00 34 */ bne lbl_800FC9CC
/* 800FC99C 000F98DC  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FC9A0 000F98E0  28 00 00 00 */ cmplwi r0, 0
/* 800FC9A4 000F98E4  41 82 00 14 */ beq lbl_800FC9B8
/* 800FC9A8 000F98E8  7F A3 EB 78 */ mr r3, r29
/* 800FC9AC 000F98EC  38 80 01 73 */ li r4, 0x173
/* 800FC9B0 000F98F0  4B FB 05 D1 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC9B4 000F98F4  48 00 00 10 */ b lbl_800FC9C4
lbl_800FC9B8:
/* 800FC9B8 000F98F8  7F A3 EB 78 */ mr r3, r29
/* 800FC9BC 000F98FC  38 80 01 6A */ li r4, 0x16a
/* 800FC9C0 000F9900  4B FB 05 C1 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FC9C4:
/* 800FC9C4 000F9904  38 00 01 6A */ li r0, 0x16a
/* 800FC9C8 000F9908  90 1D 31 98 */ stw r0, 0x3198(r29)
lbl_800FC9CC:
/* 800FC9CC 000F990C  A8 1D 30 08 */ lha r0, 0x3008(r29)
/* 800FC9D0 000F9910  2C 00 00 00 */ cmpwi r0, 0
/* 800FC9D4 000F9914  41 82 00 70 */ beq lbl_800FCA44
/* 800FC9D8 000F9918  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FC9DC 000F991C  2C 00 01 6B */ cmpwi r0, 0x16b
/* 800FC9E0 000F9920  41 82 00 64 */ beq lbl_800FCA44
/* 800FC9E4 000F9924  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FC9E8 000F9928  28 00 00 00 */ cmplwi r0, 0
/* 800FC9EC 000F992C  41 82 00 14 */ beq lbl_800FCA00
/* 800FC9F0 000F9930  7F A3 EB 78 */ mr r3, r29
/* 800FC9F4 000F9934  38 80 01 74 */ li r4, 0x174
/* 800FC9F8 000F9938  4B FB 05 89 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC9FC 000F993C  48 00 00 10 */ b lbl_800FCA0C
lbl_800FCA00:
/* 800FCA00 000F9940  7F A3 EB 78 */ mr r3, r29
/* 800FCA04 000F9944  38 80 01 6B */ li r4, 0x16b
/* 800FCA08 000F9948  4B FB 05 79 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FCA0C:
/* 800FCA0C 000F994C  38 00 01 6B */ li r0, 0x16b
/* 800FCA10 000F9950  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 800FCA14 000F9954  38 00 00 01 */ li r0, 1
/* 800FCA18 000F9958  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 800FCA1C 000F995C  38 00 00 00 */ li r0, 0
/* 800FCA20 000F9960  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 800FCA24 000F9964  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800FCA28 000F9968  28 00 01 03 */ cmplwi r0, 0x103
/* 800FCA2C 000F996C  40 82 00 10 */ bne lbl_800FCA3C
/* 800FCA30 000F9970  38 00 00 02 */ li r0, 2
/* 800FCA34 000F9974  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCA38 000F9978  48 00 00 0C */ b lbl_800FCA44
lbl_800FCA3C:
/* 800FCA3C 000F997C  38 00 00 FE */ li r0, 0xfe
/* 800FCA40 000F9980  B0 1D 30 10 */ sth r0, 0x3010(r29)
lbl_800FCA44:
/* 800FCA44 000F9984  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 800FCA48 000F9988  2C 00 00 00 */ cmpwi r0, 0
/* 800FCA4C 000F998C  41 82 01 C4 */ beq lbl_800FCC10
/* 800FCA50 000F9990  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FCA54 000F9994  3B 83 61 C0 */ addi r28, r3, g_dComIfG_gameInfo@l
/* 800FCA58 000F9998  88 1C 5E 24 */ lbz r0, 0x5e24(r28)
/* 800FCA5C 000F999C  28 00 00 30 */ cmplwi r0, 0x30
/* 800FCA60 000F99A0  40 82 00 10 */ bne lbl_800FCA70
/* 800FCA64 000F99A4  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800FCA68 000F99A8  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FCA6C 000F99AC  40 82 00 14 */ bne lbl_800FCA80
lbl_800FCA70:
/* 800FCA70 000F99B0  7F A3 EB 78 */ mr r3, r29
/* 800FCA74 000F99B4  4B FB 5C 45 */ bl swordSwingTrigger__9daAlink_cFv
/* 800FCA78 000F99B8  2C 03 00 00 */ cmpwi r3, 0
/* 800FCA7C 000F99BC  41 82 01 94 */ beq lbl_800FCC10
lbl_800FCA80:
/* 800FCA80 000F99C0  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800FCA84 000F99C4  28 00 01 03 */ cmplwi r0, 0x103
/* 800FCA88 000F99C8  41 82 00 0C */ beq lbl_800FCA94
/* 800FCA8C 000F99CC  7F A3 EB 78 */ mr r3, r29
/* 800FCA90 000F99D0  4B FD 47 D9 */ bl setSwordModel__9daAlink_cFv
lbl_800FCA94:
/* 800FCA94 000F99D4  88 1C 5E 24 */ lbz r0, 0x5e24(r28)
/* 800FCA98 000F99D8  28 00 00 30 */ cmplwi r0, 0x30
/* 800FCA9C 000F99DC  40 82 00 78 */ bne lbl_800FCB14
/* 800FCAA0 000F99E0  88 1D 2F 8D */ lbz r0, 0x2f8d(r29)
/* 800FCAA4 000F99E4  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FCAA8 000F99E8  41 82 00 6C */ beq lbl_800FCB14
/* 800FCAAC 000F99EC  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FCAB0 000F99F0  28 00 00 00 */ cmplwi r0, 0
/* 800FCAB4 000F99F4  41 82 00 18 */ beq lbl_800FCACC
/* 800FCAB8 000F99F8  7F A3 EB 78 */ mr r3, r29
/* 800FCABC 000F99FC  38 80 01 77 */ li r4, 0x177
/* 800FCAC0 000F9A00  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800FCAC4 000F9A04  4B FB 04 ED */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMMorf
/* 800FCAC8 000F9A08  48 00 00 14 */ b lbl_800FCADC
lbl_800FCACC:
/* 800FCACC 000F9A0C  7F A3 EB 78 */ mr r3, r29
/* 800FCAD0 000F9A10  38 80 01 6E */ li r4, 0x16e
/* 800FCAD4 000F9A14  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800FCAD8 000F9A18  4B FB 04 D9 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMMorf
lbl_800FCADC:
/* 800FCADC 000F9A1C  38 00 01 6E */ li r0, 0x16e
/* 800FCAE0 000F9A20  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 800FCAE4 000F9A24  38 00 00 00 */ li r0, 0
/* 800FCAE8 000F9A28  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCAEC 000F9A2C  C0 02 93 5C */ lfs f0, lbl_80452D5C-_SDA2_BASE_(r2)
/* 800FCAF0 000F9A30  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800FCAF4 000F9A34  C0 02 95 64 */ lfs f0, lbl_80452F64-_SDA2_BASE_(r2)
/* 800FCAF8 000F9A38  D0 1D 34 7C */ stfs f0, 0x347c(r29)
/* 800FCAFC 000F9A3C  7F A3 EB 78 */ mr r3, r29
/* 800FCB00 000F9A40  38 80 00 20 */ li r4, 0x20
/* 800FCB04 000F9A44  4B FD 4A 29 */ bl setCutType__9daAlink_cFUc
/* 800FCB08 000F9A48  38 00 00 03 */ li r0, 3
/* 800FCB0C 000F9A4C  B0 1D 30 0A */ sth r0, 0x300a(r29)
/* 800FCB10 000F9A50  48 00 00 EC */ b lbl_800FCBFC
lbl_800FCB14:
/* 800FCB14 000F9A54  7F A3 EB 78 */ mr r3, r29
/* 800FCB18 000F9A58  38 80 00 02 */ li r4, 2
/* 800FCB1C 000F9A5C  4B FD 4A 11 */ bl setCutType__9daAlink_cFUc
/* 800FCB20 000F9A60  A8 7D 30 12 */ lha r3, 0x3012(r29)
/* 800FCB24 000F9A64  38 03 00 01 */ addi r0, r3, 1
/* 800FCB28 000F9A68  B0 1D 30 12 */ sth r0, 0x3012(r29)
/* 800FCB2C 000F9A6C  A8 1D 30 12 */ lha r0, 0x3012(r29)
/* 800FCB30 000F9A70  2C 00 00 04 */ cmpwi r0, 4
/* 800FCB34 000F9A74  40 82 00 58 */ bne lbl_800FCB8C
/* 800FCB38 000F9A78  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FCB3C 000F9A7C  28 00 00 00 */ cmplwi r0, 0
/* 800FCB40 000F9A80  41 82 00 14 */ beq lbl_800FCB54
/* 800FCB44 000F9A84  7F A3 EB 78 */ mr r3, r29
/* 800FCB48 000F9A88  38 80 01 76 */ li r4, 0x176
/* 800FCB4C 000F9A8C  4B FB 04 35 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FCB50 000F9A90  48 00 00 10 */ b lbl_800FCB60
lbl_800FCB54:
/* 800FCB54 000F9A94  7F A3 EB 78 */ mr r3, r29
/* 800FCB58 000F9A98  38 80 01 6D */ li r4, 0x16d
/* 800FCB5C 000F9A9C  4B FB 04 25 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FCB60:
/* 800FCB60 000F9AA0  38 00 01 6D */ li r0, 0x16d
/* 800FCB64 000F9AA4  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 800FCB68 000F9AA8  C0 02 93 5C */ lfs f0, lbl_80452D5C-_SDA2_BASE_(r2)
/* 800FCB6C 000F9AAC  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800FCB70 000F9AB0  C0 02 93 1C */ lfs f0, lbl_80452D1C-_SDA2_BASE_(r2)
/* 800FCB74 000F9AB4  D0 1D 34 7C */ stfs f0, 0x347c(r29)
/* 800FCB78 000F9AB8  38 00 00 02 */ li r0, 2
/* 800FCB7C 000F9ABC  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCB80 000F9AC0  38 00 00 03 */ li r0, 3
/* 800FCB84 000F9AC4  B0 1D 30 0A */ sth r0, 0x300a(r29)
/* 800FCB88 000F9AC8  48 00 00 74 */ b lbl_800FCBFC
lbl_800FCB8C:
/* 800FCB8C 000F9ACC  80 1D 32 CC */ lwz r0, 0x32cc(r29)
/* 800FCB90 000F9AD0  28 00 00 00 */ cmplwi r0, 0
/* 800FCB94 000F9AD4  41 82 00 20 */ beq lbl_800FCBB4
/* 800FCB98 000F9AD8  7F A3 EB 78 */ mr r3, r29
/* 800FCB9C 000F9ADC  38 80 01 75 */ li r4, 0x175
/* 800FCBA0 000F9AE0  3C A0 80 39 */ lis r5, lbl_8038DE8C@ha
/* 800FCBA4 000F9AE4  38 A5 DE 8C */ addi r5, r5, lbl_8038DE8C@l
/* 800FCBA8 000F9AE8  38 A5 00 3C */ addi r5, r5, 0x3c
/* 800FCBAC 000F9AEC  4B FB 05 49 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800FCBB0 000F9AF0  48 00 00 1C */ b lbl_800FCBCC
lbl_800FCBB4:
/* 800FCBB4 000F9AF4  7F A3 EB 78 */ mr r3, r29
/* 800FCBB8 000F9AF8  38 80 01 6C */ li r4, 0x16c
/* 800FCBBC 000F9AFC  3C A0 80 39 */ lis r5, lbl_8038DE8C@ha
/* 800FCBC0 000F9B00  38 A5 DE 8C */ addi r5, r5, lbl_8038DE8C@l
/* 800FCBC4 000F9B04  38 A5 00 3C */ addi r5, r5, 0x3c
/* 800FCBC8 000F9B08  4B FB 05 2D */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
lbl_800FCBCC:
/* 800FCBCC 000F9B0C  38 00 01 6C */ li r0, 0x16c
/* 800FCBD0 000F9B10  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 800FCBD4 000F9B14  3C 60 80 39 */ lis r3, lbl_8038DE8C@ha
/* 800FCBD8 000F9B18  38 63 DE 8C */ addi r3, r3, lbl_8038DE8C@l
/* 800FCBDC 000F9B1C  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800FCBE0 000F9B20  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 800FCBE4 000F9B24  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 800FCBE8 000F9B28  D0 1D 34 7C */ stfs f0, 0x347c(r29)
/* 800FCBEC 000F9B2C  38 00 00 00 */ li r0, 0
/* 800FCBF0 000F9B30  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCBF4 000F9B34  38 00 00 01 */ li r0, 1
/* 800FCBF8 000F9B38  B0 1D 30 0A */ sth r0, 0x300a(r29)
lbl_800FCBFC:
/* 800FCBFC 000F9B3C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800FCC00 000F9B40  D0 1E 00 0C */ stfs f0, 0xc(r30)
/* 800FCC04 000F9B44  38 00 00 00 */ li r0, 0
/* 800FCC08 000F9B48  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 800FCC0C 000F9B4C  48 00 03 1C */ b lbl_800FCF28
lbl_800FCC10:
/* 800FCC10 000F9B50  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FCC14 000F9B54  2C 00 01 6C */ cmpwi r0, 0x16c
/* 800FCC18 000F9B58  41 82 00 14 */ beq lbl_800FCC2C
/* 800FCC1C 000F9B5C  2C 00 01 6D */ cmpwi r0, 0x16d
/* 800FCC20 000F9B60  41 82 00 0C */ beq lbl_800FCC2C
/* 800FCC24 000F9B64  2C 00 01 6E */ cmpwi r0, 0x16e
/* 800FCC28 000F9B68  40 82 03 00 */ bne lbl_800FCF28
lbl_800FCC2C:
/* 800FCC2C 000F9B6C  7F C3 F3 78 */ mr r3, r30
/* 800FCC30 000F9B70  48 06 18 9D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FCC34 000F9B74  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FCC38 000F9B78  41 82 00 1C */ beq lbl_800FCC54
/* 800FCC3C 000F9B7C  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FCC40 000F9B80  2C 00 01 6C */ cmpwi r0, 0x16c
/* 800FCC44 000F9B84  41 82 02 E4 */ beq lbl_800FCF28
/* 800FCC48 000F9B88  38 00 00 01 */ li r0, 1
/* 800FCC4C 000F9B8C  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 800FCC50 000F9B90  48 00 02 D8 */ b lbl_800FCF28
lbl_800FCC54:
/* 800FCC54 000F9B94  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800FCC58 000F9B98  C0 1D 34 78 */ lfs f0, 0x3478(r29)
/* 800FCC5C 000F9B9C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCC60 000F9BA0  40 81 00 10 */ ble lbl_800FCC70
/* 800FCC64 000F9BA4  38 00 00 01 */ li r0, 1
/* 800FCC68 000F9BA8  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 800FCC6C 000F9BAC  48 00 02 BC */ b lbl_800FCF28
lbl_800FCC70:
/* 800FCC70 000F9BB0  7F C3 F3 78 */ mr r3, r30
/* 800FCC74 000F9BB4  C0 3D 34 7C */ lfs f1, 0x347c(r29)
/* 800FCC78 000F9BB8  48 22 B7 B5 */ bl checkPass__12J3DFrameCtrlFf
/* 800FCC7C 000F9BBC  2C 03 00 00 */ cmpwi r3, 0
/* 800FCC80 000F9BC0  41 82 01 A4 */ beq lbl_800FCE24
/* 800FCC84 000F9BC4  38 61 00 20 */ addi r3, r1, 0x20
/* 800FCC88 000F9BC8  38 9D 05 BC */ addi r4, r29, 0x5bc
/* 800FCC8C 000F9BCC  38 BD 34 98 */ addi r5, r29, 0x3498
/* 800FCC90 000F9BD0  48 16 9E A5 */ bl __mi__4cXyzCFRC3Vec
/* 800FCC94 000F9BD4  C0 41 00 20 */ lfs f2, 0x20(r1)
/* 800FCC98 000F9BD8  D0 41 00 2C */ stfs f2, 0x2c(r1)
/* 800FCC9C 000F9BDC  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 800FCCA0 000F9BE0  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 800FCCA4 000F9BE4  C0 21 00 28 */ lfs f1, 0x28(r1)
/* 800FCCA8 000F9BE8  D0 21 00 34 */ stfs f1, 0x34(r1)
/* 800FCCAC 000F9BEC  D0 41 00 14 */ stfs f2, 0x14(r1)
/* 800FCCB0 000F9BF0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FCCB4 000F9BF4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800FCCB8 000F9BF8  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 800FCCBC 000F9BFC  38 61 00 14 */ addi r3, r1, 0x14
/* 800FCCC0 000F9C00  48 24 A4 79 */ bl PSVECSquareMag
/* 800FCCC4 000F9C04  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FCCC8 000F9C08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCCCC 000F9C0C  40 81 00 58 */ ble lbl_800FCD24
/* 800FCCD0 000F9C10  FC 00 08 34 */ frsqrte f0, f1
/* 800FCCD4 000F9C14  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800FCCD8 000F9C18  FC 44 00 32 */ fmul f2, f4, f0
/* 800FCCDC 000F9C1C  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800FCCE0 000F9C20  FC 00 00 32 */ fmul f0, f0, f0
/* 800FCCE4 000F9C24  FC 01 00 32 */ fmul f0, f1, f0
/* 800FCCE8 000F9C28  FC 03 00 28 */ fsub f0, f3, f0
/* 800FCCEC 000F9C2C  FC 02 00 32 */ fmul f0, f2, f0
/* 800FCCF0 000F9C30  FC 44 00 32 */ fmul f2, f4, f0
/* 800FCCF4 000F9C34  FC 00 00 32 */ fmul f0, f0, f0
/* 800FCCF8 000F9C38  FC 01 00 32 */ fmul f0, f1, f0
/* 800FCCFC 000F9C3C  FC 03 00 28 */ fsub f0, f3, f0
/* 800FCD00 000F9C40  FC 02 00 32 */ fmul f0, f2, f0
/* 800FCD04 000F9C44  FC 44 00 32 */ fmul f2, f4, f0
/* 800FCD08 000F9C48  FC 00 00 32 */ fmul f0, f0, f0
/* 800FCD0C 000F9C4C  FC 01 00 32 */ fmul f0, f1, f0
/* 800FCD10 000F9C50  FC 03 00 28 */ fsub f0, f3, f0
/* 800FCD14 000F9C54  FC 02 00 32 */ fmul f0, f2, f0
/* 800FCD18 000F9C58  FF E1 00 32 */ fmul f31, f1, f0
/* 800FCD1C 000F9C5C  FF E0 F8 18 */ frsp f31, f31
/* 800FCD20 000F9C60  48 00 00 90 */ b lbl_800FCDB0
lbl_800FCD24:
/* 800FCD24 000F9C64  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800FCD28 000F9C68  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCD2C 000F9C6C  40 80 00 10 */ bge lbl_800FCD3C
/* 800FCD30 000F9C70  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800FCD34 000F9C74  C3 E3 0A E0 */ lfs f31, lbl_80450AE0@l(r3)
/* 800FCD38 000F9C78  48 00 00 78 */ b lbl_800FCDB0
lbl_800FCD3C:
/* 800FCD3C 000F9C7C  D0 21 00 08 */ stfs f1, 8(r1)
/* 800FCD40 000F9C80  80 81 00 08 */ lwz r4, 8(r1)
/* 800FCD44 000F9C84  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800FCD48 000F9C88  3C 00 7F 80 */ lis r0, 0x7f80
/* 800FCD4C 000F9C8C  7C 03 00 00 */ cmpw r3, r0
/* 800FCD50 000F9C90  41 82 00 14 */ beq lbl_800FCD64
/* 800FCD54 000F9C94  40 80 00 40 */ bge lbl_800FCD94
/* 800FCD58 000F9C98  2C 03 00 00 */ cmpwi r3, 0
/* 800FCD5C 000F9C9C  41 82 00 20 */ beq lbl_800FCD7C
/* 800FCD60 000F9CA0  48 00 00 34 */ b lbl_800FCD94
lbl_800FCD64:
/* 800FCD64 000F9CA4  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800FCD68 000F9CA8  41 82 00 0C */ beq lbl_800FCD74
/* 800FCD6C 000F9CAC  38 00 00 01 */ li r0, 1
/* 800FCD70 000F9CB0  48 00 00 28 */ b lbl_800FCD98
lbl_800FCD74:
/* 800FCD74 000F9CB4  38 00 00 02 */ li r0, 2
/* 800FCD78 000F9CB8  48 00 00 20 */ b lbl_800FCD98
lbl_800FCD7C:
/* 800FCD7C 000F9CBC  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800FCD80 000F9CC0  41 82 00 0C */ beq lbl_800FCD8C
/* 800FCD84 000F9CC4  38 00 00 05 */ li r0, 5
/* 800FCD88 000F9CC8  48 00 00 10 */ b lbl_800FCD98
lbl_800FCD8C:
/* 800FCD8C 000F9CCC  38 00 00 03 */ li r0, 3
/* 800FCD90 000F9CD0  48 00 00 08 */ b lbl_800FCD98
lbl_800FCD94:
/* 800FCD94 000F9CD4  38 00 00 04 */ li r0, 4
lbl_800FCD98:
/* 800FCD98 000F9CD8  2C 00 00 01 */ cmpwi r0, 1
/* 800FCD9C 000F9CDC  40 82 00 10 */ bne lbl_800FCDAC
/* 800FCDA0 000F9CE0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800FCDA4 000F9CE4  C3 E3 0A E0 */ lfs f31, lbl_80450AE0@l(r3)
/* 800FCDA8 000F9CE8  48 00 00 08 */ b lbl_800FCDB0
lbl_800FCDAC:
/* 800FCDAC 000F9CEC  FF E0 08 90 */ fmr f31, f1
lbl_800FCDB0:
/* 800FCDB0 000F9CF0  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800FCDB4 000F9CF4  FC 20 00 50 */ fneg f1, f0
/* 800FCDB8 000F9CF8  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800FCDBC 000F9CFC  FC 40 00 50 */ fneg f2, f0
/* 800FCDC0 000F9D00  48 16 A8 B5 */ bl cM_atan2s__Fff
/* 800FCDC4 000F9D04  7C 7E 1B 78 */ mr r30, r3
/* 800FCDC8 000F9D08  C0 21 00 30 */ lfs f1, 0x30(r1)
/* 800FCDCC 000F9D0C  FC 40 F8 90 */ fmr f2, f31
/* 800FCDD0 000F9D10  48 16 A8 A5 */ bl cM_atan2s__Fff
/* 800FCDD4 000F9D14  7C 64 1B 78 */ mr r4, r3
/* 800FCDD8 000F9D18  38 61 00 0C */ addi r3, r1, 0xc
/* 800FCDDC 000F9D1C  7F C5 F3 78 */ mr r5, r30
/* 800FCDE0 000F9D20  38 C0 00 00 */ li r6, 0
/* 800FCDE4 000F9D24  48 16 A6 11 */ bl __ct__5csXyzFsss
/* 800FCDE8 000F9D28  A0 1F 05 8E */ lhz r0, 0x58e(r31)
/* 800FCDEC 000F9D2C  60 00 00 02 */ ori r0, r0, 2
/* 800FCDF0 000F9D30  B0 1F 05 8E */ sth r0, 0x58e(r31)
/* 800FCDF4 000F9D34  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FCDF8 000F9D38  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FCDFC 000F9D3C  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800FCE00 000F9D40  A8 1D 30 0A */ lha r0, 0x300a(r29)
/* 800FCE04 000F9D44  54 04 04 3E */ clrlwi r4, r0, 0x10
/* 800FCE08 000F9D48  38 A0 00 00 */ li r5, 0
/* 800FCE0C 000F9D4C  38 DD 05 C8 */ addi r6, r29, 0x5c8
/* 800FCE10 000F9D50  38 E1 00 0C */ addi r7, r1, 0xc
/* 800FCE14 000F9D54  39 00 00 00 */ li r8, 0
/* 800FCE18 000F9D58  39 20 00 00 */ li r9, 0
/* 800FCE1C 000F9D5C  4B F4 F3 FD */ bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 800FCE20 000F9D60  48 00 01 08 */ b lbl_800FCF28
lbl_800FCE24:
/* 800FCE24 000F9D64  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800FCE28 000F9D68  2C 00 01 6D */ cmpwi r0, 0x16d
/* 800FCE2C 000F9D6C  40 82 00 5C */ bne lbl_800FCE88
/* 800FCE30 000F9D70  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800FCE34 000F9D74  C0 02 95 68 */ lfs f0, lbl_80452F68-_SDA2_BASE_(r2)
/* 800FCE38 000F9D78  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCE3C 000F9D7C  4C 41 13 82 */ cror 2, 1, 2
/* 800FCE40 000F9D80  40 82 00 10 */ bne lbl_800FCE50
/* 800FCE44 000F9D84  38 00 00 09 */ li r0, 9
/* 800FCE48 000F9D88  98 1D 2F 93 */ stb r0, 0x2f93(r29)
/* 800FCE4C 000F9D8C  48 00 00 DC */ b lbl_800FCF28
lbl_800FCE50:
/* 800FCE50 000F9D90  C0 02 95 6C */ lfs f0, lbl_80452F6C-_SDA2_BASE_(r2)
/* 800FCE54 000F9D94  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCE58 000F9D98  4C 41 13 82 */ cror 2, 1, 2
/* 800FCE5C 000F9D9C  40 82 00 10 */ bne lbl_800FCE6C
/* 800FCE60 000F9DA0  38 00 00 0A */ li r0, 0xa
/* 800FCE64 000F9DA4  98 1D 2F 93 */ stb r0, 0x2f93(r29)
/* 800FCE68 000F9DA8  48 00 00 C0 */ b lbl_800FCF28
lbl_800FCE6C:
/* 800FCE6C 000F9DAC  C0 02 92 C4 */ lfs f0, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800FCE70 000F9DB0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCE74 000F9DB4  4C 41 13 82 */ cror 2, 1, 2
/* 800FCE78 000F9DB8  40 82 00 B0 */ bne lbl_800FCF28
/* 800FCE7C 000F9DBC  38 00 00 05 */ li r0, 5
/* 800FCE80 000F9DC0  98 1D 2F 93 */ stb r0, 0x2f93(r29)
/* 800FCE84 000F9DC4  48 00 00 A4 */ b lbl_800FCF28
lbl_800FCE88:
/* 800FCE88 000F9DC8  2C 00 01 6E */ cmpwi r0, 0x16e
/* 800FCE8C 000F9DCC  40 82 00 9C */ bne lbl_800FCF28
/* 800FCE90 000F9DD0  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800FCE94 000F9DD4  C0 02 95 70 */ lfs f0, lbl_80452F70-_SDA2_BASE_(r2)
/* 800FCE98 000F9DD8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCE9C 000F9DDC  4C 41 13 82 */ cror 2, 1, 2
/* 800FCEA0 000F9DE0  40 82 00 10 */ bne lbl_800FCEB0
/* 800FCEA4 000F9DE4  38 00 00 09 */ li r0, 9
/* 800FCEA8 000F9DE8  98 1D 2F 93 */ stb r0, 0x2f93(r29)
/* 800FCEAC 000F9DEC  48 00 00 38 */ b lbl_800FCEE4
lbl_800FCEB0:
/* 800FCEB0 000F9DF0  C0 02 95 74 */ lfs f0, lbl_80452F74-_SDA2_BASE_(r2)
/* 800FCEB4 000F9DF4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCEB8 000F9DF8  4C 41 13 82 */ cror 2, 1, 2
/* 800FCEBC 000F9DFC  40 82 00 10 */ bne lbl_800FCECC
/* 800FCEC0 000F9E00  38 00 00 0A */ li r0, 0xa
/* 800FCEC4 000F9E04  98 1D 2F 93 */ stb r0, 0x2f93(r29)
/* 800FCEC8 000F9E08  48 00 00 1C */ b lbl_800FCEE4
lbl_800FCECC:
/* 800FCECC 000F9E0C  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 800FCED0 000F9E10  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCED4 000F9E14  4C 41 13 82 */ cror 2, 1, 2
/* 800FCED8 000F9E18  40 82 00 0C */ bne lbl_800FCEE4
/* 800FCEDC 000F9E1C  38 00 00 05 */ li r0, 5
/* 800FCEE0 000F9E20  98 1D 2F 93 */ stb r0, 0x2f93(r29)
lbl_800FCEE4:
/* 800FCEE4 000F9E24  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800FCEE8 000F9E28  C0 02 95 78 */ lfs f0, lbl_80452F78-_SDA2_BASE_(r2)
/* 800FCEEC 000F9E2C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCEF0 000F9E30  4C 41 13 82 */ cror 2, 1, 2
/* 800FCEF4 000F9E34  40 82 00 10 */ bne lbl_800FCF04
/* 800FCEF8 000F9E38  38 00 00 00 */ li r0, 0
/* 800FCEFC 000F9E3C  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCF00 000F9E40  48 00 00 28 */ b lbl_800FCF28
lbl_800FCF04:
/* 800FCF04 000F9E44  C0 02 95 7C */ lfs f0, lbl_80452F7C-_SDA2_BASE_(r2)
/* 800FCF08 000F9E48  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FCF0C 000F9E4C  4C 41 13 82 */ cror 2, 1, 2
/* 800FCF10 000F9E50  40 82 00 10 */ bne lbl_800FCF20
/* 800FCF14 000F9E54  38 00 00 FE */ li r0, 0xfe
/* 800FCF18 000F9E58  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 800FCF1C 000F9E5C  48 00 00 0C */ b lbl_800FCF28
lbl_800FCF20:
/* 800FCF20 000F9E60  38 00 00 00 */ li r0, 0
/* 800FCF24 000F9E64  B0 1D 30 10 */ sth r0, 0x3010(r29)
lbl_800FCF28:
/* 800FCF28 000F9E68  80 1D 05 8C */ lwz r0, 0x58c(r29)
/* 800FCF2C 000F9E6C  64 00 80 00 */ oris r0, r0, 0x8000
/* 800FCF30 000F9E70  90 1D 05 8C */ stw r0, 0x58c(r29)
/* 800FCF34 000F9E74  38 60 00 01 */ li r3, 1
lbl_800FCF38:
/* 800FCF38 000F9E78  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 800FCF3C 000F9E7C  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 800FCF40 000F9E80  39 61 00 50 */ addi r11, r1, 0x50
/* 800FCF44 000F9E84  48 26 52 E1 */ bl _restgpr_28
/* 800FCF48 000F9E88  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800FCF4C 000F9E8C  7C 08 03 A6 */ mtlr r0
/* 800FCF50 000F9E90  38 21 00 60 */ addi r1, r1, 0x60
/* 800FCF54 000F9E94  4E 80 00 20 */ blr
