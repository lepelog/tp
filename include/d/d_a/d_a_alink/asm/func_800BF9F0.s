/* 800BF9F0 000BC930  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800BF9F4 000BC934  7C 08 02 A6 */ mflr r0
/* 800BF9F8 000BC938  90 01 00 44 */ stw r0, 0x44(r1)
/* 800BF9FC 000BC93C  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 800BFA00 000BC940  93 C1 00 38 */ stw r30, 0x38(r1)
/* 800BFA04 000BC944  7C 7F 1B 78 */ mr r31, r3
/* 800BFA08 000BC948  A0 63 2F DC */ lhz r3, 0x2fdc(r3)
/* 800BFA0C 000BC94C  28 03 00 40 */ cmplwi r3, 0x40
/* 800BFA10 000BC950  40 82 00 68 */ bne lbl_800BFA78
/* 800BFA14 000BC954  38 00 00 00 */ li r0, 0
/* 800BFA18 000BC958  90 01 00 08 */ stw r0, 8(r1)
/* 800BFA1C 000BC95C  38 60 00 FE */ li r3, 0xfe
/* 800BFA20 000BC960  38 80 00 00 */ li r4, 0
/* 800BFA24 000BC964  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 800BFA28 000BC968  38 C0 FF FF */ li r6, -1
/* 800BFA2C 000BC96C  38 E0 00 00 */ li r7, 0
/* 800BFA30 000BC970  39 00 00 00 */ li r8, 0
/* 800BFA34 000BC974  39 20 FF FF */ li r9, -1
/* 800BFA38 000BC978  39 40 00 00 */ li r10, 0
/* 800BFA3C 000BC97C  4B F5 A3 C9 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFA40 000BC980  7C 64 1B 79 */ or. r4, r3, r3
/* 800BFA44 000BC984  40 82 00 1C */ bne lbl_800BFA60
/* 800BFA48 000BC988  7F E3 FB 78 */ mr r3, r31
/* 800BFA4C 000BC98C  38 80 00 00 */ li r4, 0
/* 800BFA50 000BC990  38 A0 00 00 */ li r5, 0
/* 800BFA54 000BC994  48 00 18 89 */ bl daAlink_c_NS_deleteEquipItem
/* 800BFA58 000BC998  38 60 00 00 */ li r3, 0
/* 800BFA5C 000BC99C  48 00 03 00 */ b lbl_800BFD5C
lbl_800BFA60:
/* 800BFA60 000BC9A0  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800BFA64 000BC9A4  48 09 F2 55 */ bl daPy_actorKeep_c_NS_setData
/* 800BFA68 000BC9A8  38 00 00 02 */ li r0, 2
/* 800BFA6C 000BC9AC  98 1F 2F 94 */ stb r0, 0x2f94(r31)
/* 800BFA70 000BC9B0  38 60 00 01 */ li r3, 1
/* 800BFA74 000BC9B4  48 00 02 E8 */ b lbl_800BFD5C
lbl_800BFA78:
/* 800BFA78 000BC9B8  28 03 00 46 */ cmplwi r3, 0x46
/* 800BFA7C 000BC9BC  40 82 00 68 */ bne lbl_800BFAE4
/* 800BFA80 000BC9C0  38 00 00 00 */ li r0, 0
/* 800BFA84 000BC9C4  90 01 00 08 */ stw r0, 8(r1)
/* 800BFA88 000BC9C8  38 60 02 F4 */ li r3, 0x2f4
/* 800BFA8C 000BC9CC  38 80 00 00 */ li r4, 0
/* 800BFA90 000BC9D0  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 800BFA94 000BC9D4  38 C0 FF FF */ li r6, -1
/* 800BFA98 000BC9D8  38 E0 00 00 */ li r7, 0
/* 800BFA9C 000BC9DC  39 00 00 00 */ li r8, 0
/* 800BFAA0 000BC9E0  39 20 FF FF */ li r9, -1
/* 800BFAA4 000BC9E4  39 40 00 00 */ li r10, 0
/* 800BFAA8 000BC9E8  4B F5 A3 5D */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFAAC 000BC9EC  7C 64 1B 79 */ or. r4, r3, r3
/* 800BFAB0 000BC9F0  40 82 00 1C */ bne lbl_800BFACC
/* 800BFAB4 000BC9F4  7F E3 FB 78 */ mr r3, r31
/* 800BFAB8 000BC9F8  38 80 00 00 */ li r4, 0
/* 800BFABC 000BC9FC  38 A0 00 00 */ li r5, 0
/* 800BFAC0 000BCA00  48 00 18 1D */ bl daAlink_c_NS_deleteEquipItem
/* 800BFAC4 000BCA04  38 60 00 00 */ li r3, 0
/* 800BFAC8 000BCA08  48 00 02 94 */ b lbl_800BFD5C
lbl_800BFACC:
/* 800BFACC 000BCA0C  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800BFAD0 000BCA10  48 09 F1 E9 */ bl daPy_actorKeep_c_NS_setData
/* 800BFAD4 000BCA14  38 00 00 02 */ li r0, 2
/* 800BFAD8 000BCA18  98 1F 2F 94 */ stb r0, 0x2f94(r31)
/* 800BFADC 000BCA1C  38 60 00 01 */ li r3, 1
/* 800BFAE0 000BCA20  48 00 02 7C */ b lbl_800BFD5C
lbl_800BFAE4:
/* 800BFAE4 000BCA24  28 03 00 42 */ cmplwi r3, 0x42
/* 800BFAE8 000BCA28  40 82 00 88 */ bne lbl_800BFB70
/* 800BFAEC 000BCA2C  38 00 00 00 */ li r0, 0
/* 800BFAF0 000BCA30  90 01 00 08 */ stw r0, 8(r1)
/* 800BFAF4 000BCA34  38 60 02 F4 */ li r3, 0x2f4
/* 800BFAF8 000BCA38  38 80 00 06 */ li r4, 6
/* 800BFAFC 000BCA3C  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 800BFB00 000BCA40  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 800BFB04 000BCA44  7C 06 07 74 */ extsb r6, r0
/* 800BFB08 000BCA48  38 E0 00 00 */ li r7, 0
/* 800BFB0C 000BCA4C  39 00 00 00 */ li r8, 0
/* 800BFB10 000BCA50  39 20 FF FF */ li r9, -1
/* 800BFB14 000BCA54  39 40 00 00 */ li r10, 0
/* 800BFB18 000BCA58  4B F5 A2 ED */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFB1C 000BCA5C  7C 7E 1B 79 */ or. r30, r3, r3
/* 800BFB20 000BCA60  40 82 00 38 */ bne lbl_800BFB58
/* 800BFB24 000BCA64  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800BFB28 000BCA68  28 00 01 9C */ cmplwi r0, 0x19c
/* 800BFB2C 000BCA6C  40 82 00 14 */ bne lbl_800BFB40
/* 800BFB30 000BCA70  7F E3 FB 78 */ mr r3, r31
/* 800BFB34 000BCA74  38 80 00 02 */ li r4, 2
/* 800BFB38 000BCA78  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800BFB3C 000BCA7C  4B FE DB E9 */ bl daAlink_c_NS_resetUpperAnime
lbl_800BFB40:
/* 800BFB40 000BCA80  7F E3 FB 78 */ mr r3, r31
/* 800BFB44 000BCA84  38 80 00 00 */ li r4, 0
/* 800BFB48 000BCA88  38 A0 00 00 */ li r5, 0
/* 800BFB4C 000BCA8C  48 00 17 91 */ bl daAlink_c_NS_deleteEquipItem
/* 800BFB50 000BCA90  38 60 00 00 */ li r3, 0
/* 800BFB54 000BCA94  48 00 02 08 */ b lbl_800BFD5C
lbl_800BFB58:
/* 800BFB58 000BCA98  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800BFB5C 000BCA9C  7F C4 F3 78 */ mr r4, r30
/* 800BFB60 000BCAA0  48 09 F1 59 */ bl daPy_actorKeep_c_NS_setData
/* 800BFB64 000BCAA4  93 DF 17 48 */ stw r30, 0x1748(r31)
/* 800BFB68 000BCAA8  38 60 00 01 */ li r3, 1
/* 800BFB6C 000BCAAC  48 00 01 F0 */ b lbl_800BFD5C
lbl_800BFB70:
/* 800BFB70 000BCAB0  28 03 01 05 */ cmplwi r3, 0x105
/* 800BFB74 000BCAB4  40 82 00 38 */ bne lbl_800BFBAC
/* 800BFB78 000BCAB8  38 60 02 E4 */ li r3, 0x2e4
/* 800BFB7C 000BCABC  38 80 01 0D */ li r4, 0x10d
/* 800BFB80 000BCAC0  38 BF 05 C8 */ addi r5, r31, 0x5c8
/* 800BFB84 000BCAC4  38 C0 FF FF */ li r6, -1
/* 800BFB88 000BCAC8  38 E0 00 00 */ li r7, 0
/* 800BFB8C 000BCACC  39 00 00 00 */ li r8, 0
/* 800BFB90 000BCAD0  39 20 FF FF */ li r9, -1
/* 800BFB94 000BCAD4  4B F5 A2 05 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800BFB98 000BCAD8  90 7F 28 24 */ stw r3, 0x2824(r31)
/* 800BFB9C 000BCADC  7F E3 FB 78 */ mr r3, r31
/* 800BFBA0 000BCAE0  48 03 42 01 */ bl daAlink_c_NS_initFishingRodHand
/* 800BFBA4 000BCAE4  38 60 00 01 */ li r3, 1
/* 800BFBA8 000BCAE8  48 00 01 B4 */ b lbl_800BFD5C
lbl_800BFBAC:
/* 800BFBAC 000BCAEC  48 09 EE 75 */ bl daPy_py_c_NS_checkFishingRodItem
/* 800BFBB0 000BCAF0  2C 03 00 00 */ cmpwi r3, 0
/* 800BFBB4 000BCAF4  41 82 00 14 */ beq lbl_800BFBC8
/* 800BFBB8 000BCAF8  7F E3 FB 78 */ mr r3, r31
/* 800BFBBC 000BCAFC  48 03 7B 4D */ bl daAlink_c_NS_setGroundFishingRodActor
/* 800BFBC0 000BCB00  38 60 00 01 */ li r3, 1
/* 800BFBC4 000BCB04  48 00 01 98 */ b lbl_800BFD5C
lbl_800BFBC8:
/* 800BFBC8 000BCB08  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800BFBCC 000BCB0C  48 09 EE 7D */ bl daPy_py_c_NS_checkBombItem
/* 800BFBD0 000BCB10  2C 03 00 00 */ cmpwi r3, 0
/* 800BFBD4 000BCB14  41 82 01 84 */ beq lbl_800BFD58
/* 800BFBD8 000BCB18  7F E3 FB 78 */ mr r3, r31
/* 800BFBDC 000BCB1C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800BFBE0 000BCB20  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800BFBE4 000BCB24  7D 89 03 A6 */ mtctr r12
/* 800BFBE8 000BCB28  4E 80 04 21 */ bctrl
/* 800BFBEC 000BCB2C  28 03 00 00 */ cmplwi r3, 0
/* 800BFBF0 000BCB30  41 82 00 5C */ beq lbl_800BFC4C
/* 800BFBF4 000BCB34  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800BFBF8 000BCB38  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800BFBFC 000BCB3C  80 63 5D B8 */ lwz r3, 0x5db8(r3)
/* 800BFC00 000BCB40  38 00 00 00 */ li r0, 0
/* 800BFC04 000BCB44  88 63 16 B4 */ lbz r3, 0x16b4(r3)
/* 800BFC08 000BCB48  28 03 00 00 */ cmplwi r3, 0
/* 800BFC0C 000BCB4C  41 82 00 0C */ beq lbl_800BFC18
/* 800BFC10 000BCB50  28 03 00 01 */ cmplwi r3, 1
/* 800BFC14 000BCB54  40 82 00 08 */ bne lbl_800BFC1C
lbl_800BFC18:
/* 800BFC18 000BCB58  38 00 00 01 */ li r0, 1
lbl_800BFC1C:
/* 800BFC1C 000BCB5C  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 800BFC20 000BCB60  40 82 00 2C */ bne lbl_800BFC4C
/* 800BFC24 000BCB64  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800BFC28 000BCB68  28 00 00 3D */ cmplwi r0, 0x3d
/* 800BFC2C 000BCB6C  40 82 00 10 */ bne lbl_800BFC3C
/* 800BFC30 000BCB70  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800BFC34 000BCB74  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800BFC38 000BCB78  40 82 00 14 */ bne lbl_800BFC4C
lbl_800BFC3C:
/* 800BFC3C 000BCB7C  38 00 00 FF */ li r0, 0xff
/* 800BFC40 000BCB80  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800BFC44 000BCB84  38 60 00 01 */ li r3, 1
/* 800BFC48 000BCB88  48 00 01 14 */ b lbl_800BFD5C
lbl_800BFC4C:
/* 800BFC4C 000BCB8C  38 61 00 1C */ addi r3, r1, 0x1c
/* 800BFC50 000BCB90  38 9F 05 C8 */ addi r4, r31, 0x5c8
/* 800BFC54 000BCB94  38 BF 05 D4 */ addi r5, r31, 0x5d4
/* 800BFC58 000BCB98  48 1A 6E 8D */ bl __pl__4cXyzCFRC3Vec
/* 800BFC5C 000BCB9C  38 61 00 10 */ addi r3, r1, 0x10
/* 800BFC60 000BCBA0  38 81 00 1C */ addi r4, r1, 0x1c
/* 800BFC64 000BCBA4  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800BFC68 000BCBA8  48 1A 6F 1D */ bl __ml__4cXyzCFf
/* 800BFC6C 000BCBAC  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800BFC70 000BCBB0  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800BFC74 000BCBB4  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 800BFC78 000BCBB8  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800BFC7C 000BCBBC  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800BFC80 000BCBC0  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 800BFC84 000BCBC4  7F E3 FB 78 */ mr r3, r31
/* 800BFC88 000BCBC8  4B FF 8C A9 */ bl daAlink_c_NS_checkReadyItem
/* 800BFC8C 000BCBCC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800BFC90 000BCBD0  41 82 00 B8 */ beq lbl_800BFD48
/* 800BFC94 000BCBD4  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800BFC98 000BCBD8  28 00 00 70 */ cmplwi r0, 0x70
/* 800BFC9C 000BCBDC  40 82 00 38 */ bne lbl_800BFCD4
/* 800BFCA0 000BCBE0  38 00 00 00 */ li r0, 0
/* 800BFCA4 000BCBE4  90 01 00 08 */ stw r0, 8(r1)
/* 800BFCA8 000BCBE8  38 60 02 21 */ li r3, 0x221
/* 800BFCAC 000BCBEC  38 80 00 08 */ li r4, 8
/* 800BFCB0 000BCBF0  38 A1 00 28 */ addi r5, r1, 0x28
/* 800BFCB4 000BCBF4  38 C0 FF FF */ li r6, -1
/* 800BFCB8 000BCBF8  38 E0 00 00 */ li r7, 0
/* 800BFCBC 000BCBFC  39 00 00 00 */ li r8, 0
/* 800BFCC0 000BCC00  39 20 FF FF */ li r9, -1
/* 800BFCC4 000BCC04  39 40 00 00 */ li r10, 0
/* 800BFCC8 000BCC08  4B F5 A1 3D */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFCCC 000BCC0C  7C 64 1B 78 */ mr r4, r3
/* 800BFCD0 000BCC10  48 00 00 34 */ b lbl_800BFD04
lbl_800BFCD4:
/* 800BFCD4 000BCC14  38 00 00 00 */ li r0, 0
/* 800BFCD8 000BCC18  90 01 00 08 */ stw r0, 8(r1)
/* 800BFCDC 000BCC1C  38 60 02 21 */ li r3, 0x221
/* 800BFCE0 000BCC20  38 80 00 09 */ li r4, 9
/* 800BFCE4 000BCC24  38 A1 00 28 */ addi r5, r1, 0x28
/* 800BFCE8 000BCC28  38 C0 FF FF */ li r6, -1
/* 800BFCEC 000BCC2C  38 E0 00 00 */ li r7, 0
/* 800BFCF0 000BCC30  39 00 00 00 */ li r8, 0
/* 800BFCF4 000BCC34  39 20 FF FF */ li r9, -1
/* 800BFCF8 000BCC38  39 40 00 00 */ li r10, 0
/* 800BFCFC 000BCC3C  4B F5 A1 09 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFD00 000BCC40  7C 64 1B 78 */ mr r4, r3
lbl_800BFD04:
/* 800BFD04 000BCC44  28 04 00 00 */ cmplwi r4, 0
/* 800BFD08 000BCC48  41 82 00 40 */ beq lbl_800BFD48
/* 800BFD0C 000BCC4C  88 7F 2F A2 */ lbz r3, 0x2fa2(r31)
/* 800BFD10 000BCC50  38 03 00 01 */ addi r0, r3, 1
/* 800BFD14 000BCC54  98 1F 2F A2 */ stb r0, 0x2fa2(r31)
/* 800BFD18 000BCC58  7F E3 FB 78 */ mr r3, r31
/* 800BFD1C 000BCC5C  48 02 5E 99 */ bl daAlink_c_NS_setGrabItemActor
/* 800BFD20 000BCC60  88 7F 2F 9C */ lbz r3, 0x2f9c(r31)
/* 800BFD24 000BCC64  38 80 FF FF */ li r4, -1
/* 800BFD28 000BCC68  4B F6 EB 15 */ bl dComIfGp_addSelectItemNum
/* 800BFD2C 000BCC6C  C0 02 93 94 */ lfs f0, lbl_80452D94-_SDA2_BASE_(r2)
/* 800BFD30 000BCC70  D0 1F 33 E4 */ stfs f0, 0x33e4(r31)
/* 800BFD34 000BCC74  7F E3 FB 78 */ mr r3, r31
/* 800BFD38 000BCC78  3C 80 80 39 */ lis r4, lbl_8038D664@ha
/* 800BFD3C 000BCC7C  38 84 D6 64 */ addi r4, r4, lbl_8038D664@l
/* 800BFD40 000BCC80  C0 24 00 18 */ lfs f1, 0x18(r4)
/* 800BFD44 000BCC84  48 02 40 79 */ bl daAlink_c_NS_setGrabUpperAnime
lbl_800BFD48:
/* 800BFD48 000BCC88  38 00 00 FF */ li r0, 0xff
/* 800BFD4C 000BCC8C  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800BFD50 000BCC90  38 60 00 01 */ li r3, 1
/* 800BFD54 000BCC94  48 00 00 08 */ b lbl_800BFD5C
lbl_800BFD58:
/* 800BFD58 000BCC98  38 60 00 00 */ li r3, 0
lbl_800BFD5C:
/* 800BFD5C 000BCC9C  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 800BFD60 000BCCA0  83 C1 00 38 */ lwz r30, 0x38(r1)
/* 800BFD64 000BCCA4  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800BFD68 000BCCA8  7C 08 03 A6 */ mtlr r0
/* 800BFD6C 000BCCAC  38 21 00 40 */ addi r1, r1, 0x40
/* 800BFD70 000BCCB0  4E 80 00 20 */ blr
