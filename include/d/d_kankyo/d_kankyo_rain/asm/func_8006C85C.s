/* 8006C85C 0006979C  94 21 FE E0 */ stwu r1, -0x120(r1)
/* 8006C860 000697A0  7C 08 02 A6 */ mflr r0
/* 8006C864 000697A4  90 01 01 24 */ stw r0, 0x124(r1)
/* 8006C868 000697A8  DB E1 01 10 */ stfd f31, 0x110(r1)
/* 8006C86C 000697AC  F3 E1 01 18 */ psq_st f31, 280(r1), 0, 0
/* 8006C870 000697B0  DB C1 01 00 */ stfd f30, 0x100(r1)
/* 8006C874 000697B4  F3 C1 01 08 */ psq_st f30, 264(r1), 0, 0
/* 8006C878 000697B8  DB A1 00 F0 */ stfd f29, 0xf0(r1)
/* 8006C87C 000697BC  F3 A1 00 F8 */ psq_st f29, 248(r1), 0, 0
/* 8006C880 000697C0  DB 81 00 E0 */ stfd f28, 0xe0(r1)
/* 8006C884 000697C4  F3 81 00 E8 */ psq_st f28, 232(r1), 0, 0
/* 8006C888 000697C8  39 61 00 E0 */ addi r11, r1, 0xe0
/* 8006C88C 000697CC  48 2F 59 41 */ bl _savegpr_25
/* 8006C890 000697D0  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006C894 000697D4  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8006C898 000697D8  83 C3 10 4C */ lwz r30, 0x104c(r3)
/* 8006C89C 000697DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8006C8A0 000697E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8006C8A4 000697E4  83 A3 5D 74 */ lwz r29, 0x5d74(r3)
/* 8006C8A8 000697E8  38 61 00 14 */ addi r3, r1, 0x14
/* 8006C8AC 000697EC  4B FE E2 55 */ bl dKyw_get_wind_vecpow
/* 8006C8B0 000697F0  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 8006C8B4 000697F4  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 8006C8B8 000697F8  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 8006C8BC 000697FC  D0 01 00 48 */ stfs f0, 0x48(r1)
/* 8006C8C0 00069800  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8006C8C4 00069804  D0 01 00 4C */ stfs f0, 0x4c(r1)
/* 8006C8C8 00069808  38 61 00 5C */ addi r3, r1, 0x5c
/* 8006C8CC 0006980C  48 00 AC B1 */ bl dBgS_GndChk
/* 8006C8D0 00069810  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006C8D4 00069814  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8006C8D8 00069818  80 03 10 48 */ lwz r0, 0x1048(r3)
/* 8006C8DC 0006981C  2C 00 00 00 */ cmpwi r0, 0
/* 8006C8E0 00069820  40 82 00 1C */ bne lbl_8006C8FC
/* 8006C8E4 00069824  40 82 00 20 */ bne lbl_8006C904
/* 8006C8E8 00069828  C0 3E 1C 3C */ lfs f1, 0x1c3c(r30)
/* 8006C8EC 0006982C  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006C8F0 00069830  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006C8F4 00069834  4C 40 13 82 */ cror 2, 0, 2
/* 8006C8F8 00069838  40 82 00 0C */ bne lbl_8006C904
lbl_8006C8FC:
/* 8006C8FC 0006983C  7C 00 07 34 */ extsh r0, r0
/* 8006C900 00069840  90 1E 00 10 */ stw r0, 0x10(r30)
lbl_8006C904:
/* 8006C904 00069844  80 03 10 48 */ lwz r0, 0x1048(r3)
/* 8006C908 00069848  2C 00 00 00 */ cmpwi r0, 0
/* 8006C90C 0006984C  41 82 00 7C */ beq lbl_8006C988
/* 8006C910 00069850  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8006C914 00069854  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8006C918 00069858  38 63 4E 00 */ addi r3, r3, 0x4e00
/* 8006C91C 0006985C  3C 80 80 38 */ lis r4, lbl_8037A578@ha
/* 8006C920 00069860  38 84 A5 78 */ addi r4, r4, lbl_8037A578@l
/* 8006C924 00069864  38 84 00 54 */ addi r4, r4, 0x54
/* 8006C928 00069868  48 2F C0 6D */ bl strcmp
/* 8006C92C 0006986C  2C 03 00 00 */ cmpwi r3, 0
/* 8006C930 00069870  40 82 00 3C */ bne lbl_8006C96C
/* 8006C934 00069874  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006C938 00069878  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8006C93C 0006987C  88 03 12 C3 */ lbz r0, 0x12c3(r3)
/* 8006C940 00069880  28 00 00 06 */ cmplwi r0, 6
/* 8006C944 00069884  40 82 00 28 */ bne lbl_8006C96C
/* 8006C948 00069888  38 60 00 01 */ li r3, 1
/* 8006C94C 0006988C  4B FC 30 A5 */ bl dComIfGs_PolyDamageOff_Set
/* 8006C950 00069890  38 7E 1C 3C */ addi r3, r30, 0x1c3c
/* 8006C954 00069894  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006C958 00069898  C0 42 88 20 */ lfs f2, lbl_80452220-_SDA2_BASE_(r2)
/* 8006C95C 0006989C  C0 62 88 38 */ lfs f3, lbl_80452238-_SDA2_BASE_(r2)
/* 8006C960 000698A0  C0 82 89 E8 */ lfs f4, lbl_804523E8-_SDA2_BASE_(r2)
/* 8006C964 000698A4  48 20 30 19 */ bl cLib_addCalc__FPfffff
/* 8006C968 000698A8  48 00 00 38 */ b lbl_8006C9A0
lbl_8006C96C:
/* 8006C96C 000698AC  38 7E 1C 3C */ addi r3, r30, 0x1c3c
/* 8006C970 000698B0  C0 22 88 14 */ lfs f1, lbl_80452214-_SDA2_BASE_(r2)
/* 8006C974 000698B4  C0 42 88 40 */ lfs f2, lbl_80452240-_SDA2_BASE_(r2)
/* 8006C978 000698B8  C0 62 88 1C */ lfs f3, lbl_8045221C-_SDA2_BASE_(r2)
/* 8006C97C 000698BC  C0 82 87 C4 */ lfs f4, lbl_804521C4-_SDA2_BASE_(r2)
/* 8006C980 000698C0  48 20 2F FD */ bl cLib_addCalc__FPfffff
/* 8006C984 000698C4  48 00 00 1C */ b lbl_8006C9A0
lbl_8006C988:
/* 8006C988 000698C8  38 7E 1C 3C */ addi r3, r30, 0x1c3c
/* 8006C98C 000698CC  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006C990 000698D0  C0 42 88 40 */ lfs f2, lbl_80452240-_SDA2_BASE_(r2)
/* 8006C994 000698D4  C0 62 88 1C */ lfs f3, lbl_8045221C-_SDA2_BASE_(r2)
/* 8006C998 000698D8  C0 82 87 C4 */ lfs f4, lbl_804521C4-_SDA2_BASE_(r2)
/* 8006C99C 000698DC  48 20 2F E1 */ bl cLib_addCalc__FPfffff
lbl_8006C9A0:
/* 8006C9A0 000698E0  80 1E 00 10 */ lwz r0, 0x10(r30)
/* 8006C9A4 000698E4  2C 00 00 00 */ cmpwi r0, 0
/* 8006C9A8 000698E8  40 82 00 14 */ bne lbl_8006C9BC
/* 8006C9AC 000698EC  38 61 00 5C */ addi r3, r1, 0x5c
/* 8006C9B0 000698F0  38 80 FF FF */ li r4, -1
/* 8006C9B4 000698F4  48 00 AC 3D */ bl __dt__11dBgS_GndChkFv
/* 8006C9B8 000698F8  48 00 06 2C */ b lbl_8006CFE4
lbl_8006C9BC:
/* 8006C9BC 000698FC  7F A3 EB 78 */ mr r3, r29
/* 8006C9C0 00069900  38 81 00 50 */ addi r4, r1, 0x50
/* 8006C9C4 00069904  C0 22 88 A4 */ lfs f1, lbl_804522A4-_SDA2_BASE_(r2)
/* 8006C9C8 00069908  C0 42 87 B8 */ lfs f2, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006C9CC 0006990C  4B FE EE 65 */ bl dKy_set_eyevect_calc2
/* 8006C9D0 00069910  4B FE E1 21 */ bl dKyw_get_wind_pow
/* 8006C9D4 00069914  80 7E 00 10 */ lwz r3, 0x10(r30)
/* 8006C9D8 00069918  3B 63 FF FF */ addi r27, r3, -1
/* 8006C9DC 0006991C  C3 A2 87 B8 */ lfs f29, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006C9E0 00069920  C3 C2 88 14 */ lfs f30, lbl_80452214-_SDA2_BASE_(r2)
/* 8006C9E4 00069924  CB E2 87 C8 */ lfd f31, lbl_804521C8-_SDA2_BASE_(r2)
/* 8006C9E8 00069928  3F 20 43 30 */ lis r25, 0x4330
/* 8006C9EC 0006992C  C3 82 89 7C */ lfs f28, lbl_8045237C-_SDA2_BASE_(r2)
/* 8006C9F0 00069930  1F 5B 00 48 */ mulli r26, r27, 0x48
/* 8006C9F4 00069934  48 00 05 DC */ b lbl_8006CFD0
lbl_8006C9F8:
/* 8006C9F8 00069938  3B 80 00 00 */ li r28, 0
/* 8006C9FC 0006993C  7F FE D2 14 */ add r31, r30, r26
/* 8006CA00 00069940  88 1F 00 18 */ lbz r0, 0x18(r31)
/* 8006CA04 00069944  7C 00 07 75 */ extsb. r0, r0
/* 8006CA08 00069948  41 82 00 14 */ beq lbl_8006CA1C
/* 8006CA0C 0006994C  41 80 04 44 */ blt lbl_8006CE50
/* 8006CA10 00069950  2C 00 00 04 */ cmpwi r0, 4
/* 8006CA14 00069954  40 80 04 3C */ bge lbl_8006CE50
/* 8006CA18 00069958  48 00 00 B8 */ b lbl_8006CAD0
lbl_8006CA1C:
/* 8006CA1C 0006995C  C0 22 88 3C */ lfs f1, lbl_8045223C-_SDA2_BASE_(r2)
/* 8006CA20 00069960  48 1F AF 35 */ bl cM_rndF
/* 8006CA24 00069964  C0 02 88 3C */ lfs f0, lbl_8045223C-_SDA2_BASE_(r2)
/* 8006CA28 00069968  EC 20 08 2A */ fadds f1, f0, f1
/* 8006CA2C 0006996C  C0 02 89 48 */ lfs f0, lbl_80452348-_SDA2_BASE_(r2)
/* 8006CA30 00069970  EC 00 00 72 */ fmuls f0, f0, f1
/* 8006CA34 00069974  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 8006CA38 00069978  38 00 00 00 */ li r0, 0
/* 8006CA3C 0006997C  B0 1F 00 58 */ sth r0, 0x58(r31)
/* 8006CA40 00069980  C0 22 89 38 */ lfs f1, lbl_80452338-_SDA2_BASE_(r2)
/* 8006CA44 00069984  48 1F AF 49 */ bl cM_rndFX
/* 8006CA48 00069988  FC 00 08 1E */ fctiwz f0, f1
/* 8006CA4C 0006998C  D8 01 00 B0 */ stfd f0, 0xb0(r1)
/* 8006CA50 00069990  80 01 00 B4 */ lwz r0, 0xb4(r1)
/* 8006CA54 00069994  B0 1F 00 5A */ sth r0, 0x5a(r31)
/* 8006CA58 00069998  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 8006CA5C 0006999C  D0 1F 00 28 */ stfs f0, 0x28(r31)
/* 8006CA60 000699A0  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CA64 000699A4  D0 1F 00 2C */ stfs f0, 0x2c(r31)
/* 8006CA68 000699A8  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 8006CA6C 000699AC  D0 1F 00 30 */ stfs f0, 0x30(r31)
/* 8006CA70 000699B0  C0 22 88 94 */ lfs f1, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CA74 000699B4  48 1F AF 19 */ bl cM_rndFX
/* 8006CA78 000699B8  D0 3F 00 1C */ stfs f1, 0x1c(r31)
/* 8006CA7C 000699BC  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CA80 000699C0  D0 1F 00 20 */ stfs f0, 0x20(r31)
/* 8006CA84 000699C4  C0 22 88 94 */ lfs f1, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CA88 000699C8  48 1F AF 05 */ bl cM_rndFX
/* 8006CA8C 000699CC  D0 3F 00 24 */ stfs f1, 0x24(r31)
/* 8006CA90 000699D0  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CA94 000699D4  D0 1F 00 50 */ stfs f0, 0x50(r31)
/* 8006CA98 000699D8  D0 1F 00 54 */ stfs f0, 0x54(r31)
/* 8006CA9C 000699DC  C0 22 88 A8 */ lfs f1, lbl_804522A8-_SDA2_BASE_(r2)
/* 8006CAA0 000699E0  48 1F AE B5 */ bl cM_rndF
/* 8006CAA4 000699E4  D0 3F 00 40 */ stfs f1, 0x40(r31)
/* 8006CAA8 000699E8  C0 22 88 A8 */ lfs f1, lbl_804522A8-_SDA2_BASE_(r2)
/* 8006CAAC 000699EC  48 1F AE A9 */ bl cM_rndF
/* 8006CAB0 000699F0  D0 3F 00 44 */ stfs f1, 0x44(r31)
/* 8006CAB4 000699F4  C0 22 88 A8 */ lfs f1, lbl_804522A8-_SDA2_BASE_(r2)
/* 8006CAB8 000699F8  48 1F AE 9D */ bl cM_rndF
/* 8006CABC 000699FC  D0 3F 00 48 */ stfs f1, 0x48(r31)
/* 8006CAC0 00069A00  88 7F 00 18 */ lbz r3, 0x18(r31)
/* 8006CAC4 00069A04  38 03 00 01 */ addi r0, r3, 1
/* 8006CAC8 00069A08  98 1F 00 18 */ stb r0, 0x18(r31)
/* 8006CACC 00069A0C  48 00 03 84 */ b lbl_8006CE50
lbl_8006CAD0:
/* 8006CAD0 00069A10  2C 00 00 01 */ cmpwi r0, 1
/* 8006CAD4 00069A14  40 82 00 8C */ bne lbl_8006CB60
/* 8006CAD8 00069A18  C0 3F 00 40 */ lfs f1, 0x40(r31)
/* 8006CADC 00069A1C  48 1F AB 09 */ bl cM_rad2s
/* 8006CAE0 00069A20  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006CAE4 00069A24  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8006CAE8 00069A28  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8006CAEC 00069A2C  7C 43 04 2E */ lfsx f2, r3, r0
/* 8006CAF0 00069A30  C0 3F 00 1C */ lfs f1, 0x1c(r31)
/* 8006CAF4 00069A34  C0 1F 00 4C */ lfs f0, 0x4c(r31)
/* 8006CAF8 00069A38  EC 02 00 32 */ fmuls f0, f2, f0
/* 8006CAFC 00069A3C  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB00 00069A40  D0 1F 00 1C */ stfs f0, 0x1c(r31)
/* 8006CB04 00069A44  C0 3F 00 48 */ lfs f1, 0x48(r31)
/* 8006CB08 00069A48  48 1F AA DD */ bl cM_rad2s
/* 8006CB0C 00069A4C  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006CB10 00069A50  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8006CB14 00069A54  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8006CB18 00069A58  7C 43 04 2E */ lfsx f2, r3, r0
/* 8006CB1C 00069A5C  C0 3F 00 24 */ lfs f1, 0x24(r31)
/* 8006CB20 00069A60  C0 1F 00 4C */ lfs f0, 0x4c(r31)
/* 8006CB24 00069A64  EC 00 00 B2 */ fmuls f0, f0, f2
/* 8006CB28 00069A68  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB2C 00069A6C  D0 1F 00 24 */ stfs f0, 0x24(r31)
/* 8006CB30 00069A70  C0 3F 00 40 */ lfs f1, 0x40(r31)
/* 8006CB34 00069A74  C0 02 89 64 */ lfs f0, lbl_80452364-_SDA2_BASE_(r2)
/* 8006CB38 00069A78  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB3C 00069A7C  D0 1F 00 40 */ stfs f0, 0x40(r31)
/* 8006CB40 00069A80  C0 3F 00 44 */ lfs f1, 0x44(r31)
/* 8006CB44 00069A84  C0 02 89 68 */ lfs f0, lbl_80452368-_SDA2_BASE_(r2)
/* 8006CB48 00069A88  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB4C 00069A8C  D0 1F 00 44 */ stfs f0, 0x44(r31)
/* 8006CB50 00069A90  C0 3F 00 48 */ lfs f1, 0x48(r31)
/* 8006CB54 00069A94  C0 02 87 C4 */ lfs f0, lbl_804521C4-_SDA2_BASE_(r2)
/* 8006CB58 00069A98  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB5C 00069A9C  D0 1F 00 48 */ stfs f0, 0x48(r31)
lbl_8006CB60:
/* 8006CB60 00069AA0  C0 3F 00 28 */ lfs f1, 0x28(r31)
/* 8006CB64 00069AA4  C0 1F 00 1C */ lfs f0, 0x1c(r31)
/* 8006CB68 00069AA8  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB6C 00069AAC  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 8006CB70 00069AB0  C0 42 87 B8 */ lfs f2, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CB74 00069AB4  D0 41 00 3C */ stfs f2, 0x3c(r1)
/* 8006CB78 00069AB8  C0 3F 00 30 */ lfs f1, 0x30(r31)
/* 8006CB7C 00069ABC  C0 1F 00 24 */ lfs f0, 0x24(r31)
/* 8006CB80 00069AC0  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CB84 00069AC4  D0 01 00 40 */ stfs f0, 0x40(r1)
/* 8006CB88 00069AC8  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 8006CB8C 00069ACC  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8006CB90 00069AD0  C0 01 00 54 */ lfs f0, 0x54(r1)
/* 8006CB94 00069AD4  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8006CB98 00069AD8  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 8006CB9C 00069ADC  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8006CBA0 00069AE0  D0 41 00 24 */ stfs f2, 0x24(r1)
/* 8006CBA4 00069AE4  38 61 00 38 */ addi r3, r1, 0x38
/* 8006CBA8 00069AE8  38 81 00 20 */ addi r4, r1, 0x20
/* 8006CBAC 00069AEC  48 2D A7 F1 */ bl PSVECSquareDistance
/* 8006CBB0 00069AF0  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CBB4 00069AF4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CBB8 00069AF8  40 81 00 58 */ ble lbl_8006CC10
/* 8006CBBC 00069AFC  FC 00 08 34 */ frsqrte f0, f1
/* 8006CBC0 00069B00  C8 82 87 E8 */ lfd f4, lbl_804521E8-_SDA2_BASE_(r2)
/* 8006CBC4 00069B04  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CBC8 00069B08  C8 62 87 F0 */ lfd f3, lbl_804521F0-_SDA2_BASE_(r2)
/* 8006CBCC 00069B0C  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CBD0 00069B10  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CBD4 00069B14  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CBD8 00069B18  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CBDC 00069B1C  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CBE0 00069B20  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CBE4 00069B24  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CBE8 00069B28  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CBEC 00069B2C  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CBF0 00069B30  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CBF4 00069B34  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CBF8 00069B38  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CBFC 00069B3C  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CC00 00069B40  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CC04 00069B44  FC 21 00 32 */ fmul f1, f1, f0
/* 8006CC08 00069B48  FC 20 08 18 */ frsp f1, f1
/* 8006CC0C 00069B4C  48 00 00 88 */ b lbl_8006CC94
lbl_8006CC10:
/* 8006CC10 00069B50  C8 02 87 B0 */ lfd f0, lbl_804521B0-_SDA2_BASE_(r2)
/* 8006CC14 00069B54  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CC18 00069B58  40 80 00 10 */ bge lbl_8006CC28
/* 8006CC1C 00069B5C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CC20 00069B60  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8006CC24 00069B64  48 00 00 70 */ b lbl_8006CC94
lbl_8006CC28:
/* 8006CC28 00069B68  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 8006CC2C 00069B6C  80 81 00 10 */ lwz r4, 0x10(r1)
/* 8006CC30 00069B70  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8006CC34 00069B74  3C 00 7F 80 */ lis r0, 0x7f80
/* 8006CC38 00069B78  7C 03 00 00 */ cmpw r3, r0
/* 8006CC3C 00069B7C  41 82 00 14 */ beq lbl_8006CC50
/* 8006CC40 00069B80  40 80 00 40 */ bge lbl_8006CC80
/* 8006CC44 00069B84  2C 03 00 00 */ cmpwi r3, 0
/* 8006CC48 00069B88  41 82 00 20 */ beq lbl_8006CC68
/* 8006CC4C 00069B8C  48 00 00 34 */ b lbl_8006CC80
lbl_8006CC50:
/* 8006CC50 00069B90  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CC54 00069B94  41 82 00 0C */ beq lbl_8006CC60
/* 8006CC58 00069B98  38 00 00 01 */ li r0, 1
/* 8006CC5C 00069B9C  48 00 00 28 */ b lbl_8006CC84
lbl_8006CC60:
/* 8006CC60 00069BA0  38 00 00 02 */ li r0, 2
/* 8006CC64 00069BA4  48 00 00 20 */ b lbl_8006CC84
lbl_8006CC68:
/* 8006CC68 00069BA8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CC6C 00069BAC  41 82 00 0C */ beq lbl_8006CC78
/* 8006CC70 00069BB0  38 00 00 05 */ li r0, 5
/* 8006CC74 00069BB4  48 00 00 10 */ b lbl_8006CC84
lbl_8006CC78:
/* 8006CC78 00069BB8  38 00 00 03 */ li r0, 3
/* 8006CC7C 00069BBC  48 00 00 08 */ b lbl_8006CC84
lbl_8006CC80:
/* 8006CC80 00069BC0  38 00 00 04 */ li r0, 4
lbl_8006CC84:
/* 8006CC84 00069BC4  2C 00 00 01 */ cmpwi r0, 1
/* 8006CC88 00069BC8  40 82 00 0C */ bne lbl_8006CC94
/* 8006CC8C 00069BCC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CC90 00069BD0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8006CC94:
/* 8006CC94 00069BD4  C0 02 88 94 */ lfs f0, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CC98 00069BD8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CC9C 00069BDC  40 81 01 B4 */ ble lbl_8006CE50
/* 8006CCA0 00069BE0  3B 80 00 01 */ li r28, 1
/* 8006CCA4 00069BE4  C0 3F 00 50 */ lfs f1, 0x50(r31)
/* 8006CCA8 00069BE8  C0 02 87 C4 */ lfs f0, lbl_804521C4-_SDA2_BASE_(r2)
/* 8006CCAC 00069BEC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CCB0 00069BF0  40 80 01 A0 */ bge lbl_8006CE50
/* 8006CCB4 00069BF4  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 8006CCB8 00069BF8  D0 1F 00 28 */ stfs f0, 0x28(r31)
/* 8006CCBC 00069BFC  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 8006CCC0 00069C00  D0 1F 00 2C */ stfs f0, 0x2c(r31)
/* 8006CCC4 00069C04  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 8006CCC8 00069C08  D0 1F 00 30 */ stfs f0, 0x30(r31)
/* 8006CCCC 00069C0C  38 61 00 38 */ addi r3, r1, 0x38
/* 8006CCD0 00069C10  38 81 00 20 */ addi r4, r1, 0x20
/* 8006CCD4 00069C14  48 2D A6 C9 */ bl PSVECSquareDistance
/* 8006CCD8 00069C18  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CCDC 00069C1C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CCE0 00069C20  40 81 00 58 */ ble lbl_8006CD38
/* 8006CCE4 00069C24  FC 00 08 34 */ frsqrte f0, f1
/* 8006CCE8 00069C28  C8 82 87 E8 */ lfd f4, lbl_804521E8-_SDA2_BASE_(r2)
/* 8006CCEC 00069C2C  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CCF0 00069C30  C8 62 87 F0 */ lfd f3, lbl_804521F0-_SDA2_BASE_(r2)
/* 8006CCF4 00069C34  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CCF8 00069C38  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CCFC 00069C3C  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CD00 00069C40  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CD04 00069C44  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CD08 00069C48  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CD0C 00069C4C  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CD10 00069C50  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CD14 00069C54  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CD18 00069C58  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CD1C 00069C5C  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CD20 00069C60  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CD24 00069C64  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CD28 00069C68  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CD2C 00069C6C  FC 21 00 32 */ fmul f1, f1, f0
/* 8006CD30 00069C70  FC 20 08 18 */ frsp f1, f1
/* 8006CD34 00069C74  48 00 00 88 */ b lbl_8006CDBC
lbl_8006CD38:
/* 8006CD38 00069C78  C8 02 87 B0 */ lfd f0, lbl_804521B0-_SDA2_BASE_(r2)
/* 8006CD3C 00069C7C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CD40 00069C80  40 80 00 10 */ bge lbl_8006CD50
/* 8006CD44 00069C84  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CD48 00069C88  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8006CD4C 00069C8C  48 00 00 70 */ b lbl_8006CDBC
lbl_8006CD50:
/* 8006CD50 00069C90  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 8006CD54 00069C94  80 81 00 0C */ lwz r4, 0xc(r1)
/* 8006CD58 00069C98  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8006CD5C 00069C9C  3C 00 7F 80 */ lis r0, 0x7f80
/* 8006CD60 00069CA0  7C 03 00 00 */ cmpw r3, r0
/* 8006CD64 00069CA4  41 82 00 14 */ beq lbl_8006CD78
/* 8006CD68 00069CA8  40 80 00 40 */ bge lbl_8006CDA8
/* 8006CD6C 00069CAC  2C 03 00 00 */ cmpwi r3, 0
/* 8006CD70 00069CB0  41 82 00 20 */ beq lbl_8006CD90
/* 8006CD74 00069CB4  48 00 00 34 */ b lbl_8006CDA8
lbl_8006CD78:
/* 8006CD78 00069CB8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CD7C 00069CBC  41 82 00 0C */ beq lbl_8006CD88
/* 8006CD80 00069CC0  38 00 00 01 */ li r0, 1
/* 8006CD84 00069CC4  48 00 00 28 */ b lbl_8006CDAC
lbl_8006CD88:
/* 8006CD88 00069CC8  38 00 00 02 */ li r0, 2
/* 8006CD8C 00069CCC  48 00 00 20 */ b lbl_8006CDAC
lbl_8006CD90:
/* 8006CD90 00069CD0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CD94 00069CD4  41 82 00 0C */ beq lbl_8006CDA0
/* 8006CD98 00069CD8  38 00 00 05 */ li r0, 5
/* 8006CD9C 00069CDC  48 00 00 10 */ b lbl_8006CDAC
lbl_8006CDA0:
/* 8006CDA0 00069CE0  38 00 00 03 */ li r0, 3
/* 8006CDA4 00069CE4  48 00 00 08 */ b lbl_8006CDAC
lbl_8006CDA8:
/* 8006CDA8 00069CE8  38 00 00 04 */ li r0, 4
lbl_8006CDAC:
/* 8006CDAC 00069CEC  2C 00 00 01 */ cmpwi r0, 1
/* 8006CDB0 00069CF0  40 82 00 0C */ bne lbl_8006CDBC
/* 8006CDB4 00069CF4  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CDB8 00069CF8  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8006CDBC:
/* 8006CDBC 00069CFC  C0 02 8B D4 */ lfs f0, lbl_804525D4-_SDA2_BASE_(r2)
/* 8006CDC0 00069D00  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CDC4 00069D04  40 81 00 28 */ ble lbl_8006CDEC
/* 8006CDC8 00069D08  C0 22 88 94 */ lfs f1, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CDCC 00069D0C  48 1F AB C1 */ bl cM_rndFX
/* 8006CDD0 00069D10  D0 3F 00 1C */ stfs f1, 0x1c(r31)
/* 8006CDD4 00069D14  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CDD8 00069D18  D0 1F 00 20 */ stfs f0, 0x20(r31)
/* 8006CDDC 00069D1C  C0 22 88 94 */ lfs f1, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CDE0 00069D20  48 1F AB AD */ bl cM_rndFX
/* 8006CDE4 00069D24  D0 3F 00 24 */ stfs f1, 0x24(r31)
/* 8006CDE8 00069D28  48 00 00 68 */ b lbl_8006CE50
lbl_8006CDEC:
/* 8006CDEC 00069D2C  38 61 00 38 */ addi r3, r1, 0x38
/* 8006CDF0 00069D30  38 81 00 20 */ addi r4, r1, 0x20
/* 8006CDF4 00069D34  38 A1 00 2C */ addi r5, r1, 0x2c
/* 8006CDF8 00069D38  4B FE E9 11 */ bl get_vectle_calc_X1_
/* 8006CDFC 00069D3C  C0 22 88 40 */ lfs f1, lbl_80452240-_SDA2_BASE_(r2)
/* 8006CE00 00069D40  48 1F AB 8D */ bl cM_rndFX
/* 8006CE04 00069D44  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 8006CE08 00069D48  EC 00 08 2A */ fadds f0, f0, f1
/* 8006CE0C 00069D4C  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 8006CE10 00069D50  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CE14 00069D54  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 8006CE18 00069D58  C0 22 88 40 */ lfs f1, lbl_80452240-_SDA2_BASE_(r2)
/* 8006CE1C 00069D5C  48 1F AB 71 */ bl cM_rndFX
/* 8006CE20 00069D60  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 8006CE24 00069D64  EC 00 08 2A */ fadds f0, f0, f1
/* 8006CE28 00069D68  D0 01 00 34 */ stfs f0, 0x34(r1)
/* 8006CE2C 00069D6C  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 8006CE30 00069D70  C0 22 88 94 */ lfs f1, lbl_80452294-_SDA2_BASE_(r2)
/* 8006CE34 00069D74  EC 00 00 72 */ fmuls f0, f0, f1
/* 8006CE38 00069D78  D0 1F 00 1C */ stfs f0, 0x1c(r31)
/* 8006CE3C 00069D7C  C0 02 87 B8 */ lfs f0, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006CE40 00069D80  D0 1F 00 20 */ stfs f0, 0x20(r31)
/* 8006CE44 00069D84  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 8006CE48 00069D88  EC 00 00 72 */ fmuls f0, f0, f1
/* 8006CE4C 00069D8C  D0 1F 00 24 */ stfs f0, 0x24(r31)
lbl_8006CE50:
/* 8006CE50 00069D90  D3 BF 00 2C */ stfs f29, 0x2c(r31)
/* 8006CE54 00069D94  6F 60 80 00 */ xoris r0, r27, 0x8000
/* 8006CE58 00069D98  90 01 00 B4 */ stw r0, 0xb4(r1)
/* 8006CE5C 00069D9C  93 21 00 B0 */ stw r25, 0xb0(r1)
/* 8006CE60 00069DA0  C8 01 00 B0 */ lfd f0, 0xb0(r1)
/* 8006CE64 00069DA4  EC 00 F8 28 */ fsubs f0, f0, f31
/* 8006CE68 00069DA8  EC 1E 00 2A */ fadds f0, f30, f0
/* 8006CE6C 00069DAC  EC 1D 00 28 */ fsubs f0, f29, f0
/* 8006CE70 00069DB0  D0 1F 00 20 */ stfs f0, 0x20(r31)
/* 8006CE74 00069DB4  FC 20 F0 90 */ fmr f1, f30
/* 8006CE78 00069DB8  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 8006CE7C 00069DBC  41 82 00 08 */ beq lbl_8006CE84
/* 8006CE80 00069DC0  FC 20 E8 90 */ fmr f1, f29
lbl_8006CE84:
/* 8006CE84 00069DC4  38 7F 00 50 */ addi r3, r31, 0x50
/* 8006CE88 00069DC8  C0 1E 1C 3C */ lfs f0, 0x1c3c(r30)
/* 8006CE8C 00069DCC  EC 21 00 32 */ fmuls f1, f1, f0
/* 8006CE90 00069DD0  C0 42 89 4C */ lfs f2, lbl_8045234C-_SDA2_BASE_(r2)
/* 8006CE94 00069DD4  C0 62 88 1C */ lfs f3, lbl_8045221C-_SDA2_BASE_(r2)
/* 8006CE98 00069DD8  C0 82 89 E8 */ lfs f4, lbl_804523E8-_SDA2_BASE_(r2)
/* 8006CE9C 00069DDC  48 20 2A E1 */ bl cLib_addCalc__FPfffff
/* 8006CEA0 00069DE0  C0 3F 00 28 */ lfs f1, 0x28(r31)
/* 8006CEA4 00069DE4  C0 1F 00 1C */ lfs f0, 0x1c(r31)
/* 8006CEA8 00069DE8  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CEAC 00069DEC  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 8006CEB0 00069DF0  C0 1D 00 DC */ lfs f0, 0xdc(r29)
/* 8006CEB4 00069DF4  D0 01 00 3C */ stfs f0, 0x3c(r1)
/* 8006CEB8 00069DF8  C0 3F 00 30 */ lfs f1, 0x30(r31)
/* 8006CEBC 00069DFC  C0 1F 00 24 */ lfs f0, 0x24(r31)
/* 8006CEC0 00069E00  EC 01 00 2A */ fadds f0, f1, f0
/* 8006CEC4 00069E04  D0 01 00 40 */ stfs f0, 0x40(r1)
/* 8006CEC8 00069E08  38 61 00 38 */ addi r3, r1, 0x38
/* 8006CECC 00069E0C  38 9D 00 D8 */ addi r4, r29, 0xd8
/* 8006CED0 00069E10  48 2D A4 CD */ bl PSVECSquareDistance
/* 8006CED4 00069E14  FC 01 E8 40 */ fcmpo cr0, f1, f29
/* 8006CED8 00069E18  40 81 00 58 */ ble lbl_8006CF30
/* 8006CEDC 00069E1C  FC 00 08 34 */ frsqrte f0, f1
/* 8006CEE0 00069E20  C8 82 87 E8 */ lfd f4, lbl_804521E8-_SDA2_BASE_(r2)
/* 8006CEE4 00069E24  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CEE8 00069E28  C8 62 87 F0 */ lfd f3, lbl_804521F0-_SDA2_BASE_(r2)
/* 8006CEEC 00069E2C  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CEF0 00069E30  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CEF4 00069E34  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CEF8 00069E38  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CEFC 00069E3C  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CF00 00069E40  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CF04 00069E44  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CF08 00069E48  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CF0C 00069E4C  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CF10 00069E50  FC 44 00 32 */ fmul f2, f4, f0
/* 8006CF14 00069E54  FC 00 00 32 */ fmul f0, f0, f0
/* 8006CF18 00069E58  FC 01 00 32 */ fmul f0, f1, f0
/* 8006CF1C 00069E5C  FC 03 00 28 */ fsub f0, f3, f0
/* 8006CF20 00069E60  FC 02 00 32 */ fmul f0, f2, f0
/* 8006CF24 00069E64  FC 21 00 32 */ fmul f1, f1, f0
/* 8006CF28 00069E68  FC 20 08 18 */ frsp f1, f1
/* 8006CF2C 00069E6C  48 00 00 88 */ b lbl_8006CFB4
lbl_8006CF30:
/* 8006CF30 00069E70  C8 02 87 B0 */ lfd f0, lbl_804521B0-_SDA2_BASE_(r2)
/* 8006CF34 00069E74  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8006CF38 00069E78  40 80 00 10 */ bge lbl_8006CF48
/* 8006CF3C 00069E7C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CF40 00069E80  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8006CF44 00069E84  48 00 00 70 */ b lbl_8006CFB4
lbl_8006CF48:
/* 8006CF48 00069E88  D0 21 00 08 */ stfs f1, 8(r1)
/* 8006CF4C 00069E8C  80 81 00 08 */ lwz r4, 8(r1)
/* 8006CF50 00069E90  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8006CF54 00069E94  3C 00 7F 80 */ lis r0, 0x7f80
/* 8006CF58 00069E98  7C 03 00 00 */ cmpw r3, r0
/* 8006CF5C 00069E9C  41 82 00 14 */ beq lbl_8006CF70
/* 8006CF60 00069EA0  40 80 00 40 */ bge lbl_8006CFA0
/* 8006CF64 00069EA4  2C 03 00 00 */ cmpwi r3, 0
/* 8006CF68 00069EA8  41 82 00 20 */ beq lbl_8006CF88
/* 8006CF6C 00069EAC  48 00 00 34 */ b lbl_8006CFA0
lbl_8006CF70:
/* 8006CF70 00069EB0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CF74 00069EB4  41 82 00 0C */ beq lbl_8006CF80
/* 8006CF78 00069EB8  38 00 00 01 */ li r0, 1
/* 8006CF7C 00069EBC  48 00 00 28 */ b lbl_8006CFA4
lbl_8006CF80:
/* 8006CF80 00069EC0  38 00 00 02 */ li r0, 2
/* 8006CF84 00069EC4  48 00 00 20 */ b lbl_8006CFA4
lbl_8006CF88:
/* 8006CF88 00069EC8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8006CF8C 00069ECC  41 82 00 0C */ beq lbl_8006CF98
/* 8006CF90 00069ED0  38 00 00 05 */ li r0, 5
/* 8006CF94 00069ED4  48 00 00 10 */ b lbl_8006CFA4
lbl_8006CF98:
/* 8006CF98 00069ED8  38 00 00 03 */ li r0, 3
/* 8006CF9C 00069EDC  48 00 00 08 */ b lbl_8006CFA4
lbl_8006CFA0:
/* 8006CFA0 00069EE0  38 00 00 04 */ li r0, 4
lbl_8006CFA4:
/* 8006CFA4 00069EE4  2C 00 00 01 */ cmpwi r0, 1
/* 8006CFA8 00069EE8  40 82 00 0C */ bne lbl_8006CFB4
/* 8006CFAC 00069EEC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8006CFB0 00069EF0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8006CFB4:
/* 8006CFB4 00069EF4  EC 01 E0 24 */ fdivs f0, f1, f28
/* 8006CFB8 00069EF8  FC 00 F0 40 */ fcmpo cr0, f0, f30
/* 8006CFBC 00069EFC  40 81 00 08 */ ble lbl_8006CFC4
/* 8006CFC0 00069F00  FC 00 F0 90 */ fmr f0, f30
lbl_8006CFC4:
/* 8006CFC4 00069F04  D0 1F 00 54 */ stfs f0, 0x54(r31)
/* 8006CFC8 00069F08  3B 7B FF FF */ addi r27, r27, -1
/* 8006CFCC 00069F0C  3B 5A FF B8 */ addi r26, r26, -72
lbl_8006CFD0:
/* 8006CFD0 00069F10  2C 1B 00 00 */ cmpwi r27, 0
/* 8006CFD4 00069F14  40 80 FA 24 */ bge lbl_8006C9F8
/* 8006CFD8 00069F18  38 61 00 5C */ addi r3, r1, 0x5c
/* 8006CFDC 00069F1C  38 80 FF FF */ li r4, -1
/* 8006CFE0 00069F20  48 00 A6 11 */ bl __dt__11dBgS_GndChkFv
lbl_8006CFE4:
/* 8006CFE4 00069F24  E3 E1 01 18 */ psq_l f31, 280(r1), 0, 0
/* 8006CFE8 00069F28  CB E1 01 10 */ lfd f31, 0x110(r1)
/* 8006CFEC 00069F2C  E3 C1 01 08 */ psq_l f30, 264(r1), 0, 0
/* 8006CFF0 00069F30  CB C1 01 00 */ lfd f30, 0x100(r1)
/* 8006CFF4 00069F34  E3 A1 00 F8 */ psq_l f29, 248(r1), 0, 0
/* 8006CFF8 00069F38  CB A1 00 F0 */ lfd f29, 0xf0(r1)
/* 8006CFFC 00069F3C  E3 81 00 E8 */ psq_l f28, 232(r1), 0, 0
/* 8006D000 00069F40  CB 81 00 E0 */ lfd f28, 0xe0(r1)
/* 8006D004 00069F44  39 61 00 E0 */ addi r11, r1, 0xe0
/* 8006D008 00069F48  48 2F 52 11 */ bl _restgpr_25
/* 8006D00C 00069F4C  80 01 01 24 */ lwz r0, 0x124(r1)
/* 8006D010 00069F50  7C 08 03 A6 */ mtlr r0
/* 8006D014 00069F54  38 21 01 20 */ addi r1, r1, 0x120
/* 8006D018 00069F58  4E 80 00 20 */ blr
