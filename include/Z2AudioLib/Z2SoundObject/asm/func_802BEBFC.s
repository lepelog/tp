/* 802BEBFC 002BBB3C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802BEC00 002BBB40  7C 08 02 A6 */ mflr r0
/* 802BEC04 002BBB44  90 01 00 44 */ stw r0, 0x44(r1)
/* 802BEC08 002BBB48  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 802BEC0C 002BBB4C  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 802BEC10 002BBB50  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 802BEC14 002BBB54  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 802BEC18 002BBB58  39 61 00 20 */ addi r11, r1, 0x20
/* 802BEC1C 002BBB5C  48 0A 35 C1 */ bl _savegpr_29
/* 802BEC20 002BBB60  7C 7F 1B 78 */ mr r31, r3
/* 802BEC24 002BBB64  7C 9D 23 78 */ mr r29, r4
/* 802BEC28 002BBB68  7C BE 2B 78 */ mr r30, r5
/* 802BEC2C 002BBB6C  FF C0 08 90 */ fmr f30, f1
/* 802BEC30 002BBB70  FF E0 10 90 */ fmr f31, f2
/* 802BEC34 002BBB74  48 00 01 35 */ bl Z2SoundObjAnime_NS_ageSounds_
/* 802BEC38 002BBB78  93 BF 00 20 */ stw r29, 0x20(r31)
/* 802BEC3C 002BBB7C  80 1F 00 20 */ lwz r0, 0x20(r31)
/* 802BEC40 002BBB80  28 00 00 00 */ cmplwi r0, 0
/* 802BEC44 002BBB84  41 82 00 FC */ beq lbl_802BED40
/* 802BEC48 002BBB88  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802BEC4C 002BBB8C  7C 00 00 34 */ cntlzw r0, r0
/* 802BEC50 002BBB90  54 00 D9 7E */ srwi r0, r0, 5
/* 802BEC54 002BBB94  98 1F 00 44 */ stb r0, 0x44(r31)
/* 802BEC58 002BBB98  38 60 00 00 */ li r3, 0
/* 802BEC5C 002BBB9C  90 7F 00 3C */ stw r3, 0x3c(r31)
/* 802BEC60 002BBBA0  88 1F 00 44 */ lbz r0, 0x44(r31)
/* 802BEC64 002BBBA4  28 00 00 00 */ cmplwi r0, 0
/* 802BEC68 002BBBA8  41 82 00 70 */ beq lbl_802BECD8
/* 802BEC6C 002BBBAC  80 9F 00 20 */ lwz r4, 0x20(r31)
/* 802BEC70 002BBBB0  80 64 00 04 */ lwz r3, 4(r4)
/* 802BEC74 002BBBB4  28 03 00 00 */ cmplwi r3, 0
/* 802BEC78 002BBBB8  41 82 00 18 */ beq lbl_802BEC90
/* 802BEC7C 002BBBBC  81 83 00 00 */ lwz r12, 0(r3)
/* 802BEC80 002BBBC0  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802BEC84 002BBBC4  7D 89 03 A6 */ mtctr r12
/* 802BEC88 002BBBC8  4E 80 04 21 */ bctrl
/* 802BEC8C 002BBBCC  48 00 00 08 */ b lbl_802BEC94
lbl_802BEC90:
/* 802BEC90 002BBBD0  A0 64 00 00 */ lhz r3, 0(r4)
lbl_802BEC94:
/* 802BEC94 002BBBD4  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 802BEC98 002BBBD8  38 03 FF FF */ addi r0, r3, -1
/* 802BEC9C 002BBBDC  90 1F 00 40 */ stw r0, 0x40(r31)
/* 802BECA0 002BBBE0  3C 60 80 45 */ lis r3, lbl_80450AE8@ha
/* 802BECA4 002BBBE4  C0 03 0A E8 */ lfs f0, lbl_80450AE8@l(r3)
/* 802BECA8 002BBBE8  D0 1F 00 28 */ stfs f0, 0x28(r31)
/* 802BECAC 002BBBEC  C0 22 C1 50 */ lfs f1, lbl_80455B50-_SDA2_BASE_(r2)
/* 802BECB0 002BBBF0  D0 3F 00 2C */ stfs f1, 0x2c(r31)
/* 802BECB4 002BBBF4  80 7F 00 20 */ lwz r3, 0x20(r31)
/* 802BECB8 002BBBF8  4B FE 82 B9 */ bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BECBC 002BBBFC  90 7F 00 34 */ stw r3, 0x34(r31)
/* 802BECC0 002BBC00  D3 DF 00 30 */ stfs f30, 0x30(r31)
/* 802BECC4 002BBC04  80 7F 00 20 */ lwz r3, 0x20(r31)
/* 802BECC8 002BBC08  FC 20 F0 90 */ fmr f1, f30
/* 802BECCC 002BBC0C  4B FE 83 79 */ bl getEndSoundIndex__17JAUSoundAnimationCFf
/* 802BECD0 002BBC10  90 7F 00 38 */ stw r3, 0x38(r31)
/* 802BECD4 002BBC14  48 00 00 38 */ b lbl_802BED0C
lbl_802BECD8:
/* 802BECD8 002BBC18  90 7F 00 40 */ stw r3, 0x40(r31)
/* 802BECDC 002BBC1C  C0 02 C1 50 */ lfs f0, lbl_80455B50-_SDA2_BASE_(r2)
/* 802BECE0 002BBC20  D0 1F 00 28 */ stfs f0, 0x28(r31)
/* 802BECE4 002BBC24  D3 DF 00 2C */ stfs f30, 0x2c(r31)
/* 802BECE8 002BBC28  80 7F 00 20 */ lwz r3, 0x20(r31)
/* 802BECEC 002BBC2C  FC 20 F0 90 */ fmr f1, f30
/* 802BECF0 002BBC30  4B FE 82 81 */ bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BECF4 002BBC34  90 7F 00 34 */ stw r3, 0x34(r31)
/* 802BECF8 002BBC38  C0 22 C1 50 */ lfs f1, lbl_80455B50-_SDA2_BASE_(r2)
/* 802BECFC 002BBC3C  D0 3F 00 30 */ stfs f1, 0x30(r31)
/* 802BED00 002BBC40  80 7F 00 20 */ lwz r3, 0x20(r31)
/* 802BED04 002BBC44  4B FE 83 41 */ bl getEndSoundIndex__17JAUSoundAnimationCFf
/* 802BED08 002BBC48  90 7F 00 38 */ stw r3, 0x38(r31)
lbl_802BED0C:
/* 802BED0C 002BBC4C  D3 FF 00 28 */ stfs f31, 0x28(r31)
/* 802BED10 002BBC50  80 7F 00 20 */ lwz r3, 0x20(r31)
/* 802BED14 002BBC54  FC 20 F8 90 */ fmr f1, f31
/* 802BED18 002BBC58  4B FE 82 59 */ bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BED1C 002BBC5C  90 7F 00 40 */ stw r3, 0x40(r31)
/* 802BED20 002BBC60  88 1F 00 44 */ lbz r0, 0x44(r31)
/* 802BED24 002BBC64  28 00 00 00 */ cmplwi r0, 0
/* 802BED28 002BBC68  41 82 00 18 */ beq lbl_802BED40
/* 802BED2C 002BBC6C  80 7F 00 40 */ lwz r3, 0x40(r31)
/* 802BED30 002BBC70  2C 03 00 00 */ cmpwi r3, 0
/* 802BED34 002BBC74  40 81 00 0C */ ble lbl_802BED40
/* 802BED38 002BBC78  38 03 FF FF */ addi r0, r3, -1
/* 802BED3C 002BBC7C  90 1F 00 40 */ stw r0, 0x40(r31)
lbl_802BED40:
/* 802BED40 002BBC80  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 802BED44 002BBC84  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 802BED48 002BBC88  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 802BED4C 002BBC8C  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 802BED50 002BBC90  39 61 00 20 */ addi r11, r1, 0x20
/* 802BED54 002BBC94  48 0A 34 D5 */ bl _restgpr_29
/* 802BED58 002BBC98  80 01 00 44 */ lwz r0, 0x44(r1)
/* 802BED5C 002BBC9C  7C 08 03 A6 */ mtlr r0
/* 802BED60 002BBCA0  38 21 00 40 */ addi r1, r1, 0x40
/* 802BED64 002BBCA4  4E 80 00 20 */ blr
