/* 800AEA70 000AB9B0  94 21 FF 70 */ stwu r1, -0x90(r1)
/* 800AEA74 000AB9B4  7C 08 02 A6 */ mflr r0
/* 800AEA78 000AB9B8  90 01 00 94 */ stw r0, 0x94(r1)
/* 800AEA7C 000AB9BC  DB E1 00 80 */ stfd f31, 0x80(r1)
/* 800AEA80 000AB9C0  F3 E1 00 88 */ psq_st f31, 136(r1), 0, 0
/* 800AEA84 000AB9C4  DB C1 00 70 */ stfd f30, 0x70(r1)
/* 800AEA88 000AB9C8  F3 C1 00 78 */ psq_st f30, 120(r1), 0, 0
/* 800AEA8C 000AB9CC  DB A1 00 60 */ stfd f29, 0x60(r1)
/* 800AEA90 000AB9D0  F3 A1 00 68 */ psq_st f29, 104(r1), 0, 0
/* 800AEA94 000AB9D4  DB 81 00 50 */ stfd f28, 0x50(r1)
/* 800AEA98 000AB9D8  F3 81 00 58 */ psq_st f28, 88(r1), 0, 0
/* 800AEA9C 000AB9DC  DB 61 00 40 */ stfd f27, 0x40(r1)
/* 800AEAA0 000AB9E0  F3 61 00 48 */ psq_st f27, 72(r1), 0, 0
/* 800AEAA4 000AB9E4  DB 41 00 30 */ stfd f26, 0x30(r1)
/* 800AEAA8 000AB9E8  F3 41 00 38 */ psq_st f26, 56(r1), 0, 0
/* 800AEAAC 000AB9EC  39 61 00 30 */ addi r11, r1, 0x30
/* 800AEAB0 000AB9F0  48 2B 37 29 */ bl _savegpr_28
/* 800AEAB4 000AB9F4  7C 7D 1B 78 */ mr r29, r3
/* 800AEAB8 000AB9F8  FF E0 08 90 */ fmr f31, f1
/* 800AEABC 000AB9FC  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 800AEAC0 000ABA00  3B E3 D6 58 */ addi r31, r3, lbl_8038D658@l
/* 800AEAC4 000ABA04  A8 7D 04 E6 */ lha r3, 0x4e6(r29)
/* 800AEAC8 000ABA08  A8 1D 04 DE */ lha r0, 0x4de(r29)
/* 800AEACC 000ABA0C  7C 03 00 50 */ subf r0, r3, r0
/* 800AEAD0 000ABA10  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AEAD4 000ABA14  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800AEAD8 000ABA18  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800AEADC 000ABA1C  7C 43 04 2E */ lfsx f2, r3, r0
/* 800AEAE0 000ABA20  7C 63 02 14 */ add r3, r3, r0
/* 800AEAE4 000ABA24  C0 63 00 04 */ lfs f3, 4(r3)
/* 800AEAE8 000ABA28  3B C0 00 00 */ li r30, 0
/* 800AEAEC 000ABA2C  80 1D 06 14 */ lwz r0, 0x614(r29)
/* 800AEAF0 000ABA30  28 00 00 17 */ cmplwi r0, 0x17
/* 800AEAF4 000ABA34  40 82 00 70 */ bne lbl_800AEB64
/* 800AEAF8 000ABA38  80 1D 06 10 */ lwz r0, 0x610(r29)
/* 800AEAFC 000ABA3C  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800AEB00 000ABA40  41 82 00 10 */ beq lbl_800AEB10
/* 800AEB04 000ABA44  38 00 00 02 */ li r0, 2
/* 800AEB08 000ABA48  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEB0C 000ABA4C  48 00 00 0C */ b lbl_800AEB18
lbl_800AEB10:
/* 800AEB10 000ABA50  38 00 00 03 */ li r0, 3
/* 800AEB14 000ABA54  98 1D 2F 98 */ stb r0, 0x2f98(r29)
lbl_800AEB18:
/* 800AEB18 000ABA58  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800AEB1C 000ABA5C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800AEB20 000ABA60  40 82 01 B8 */ bne lbl_800AECD8
/* 800AEB24 000ABA64  7F A3 EB 78 */ mr r3, r29
/* 800AEB28 000ABA68  48 00 A8 19 */ bl checkEquipAnime__9daAlink_cCFv
/* 800AEB2C 000ABA6C  2C 03 00 00 */ cmpwi r3, 0
/* 800AEB30 000ABA70  40 82 01 A8 */ bne lbl_800AECD8
/* 800AEB34 000ABA74  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800AEB38 000ABA78  28 00 01 03 */ cmplwi r0, 0x103
/* 800AEB3C 000ABA7C  41 82 01 9C */ beq lbl_800AECD8
/* 800AEB40 000ABA80  80 1D 06 10 */ lwz r0, 0x610(r29)
/* 800AEB44 000ABA84  2C 00 00 02 */ cmpwi r0, 2
/* 800AEB48 000ABA88  41 82 00 0C */ beq lbl_800AEB54
/* 800AEB4C 000ABA8C  2C 00 00 03 */ cmpwi r0, 3
/* 800AEB50 000ABA90  40 82 01 88 */ bne lbl_800AECD8
lbl_800AEB54:
/* 800AEB54 000ABA94  7F A3 EB 78 */ mr r3, r29
/* 800AEB58 000ABA98  38 80 00 00 */ li r4, 0
/* 800AEB5C 000ABA9C  48 00 A8 99 */ bl swordEquip__9daAlink_cFi
/* 800AEB60 000ABAA0  48 00 01 78 */ b lbl_800AECD8
lbl_800AEB64:
/* 800AEB64 000ABAA4  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800AEB68 000ABAA8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800AEB6C 000ABAAC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800AEB70 000ABAB0  40 81 01 28 */ ble lbl_800AEC98
/* 800AEB74 000ABAB4  80 9D 27 EC */ lwz r4, 0x27ec(r29)
/* 800AEB78 000ABAB8  28 04 00 00 */ cmplwi r4, 0
/* 800AEB7C 000ABABC  40 82 00 5C */ bne lbl_800AEBD8
/* 800AEB80 000ABAC0  88 1D 05 6A */ lbz r0, 0x56a(r29)
/* 800AEB84 000ABAC4  28 00 00 2A */ cmplwi r0, 0x2a
/* 800AEB88 000ABAC8  41 82 00 50 */ beq lbl_800AEBD8
/* 800AEB8C 000ABACC  C0 02 98 80 */ lfs f0, lbl_80453280-_SDA2_BASE_(r2)
/* 800AEB90 000ABAD0  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800AEB94 000ABAD4  4C 40 13 82 */ cror 2, 0, 2
/* 800AEB98 000ABAD8  41 82 00 14 */ beq lbl_800AEBAC
/* 800AEB9C 000ABADC  C0 02 93 70 */ lfs f0, lbl_80452D70-_SDA2_BASE_(r2)
/* 800AEBA0 000ABAE0  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800AEBA4 000ABAE4  4C 41 13 82 */ cror 2, 1, 2
/* 800AEBA8 000ABAE8  40 82 00 30 */ bne lbl_800AEBD8
lbl_800AEBAC:
/* 800AEBAC 000ABAEC  C0 02 98 80 */ lfs f0, lbl_80453280-_SDA2_BASE_(r2)
/* 800AEBB0 000ABAF0  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800AEBB4 000ABAF4  4C 40 13 82 */ cror 2, 0, 2
/* 800AEBB8 000ABAF8  40 82 00 10 */ bne lbl_800AEBC8
/* 800AEBBC 000ABAFC  38 00 00 01 */ li r0, 1
/* 800AEBC0 000ABB00  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEBC4 000ABB04  48 00 01 14 */ b lbl_800AECD8
lbl_800AEBC8:
/* 800AEBC8 000ABB08  38 00 00 00 */ li r0, 0
/* 800AEBCC 000ABB0C  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEBD0 000ABB10  3B C0 00 01 */ li r30, 1
/* 800AEBD4 000ABB14  48 00 01 04 */ b lbl_800AECD8
lbl_800AEBD8:
/* 800AEBD8 000ABB18  38 60 00 00 */ li r3, 0
/* 800AEBDC 000ABB1C  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800AEBE0 000ABB20  28 00 00 62 */ cmplwi r0, 0x62
/* 800AEBE4 000ABB24  41 82 00 10 */ beq lbl_800AEBF4
/* 800AEBE8 000ABB28  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800AEBEC 000ABB2C  28 00 02 A0 */ cmplwi r0, 0x2a0
/* 800AEBF0 000ABB30  40 82 00 08 */ bne lbl_800AEBF8
lbl_800AEBF4:
/* 800AEBF4 000ABB34  38 60 00 01 */ li r3, 1
lbl_800AEBF8:
/* 800AEBF8 000ABB38  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800AEBFC 000ABB3C  41 82 00 10 */ beq lbl_800AEC0C
/* 800AEC00 000ABB40  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800AEC04 000ABB44  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 800AEC08 000ABB48  48 00 00 28 */ b lbl_800AEC30
lbl_800AEC0C:
/* 800AEC0C 000ABB4C  28 04 00 00 */ cmplwi r4, 0
/* 800AEC10 000ABB50  41 82 00 14 */ beq lbl_800AEC24
/* 800AEC14 000ABB54  38 7F 00 BC */ addi r3, r31, 0xbc
/* 800AEC18 000ABB58  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800AEC1C 000ABB5C  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 800AEC20 000ABB60  48 00 00 10 */ b lbl_800AEC30
lbl_800AEC24:
/* 800AEC24 000ABB64  38 7F 01 10 */ addi r3, r31, 0x110
/* 800AEC28 000ABB68  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800AEC2C 000ABB6C  D0 1D 05 94 */ stfs f0, 0x594(r29)
lbl_800AEC30:
/* 800AEC30 000ABB70  80 1D 27 EC */ lwz r0, 0x27ec(r29)
/* 800AEC34 000ABB74  28 00 00 00 */ cmplwi r0, 0
/* 800AEC38 000ABB78  41 82 00 20 */ beq lbl_800AEC58
/* 800AEC3C 000ABB7C  C0 02 98 84 */ lfs f0, lbl_80453284-_SDA2_BASE_(r2)
/* 800AEC40 000ABB80  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800AEC44 000ABB84  4C 41 13 82 */ cror 2, 1, 2
/* 800AEC48 000ABB88  40 82 00 10 */ bne lbl_800AEC58
/* 800AEC4C 000ABB8C  38 00 00 00 */ li r0, 0
/* 800AEC50 000ABB90  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEC54 000ABB94  48 00 00 84 */ b lbl_800AECD8
lbl_800AEC58:
/* 800AEC58 000ABB98  C0 02 98 88 */ lfs f0, lbl_80453288-_SDA2_BASE_(r2)
/* 800AEC5C 000ABB9C  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800AEC60 000ABBA0  40 80 00 10 */ bge lbl_800AEC70
/* 800AEC64 000ABBA4  38 00 00 01 */ li r0, 1
/* 800AEC68 000ABBA8  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEC6C 000ABBAC  48 00 00 6C */ b lbl_800AECD8
lbl_800AEC70:
/* 800AEC70 000ABBB0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AEC74 000ABBB4  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800AEC78 000ABBB8  40 81 00 10 */ ble lbl_800AEC88
/* 800AEC7C 000ABBBC  38 00 00 02 */ li r0, 2
/* 800AEC80 000ABBC0  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEC84 000ABBC4  48 00 00 54 */ b lbl_800AECD8
lbl_800AEC88:
/* 800AEC88 000ABBC8  40 80 00 50 */ bge lbl_800AECD8
/* 800AEC8C 000ABBCC  38 00 00 03 */ li r0, 3
/* 800AEC90 000ABBD0  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 800AEC94 000ABBD4  48 00 00 44 */ b lbl_800AECD8
lbl_800AEC98:
/* 800AEC98 000ABBD8  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 800AEC9C 000ABBDC  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800AECA0 000ABBE0  41 82 00 38 */ beq lbl_800AECD8
/* 800AECA4 000ABBE4  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800AECA8 000ABBE8  28 00 01 6C */ cmplwi r0, 0x16c
/* 800AECAC 000ABBEC  41 82 00 24 */ beq lbl_800AECD0
/* 800AECB0 000ABBF0  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800AECB4 000ABBF4  28 00 00 50 */ cmplwi r0, 0x50
/* 800AECB8 000ABBF8  41 82 00 18 */ beq lbl_800AECD0
/* 800AECBC 000ABBFC  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 800AECC0 000ABC00  28 00 00 00 */ cmplwi r0, 0
/* 800AECC4 000ABC04  41 82 00 0C */ beq lbl_800AECD0
/* 800AECC8 000ABC08  28 00 00 01 */ cmplwi r0, 1
/* 800AECCC 000ABC0C  40 82 00 0C */ bne lbl_800AECD8
lbl_800AECD0:
/* 800AECD0 000ABC10  38 00 00 03 */ li r0, 3
/* 800AECD4 000ABC14  98 1D 2F 98 */ stb r0, 0x2f98(r29)
lbl_800AECD8:
/* 800AECD8 000ABC18  7F A3 EB 78 */ mr r3, r29
/* 800AECDC 000ABC1C  A8 9D 04 E6 */ lha r4, 0x4e6(r29)
/* 800AECE0 000ABC20  48 03 8B B5 */ bl checkSetChainPullAnime__9daAlink_cFs
/* 800AECE4 000ABC24  2C 03 00 00 */ cmpwi r3, 0
/* 800AECE8 000ABC28  41 82 00 70 */ beq lbl_800AED58
/* 800AECEC 000ABC2C  80 1D 05 8C */ lwz r0, 0x58c(r29)
/* 800AECF0 000ABC30  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800AECF4 000ABC34  38 80 01 82 */ li r4, 0x182
/* 800AECF8 000ABC38  41 82 00 08 */ beq lbl_800AED00
/* 800AECFC 000ABC3C  38 80 01 84 */ li r4, 0x184
lbl_800AED00:
/* 800AED00 000ABC40  7C 9C 23 78 */ mr r28, r4
/* 800AED04 000ABC44  7F A3 EB 78 */ mr r3, r29
/* 800AED08 000ABC48  4B FF D8 51 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AED0C 000ABC4C  2C 03 00 00 */ cmpwi r3, 0
/* 800AED10 000ABC50  40 82 00 3C */ bne lbl_800AED4C
/* 800AED14 000ABC54  7F A3 EB 78 */ mr r3, r29
/* 800AED18 000ABC58  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800AED1C 000ABC5C  81 8C 00 68 */ lwz r12, 0x68(r12)
/* 800AED20 000ABC60  7D 89 03 A6 */ mtctr r12
/* 800AED24 000ABC64  4E 80 04 21 */ bctrl
/* 800AED28 000ABC68  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800AED2C 000ABC6C  41 82 00 0C */ beq lbl_800AED38
/* 800AED30 000ABC70  C0 22 93 A8 */ lfs f1, lbl_80452DA8-_SDA2_BASE_(r2)
/* 800AED34 000ABC74  48 00 00 08 */ b lbl_800AED3C
lbl_800AED38:
/* 800AED38 000ABC78  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_800AED3C:
/* 800AED3C 000ABC7C  7F A3 EB 78 */ mr r3, r29
/* 800AED40 000ABC80  7F 84 E3 78 */ mr r4, r28
/* 800AED44 000ABC84  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800AED48 000ABC88  4B FF E2 99 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
lbl_800AED4C:
/* 800AED4C 000ABC8C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AED50 000ABC90  D0 1D 33 9C */ stfs f0, 0x339c(r29)
/* 800AED54 000ABC94  48 00 03 80 */ b lbl_800AF0D4
lbl_800AED58:
/* 800AED58 000ABC98  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 800AED5C 000ABC9C  28 00 00 01 */ cmplwi r0, 1
/* 800AED60 000ABCA0  40 82 00 14 */ bne lbl_800AED74
/* 800AED64 000ABCA4  7F A3 EB 78 */ mr r3, r29
/* 800AED68 000ABCA8  FC 20 F8 90 */ fmr f1, f31
/* 800AED6C 000ABCAC  48 00 03 B1 */ bl setBlendAtnBackMoveAnime__9daAlink_cFf
/* 800AED70 000ABCB0  48 00 03 64 */ b lbl_800AF0D4
lbl_800AED74:
/* 800AED74 000ABCB4  2C 1E 00 00 */ cmpwi r30, 0
/* 800AED78 000ABCB8  41 82 00 20 */ beq lbl_800AED98
/* 800AED7C 000ABCBC  38 7F 00 64 */ addi r3, r31, 0x64
/* 800AED80 000ABCC0  C0 03 00 30 */ lfs f0, 0x30(r3)
/* 800AED84 000ABCC4  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 800AED88 000ABCC8  7F A3 EB 78 */ mr r3, r29
/* 800AED8C 000ABCCC  FC 20 F8 90 */ fmr f1, f31
/* 800AED90 000ABCD0  4B FF F0 85 */ bl setBlendMoveAnime__9daAlink_cFf
/* 800AED94 000ABCD4  48 00 03 40 */ b lbl_800AF0D4
lbl_800AED98:
/* 800AED98 000ABCD8  7F A3 EB 78 */ mr r3, r29
/* 800AED9C 000ABCDC  4B FF EF ED */ bl getMoveGroundAngleSpeedRate__9daAlink_cFv
/* 800AEDA0 000ABCE0  FF C0 08 90 */ fmr f30, f1
/* 800AEDA4 000ABCE4  80 9D 27 EC */ lwz r4, 0x27ec(r29)
/* 800AEDA8 000ABCE8  28 04 00 00 */ cmplwi r4, 0
/* 800AEDAC 000ABCEC  41 82 00 24 */ beq lbl_800AEDD0
/* 800AEDB0 000ABCF0  38 7F 00 BC */ addi r3, r31, 0xbc
/* 800AEDB4 000ABCF4  C3 83 00 44 */ lfs f28, 0x44(r3)
/* 800AEDB8 000ABCF8  C0 03 00 14 */ lfs f0, 0x14(r3)
/* 800AEDBC 000ABCFC  C0 43 00 18 */ lfs f2, 0x18(r3)
/* 800AEDC0 000ABD00  C3 63 00 08 */ lfs f27, 8(r3)
/* 800AEDC4 000ABD04  C3 43 00 0C */ lfs f26, 0xc(r3)
/* 800AEDC8 000ABD08  C0 63 00 10 */ lfs f3, 0x10(r3)
/* 800AEDCC 000ABD0C  48 00 00 20 */ b lbl_800AEDEC
lbl_800AEDD0:
/* 800AEDD0 000ABD10  38 7F 01 10 */ addi r3, r31, 0x110
/* 800AEDD4 000ABD14  C3 83 00 44 */ lfs f28, 0x44(r3)
/* 800AEDD8 000ABD18  C0 03 00 14 */ lfs f0, 0x14(r3)
/* 800AEDDC 000ABD1C  C0 43 00 18 */ lfs f2, 0x18(r3)
/* 800AEDE0 000ABD20  C3 63 00 08 */ lfs f27, 8(r3)
/* 800AEDE4 000ABD24  C3 43 00 0C */ lfs f26, 0xc(r3)
/* 800AEDE8 000ABD28  C0 63 00 10 */ lfs f3, 0x10(r3)
lbl_800AEDEC:
/* 800AEDEC 000ABD2C  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 800AEDF0 000ABD30  40 80 00 CC */ bge lbl_800AEEBC
/* 800AEDF4 000ABD34  EF BE 00 24 */ fdivs f29, f30, f0
/* 800AEDF8 000ABD38  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 800AEDFC 000ABD3C  28 00 00 00 */ cmplwi r0, 0
/* 800AEE00 000ABD40  40 82 00 18 */ bne lbl_800AEE18
/* 800AEE04 000ABD44  3B C0 00 11 */ li r30, 0x11
/* 800AEE08 000ABD48  3B 80 00 00 */ li r28, 0
/* 800AEE0C 000ABD4C  38 7F 00 BC */ addi r3, r31, 0xbc
/* 800AEE10 000ABD50  C3 43 00 4C */ lfs f26, 0x4c(r3)
/* 800AEE14 000ABD54  48 00 00 40 */ b lbl_800AEE54
lbl_800AEE18:
/* 800AEE18 000ABD58  28 00 00 02 */ cmplwi r0, 2
/* 800AEE1C 000ABD5C  40 82 00 20 */ bne lbl_800AEE3C
/* 800AEE20 000ABD60  3B C0 00 10 */ li r30, 0x10
/* 800AEE24 000ABD64  28 04 00 00 */ cmplwi r4, 0
/* 800AEE28 000ABD68  41 82 00 0C */ beq lbl_800AEE34
/* 800AEE2C 000ABD6C  3B 80 00 07 */ li r28, 7
/* 800AEE30 000ABD70  48 00 00 24 */ b lbl_800AEE54
lbl_800AEE34:
/* 800AEE34 000ABD74  3B 80 00 06 */ li r28, 6
/* 800AEE38 000ABD78  48 00 00 1C */ b lbl_800AEE54
lbl_800AEE3C:
/* 800AEE3C 000ABD7C  3B C0 00 11 */ li r30, 0x11
/* 800AEE40 000ABD80  28 04 00 00 */ cmplwi r4, 0
/* 800AEE44 000ABD84  41 82 00 0C */ beq lbl_800AEE50
/* 800AEE48 000ABD88  3B 80 00 09 */ li r28, 9
/* 800AEE4C 000ABD8C  48 00 00 08 */ b lbl_800AEE54
lbl_800AEE50:
/* 800AEE50 000ABD90  3B 80 00 08 */ li r28, 8
lbl_800AEE54:
/* 800AEE54 000ABD94  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 800AEE58 000ABD98  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800AEE5C 000ABD9C  40 82 00 14 */ bne lbl_800AEE70
/* 800AEE60 000ABDA0  7F A3 EB 78 */ mr r3, r29
/* 800AEE64 000ABDA4  48 00 4A A1 */ bl checkZeroSpeedF__9daAlink_cCFv
/* 800AEE68 000ABDA8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800AEE6C 000ABDAC  41 82 00 14 */ beq lbl_800AEE80
lbl_800AEE70:
/* 800AEE70 000ABDB0  38 C0 00 02 */ li r6, 2
/* 800AEE74 000ABDB4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AEE78 000ABDB8  D0 1D 33 9C */ stfs f0, 0x339c(r29)
/* 800AEE7C 000ABDBC  48 00 00 1C */ b lbl_800AEE98
lbl_800AEE80:
/* 800AEE80 000ABDC0  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AEE84 000ABDC4  EC 01 E0 28 */ fsubs f0, f1, f28
/* 800AEE88 000ABDC8  EC 1D 00 32 */ fmuls f0, f29, f0
/* 800AEE8C 000ABDCC  EF BC 00 2A */ fadds f29, f28, f0
/* 800AEE90 000ABDD0  38 C0 00 03 */ li r6, 3
/* 800AEE94 000ABDD4  D0 3D 33 9C */ stfs f1, 0x339c(r29)
lbl_800AEE98:
/* 800AEE98 000ABDD8  7F A3 EB 78 */ mr r3, r29
/* 800AEE9C 000ABDDC  FC 20 E8 90 */ fmr f1, f29
/* 800AEEA0 000ABDE0  FC 40 D8 90 */ fmr f2, f27
/* 800AEEA4 000ABDE4  FC 60 D0 90 */ fmr f3, f26
/* 800AEEA8 000ABDE8  7F C4 F3 78 */ mr r4, r30
/* 800AEEAC 000ABDEC  7F 85 E3 78 */ mr r5, r28
/* 800AEEB0 000ABDF0  FC 80 F8 90 */ fmr f4, f31
/* 800AEEB4 000ABDF4  4B FF DB 61 */ bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEEB8 000ABDF8  48 00 01 1C */ b lbl_800AEFD4
lbl_800AEEBC:
/* 800AEEBC 000ABDFC  FC 1E 10 40 */ fcmpo cr0, f30, f2
/* 800AEEC0 000ABE00  40 80 00 A0 */ bge lbl_800AEF60
/* 800AEEC4 000ABE04  EC 3E 00 28 */ fsubs f1, f30, f0
/* 800AEEC8 000ABE08  EC 02 00 28 */ fsubs f0, f2, f0
/* 800AEECC 000ABE0C  EF A1 00 24 */ fdivs f29, f1, f0
/* 800AEED0 000ABE10  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 800AEED4 000ABE14  28 00 00 00 */ cmplwi r0, 0
/* 800AEED8 000ABE18  40 82 00 1C */ bne lbl_800AEEF4
/* 800AEEDC 000ABE1C  38 80 00 00 */ li r4, 0
/* 800AEEE0 000ABE20  38 A0 00 01 */ li r5, 1
/* 800AEEE4 000ABE24  38 7F 00 BC */ addi r3, r31, 0xbc
/* 800AEEE8 000ABE28  C3 43 00 4C */ lfs f26, 0x4c(r3)
/* 800AEEEC 000ABE2C  C0 63 00 50 */ lfs f3, 0x50(r3)
/* 800AEEF0 000ABE30  48 00 00 48 */ b lbl_800AEF38
lbl_800AEEF4:
/* 800AEEF4 000ABE34  28 00 00 02 */ cmplwi r0, 2
/* 800AEEF8 000ABE38  40 82 00 24 */ bne lbl_800AEF1C
/* 800AEEFC 000ABE3C  28 04 00 00 */ cmplwi r4, 0
/* 800AEF00 000ABE40  41 82 00 10 */ beq lbl_800AEF10
/* 800AEF04 000ABE44  38 80 00 07 */ li r4, 7
/* 800AEF08 000ABE48  38 A0 00 0B */ li r5, 0xb
/* 800AEF0C 000ABE4C  48 00 00 2C */ b lbl_800AEF38
lbl_800AEF10:
/* 800AEF10 000ABE50  38 80 00 06 */ li r4, 6
/* 800AEF14 000ABE54  38 A0 00 0A */ li r5, 0xa
/* 800AEF18 000ABE58  48 00 00 20 */ b lbl_800AEF38
lbl_800AEF1C:
/* 800AEF1C 000ABE5C  28 04 00 00 */ cmplwi r4, 0
/* 800AEF20 000ABE60  41 82 00 10 */ beq lbl_800AEF30
/* 800AEF24 000ABE64  38 80 00 09 */ li r4, 9
/* 800AEF28 000ABE68  38 A0 00 0D */ li r5, 0xd
/* 800AEF2C 000ABE6C  48 00 00 0C */ b lbl_800AEF38
lbl_800AEF30:
/* 800AEF30 000ABE70  38 80 00 08 */ li r4, 8
/* 800AEF34 000ABE74  38 A0 00 0C */ li r5, 0xc
lbl_800AEF38:
/* 800AEF38 000ABE78  7F A3 EB 78 */ mr r3, r29
/* 800AEF3C 000ABE7C  FC 20 E8 90 */ fmr f1, f29
/* 800AEF40 000ABE80  FC 40 D0 90 */ fmr f2, f26
/* 800AEF44 000ABE84  38 C0 00 03 */ li r6, 3
/* 800AEF48 000ABE88  FC 80 F8 90 */ fmr f4, f31
/* 800AEF4C 000ABE8C  4B FF DA C9 */ bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEF50 000ABE90  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AEF54 000ABE94  EC 00 E8 28 */ fsubs f0, f0, f29
/* 800AEF58 000ABE98  D0 1D 33 9C */ stfs f0, 0x339c(r29)
/* 800AEF5C 000ABE9C  48 00 00 78 */ b lbl_800AEFD4
lbl_800AEF60:
/* 800AEF60 000ABEA0  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 800AEF64 000ABEA4  28 00 00 00 */ cmplwi r0, 0
/* 800AEF68 000ABEA8  40 82 00 14 */ bne lbl_800AEF7C
/* 800AEF6C 000ABEAC  38 80 00 01 */ li r4, 1
/* 800AEF70 000ABEB0  38 7F 00 BC */ addi r3, r31, 0xbc
/* 800AEF74 000ABEB4  C0 63 00 50 */ lfs f3, 0x50(r3)
/* 800AEF78 000ABEB8  48 00 00 38 */ b lbl_800AEFB0
lbl_800AEF7C:
/* 800AEF7C 000ABEBC  28 00 00 02 */ cmplwi r0, 2
/* 800AEF80 000ABEC0  40 82 00 1C */ bne lbl_800AEF9C
/* 800AEF84 000ABEC4  28 04 00 00 */ cmplwi r4, 0
/* 800AEF88 000ABEC8  41 82 00 0C */ beq lbl_800AEF94
/* 800AEF8C 000ABECC  38 80 00 0B */ li r4, 0xb
/* 800AEF90 000ABED0  48 00 00 20 */ b lbl_800AEFB0
lbl_800AEF94:
/* 800AEF94 000ABED4  38 80 00 0A */ li r4, 0xa
/* 800AEF98 000ABED8  48 00 00 18 */ b lbl_800AEFB0
lbl_800AEF9C:
/* 800AEF9C 000ABEDC  28 04 00 00 */ cmplwi r4, 0
/* 800AEFA0 000ABEE0  41 82 00 0C */ beq lbl_800AEFAC
/* 800AEFA4 000ABEE4  38 80 00 0D */ li r4, 0xd
/* 800AEFA8 000ABEE8  48 00 00 08 */ b lbl_800AEFB0
lbl_800AEFAC:
/* 800AEFAC 000ABEEC  38 80 00 0C */ li r4, 0xc
lbl_800AEFB0:
/* 800AEFB0 000ABEF0  7F A3 EB 78 */ mr r3, r29
/* 800AEFB4 000ABEF4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AEFB8 000ABEF8  FC 40 18 90 */ fmr f2, f3
/* 800AEFBC 000ABEFC  7C 85 23 78 */ mr r5, r4
/* 800AEFC0 000ABF00  38 C0 00 03 */ li r6, 3
/* 800AEFC4 000ABF04  FC 80 F8 90 */ fmr f4, f31
/* 800AEFC8 000ABF08  4B FF DA 4D */ bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEFCC 000ABF0C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AEFD0 000ABF10  D0 1D 33 9C */ stfs f0, 0x339c(r29)
lbl_800AEFD4:
/* 800AEFD4 000ABF14  88 1D 2F 8C */ lbz r0, 0x2f8c(r29)
/* 800AEFD8 000ABF18  28 00 00 02 */ cmplwi r0, 2
/* 800AEFDC 000ABF1C  41 82 00 F8 */ beq lbl_800AF0D4
/* 800AEFE0 000ABF20  3B 9D 1F D0 */ addi r28, r29, 0x1fd0
/* 800AEFE4 000ABF24  88 7D 2F 98 */ lbz r3, 0x2f98(r29)
/* 800AEFE8 000ABF28  28 03 00 00 */ cmplwi r3, 0
/* 800AEFEC 000ABF2C  40 82 00 10 */ bne lbl_800AEFFC
/* 800AEFF0 000ABF30  C3 42 92 C0 */ lfs f26, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AEFF4 000ABF34  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800AEFF8 000ABF38  48 00 00 38 */ b lbl_800AF030
lbl_800AEFFC:
/* 800AEFFC 000ABF3C  80 1D 27 EC */ lwz r0, 0x27ec(r29)
/* 800AF000 000ABF40  28 00 00 00 */ cmplwi r0, 0
/* 800AF004 000ABF44  41 82 00 10 */ beq lbl_800AF014
/* 800AF008 000ABF48  C3 42 93 44 */ lfs f26, lbl_80452D44-_SDA2_BASE_(r2)
/* 800AF00C 000ABF4C  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800AF010 000ABF50  48 00 00 0C */ b lbl_800AF01C
lbl_800AF014:
/* 800AF014 000ABF54  C3 42 93 34 */ lfs f26, lbl_80452D34-_SDA2_BASE_(r2)
/* 800AF018 000ABF58  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_800AF01C:
/* 800AF01C 000ABF5C  28 03 00 02 */ cmplwi r3, 2
/* 800AF020 000ABF60  41 82 00 10 */ beq lbl_800AF030
/* 800AF024 000ABF64  FC 00 08 90 */ fmr f0, f1
/* 800AF028 000ABF68  FC 20 D0 90 */ fmr f1, f26
/* 800AF02C 000ABF6C  FF 40 00 90 */ fmr f26, f0
lbl_800AF030:
/* 800AF030 000ABF70  7F 83 E3 78 */ mr r3, r28
/* 800AF034 000ABF74  48 27 93 F9 */ bl checkPass__12J3DFrameCtrlFf
/* 800AF038 000ABF78  2C 03 00 00 */ cmpwi r3, 0
/* 800AF03C 000ABF7C  41 82 00 14 */ beq lbl_800AF050
/* 800AF040 000ABF80  80 1D 05 84 */ lwz r0, 0x584(r29)
/* 800AF044 000ABF84  60 00 00 10 */ ori r0, r0, 0x10
/* 800AF048 000ABF88  90 1D 05 84 */ stw r0, 0x584(r29)
/* 800AF04C 000ABF8C  48 00 00 24 */ b lbl_800AF070
lbl_800AF050:
/* 800AF050 000ABF90  7F 83 E3 78 */ mr r3, r28
/* 800AF054 000ABF94  FC 20 D0 90 */ fmr f1, f26
/* 800AF058 000ABF98  48 27 93 D5 */ bl checkPass__12J3DFrameCtrlFf
/* 800AF05C 000ABF9C  2C 03 00 00 */ cmpwi r3, 0
/* 800AF060 000ABFA0  41 82 00 10 */ beq lbl_800AF070
/* 800AF064 000ABFA4  80 1D 05 84 */ lwz r0, 0x584(r29)
/* 800AF068 000ABFA8  60 00 00 20 */ ori r0, r0, 0x20
/* 800AF06C 000ABFAC  90 1D 05 84 */ stw r0, 0x584(r29)
lbl_800AF070:
/* 800AF070 000ABFB0  7F A3 EB 78 */ mr r3, r29
/* 800AF074 000ABFB4  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800AF078 000ABFB8  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800AF07C 000ABFBC  7D 89 03 A6 */ mtctr r12
/* 800AF080 000ABFC0  4E 80 04 21 */ bctrl
/* 800AF084 000ABFC4  2C 03 00 00 */ cmpwi r3, 0
/* 800AF088 000ABFC8  41 82 00 4C */ beq lbl_800AF0D4
/* 800AF08C 000ABFCC  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800AF090 000ABFD0  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 800AF094 000ABFD4  40 81 00 40 */ ble lbl_800AF0D4
/* 800AF098 000ABFD8  80 1D 05 84 */ lwz r0, 0x584(r29)
/* 800AF09C 000ABFDC  54 00 06 B7 */ rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 800AF0A0 000ABFE0  41 82 00 34 */ beq lbl_800AF0D4
/* 800AF0A4 000ABFE4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AF0A8 000ABFE8  D0 21 00 08 */ stfs f1, 8(r1)
/* 800AF0AC 000ABFEC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AF0B0 000ABFF0  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800AF0B4 000ABFF4  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800AF0B8 000ABFF8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800AF0BC 000ABFFC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800AF0C0 000AC000  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800AF0C4 000AC004  38 80 00 01 */ li r4, 1
/* 800AF0C8 000AC008  38 A0 00 0F */ li r5, 0xf
/* 800AF0CC 000AC00C  38 C1 00 08 */ addi r6, r1, 8
/* 800AF0D0 000AC010  4B FC 09 55 */ bl StartShock__12dVibration_cFii4cXyz
lbl_800AF0D4:
/* 800AF0D4 000AC014  E3 E1 00 88 */ psq_l f31, 136(r1), 0, 0
/* 800AF0D8 000AC018  CB E1 00 80 */ lfd f31, 0x80(r1)
/* 800AF0DC 000AC01C  E3 C1 00 78 */ psq_l f30, 120(r1), 0, 0
/* 800AF0E0 000AC020  CB C1 00 70 */ lfd f30, 0x70(r1)
/* 800AF0E4 000AC024  E3 A1 00 68 */ psq_l f29, 104(r1), 0, 0
/* 800AF0E8 000AC028  CB A1 00 60 */ lfd f29, 0x60(r1)
/* 800AF0EC 000AC02C  E3 81 00 58 */ psq_l f28, 88(r1), 0, 0
/* 800AF0F0 000AC030  CB 81 00 50 */ lfd f28, 0x50(r1)
/* 800AF0F4 000AC034  E3 61 00 48 */ psq_l f27, 72(r1), 0, 0
/* 800AF0F8 000AC038  CB 61 00 40 */ lfd f27, 0x40(r1)
/* 800AF0FC 000AC03C  E3 41 00 38 */ psq_l f26, 56(r1), 0, 0
/* 800AF100 000AC040  CB 41 00 30 */ lfd f26, 0x30(r1)
/* 800AF104 000AC044  39 61 00 30 */ addi r11, r1, 0x30
/* 800AF108 000AC048  48 2B 31 1D */ bl _restgpr_28
/* 800AF10C 000AC04C  80 01 00 94 */ lwz r0, 0x94(r1)
/* 800AF110 000AC050  7C 08 03 A6 */ mtlr r0
/* 800AF114 000AC054  38 21 00 90 */ addi r1, r1, 0x90
/* 800AF118 000AC058  4E 80 00 20 */ blr
