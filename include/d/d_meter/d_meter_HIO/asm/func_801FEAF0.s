/* 801FEAF0 001FBA30  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801FEAF4 001FBA34  7C 08 02 A6 */ mflr r0
/* 801FEAF8 001FBA38  90 01 00 14 */ stw r0, 0x14(r1)
/* 801FEAFC 001FBA3C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801FEB00 001FBA40  7C 7F 1B 78 */ mr r31, r3
/* 801FEB04 001FBA44  3C 60 80 3C */ lis r3, lbl_803BF13C@ha
/* 801FEB08 001FBA48  38 03 F1 3C */ addi r0, r3, lbl_803BF13C@l
/* 801FEB0C 001FBA4C  90 1F 00 00 */ stw r0, 0(r31)
/* 801FEB10 001FBA50  38 7F 01 B8 */ addi r3, r31, 0x1b8
/*.global __ct__Q28JUtility6TColorFv*/
/* 801FEB14 001FBA54  3C 80 80 19 */ lis r4, __ct__Q28JUtility6TColorFv@ha
/*.global __ct__Q28JUtility6TColorFv*/
/* 801FEB18 001FBA58  38 84 39 60 */ addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 801FEB1C 001FBA5C  38 A0 00 00 */ li r5, 0
/* 801FEB20 001FBA60  38 C0 00 04 */ li r6, 4
/* 801FEB24 001FBA64  38 E0 00 02 */ li r7, 2
/* 801FEB28 001FBA68  48 16 32 39 */ bl func_80361D60
/* 801FEB2C 001FBA6C  38 7F 01 C0 */ addi r3, r31, 0x1c0
/*.global __ct__Q28JUtility6TColorFv*/
/* 801FEB30 001FBA70  3C 80 80 19 */ lis r4, __ct__Q28JUtility6TColorFv@ha
/*.global __ct__Q28JUtility6TColorFv*/
/* 801FEB34 001FBA74  38 84 39 60 */ addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 801FEB38 001FBA78  38 A0 00 00 */ li r5, 0
/* 801FEB3C 001FBA7C  38 C0 00 04 */ li r6, 4
/* 801FEB40 001FBA80  38 E0 00 02 */ li r7, 2
/* 801FEB44 001FBA84  48 16 32 1D */ bl func_80361D60
/* 801FEB48 001FBA88  38 00 FF FF */ li r0, -1
/* 801FEB4C 001FBA8C  90 1F 01 C8 */ stw r0, 0x1c8(r31)
/* 801FEB50 001FBA90  90 1F 01 CC */ stw r0, 0x1cc(r31)
/* 801FEB54 001FBA94  90 1F 01 E0 */ stw r0, 0x1e0(r31)
/* 801FEB58 001FBA98  90 1F 01 E4 */ stw r0, 0x1e4(r31)
/* 801FEB5C 001FBA9C  90 1F 01 E8 */ stw r0, 0x1e8(r31)
/* 801FEB60 001FBAA0  90 1F 01 EC */ stw r0, 0x1ec(r31)
/* 801FEB64 001FBAA4  90 1F 01 F8 */ stw r0, 0x1f8(r31)
/* 801FEB68 001FBAA8  90 1F 01 FC */ stw r0, 0x1fc(r31)
/* 801FEB6C 001FBAAC  90 1F 02 00 */ stw r0, 0x200(r31)
/* 801FEB70 001FBAB0  90 1F 02 04 */ stw r0, 0x204(r31)
/* 801FEB74 001FBAB4  90 1F 02 10 */ stw r0, 0x210(r31)
/* 801FEB78 001FBAB8  90 1F 02 14 */ stw r0, 0x214(r31)
/* 801FEB7C 001FBABC  90 1F 02 18 */ stw r0, 0x218(r31)
/* 801FEB80 001FBAC0  90 1F 02 1C */ stw r0, 0x21c(r31)
/* 801FEB84 001FBAC4  90 1F 02 28 */ stw r0, 0x228(r31)
/* 801FEB88 001FBAC8  90 1F 02 2C */ stw r0, 0x22c(r31)
/* 801FEB8C 001FBACC  90 1F 02 30 */ stw r0, 0x230(r31)
/* 801FEB90 001FBAD0  90 1F 02 34 */ stw r0, 0x234(r31)
/* 801FEB94 001FBAD4  C0 22 AB 70 */ lfs f1, lbl_80454570-_SDA2_BASE_(r2)
/* 801FEB98 001FBAD8  D0 3F 01 DC */ stfs f1, 0x1dc(r31)
/* 801FEB9C 001FBADC  39 00 00 FF */ li r8, 0xff
/* 801FEBA0 001FBAE0  99 1F 01 E0 */ stb r8, 0x1e0(r31)
/* 801FEBA4 001FBAE4  99 1F 01 E1 */ stb r8, 0x1e1(r31)
/* 801FEBA8 001FBAE8  99 1F 01 E2 */ stb r8, 0x1e2(r31)
/* 801FEBAC 001FBAEC  38 E0 00 B9 */ li r7, 0xb9
/* 801FEBB0 001FBAF0  98 FF 01 E3 */ stb r7, 0x1e3(r31)
/* 801FEBB4 001FBAF4  38 C0 00 00 */ li r6, 0
/* 801FEBB8 001FBAF8  98 DF 01 E4 */ stb r6, 0x1e4(r31)
/* 801FEBBC 001FBAFC  38 A0 00 9B */ li r5, 0x9b
/* 801FEBC0 001FBB00  98 BF 01 E5 */ stb r5, 0x1e5(r31)
/* 801FEBC4 001FBB04  98 DF 01 E6 */ stb r6, 0x1e6(r31)
/* 801FEBC8 001FBB08  98 DF 01 E7 */ stb r6, 0x1e7(r31)
/* 801FEBCC 001FBB0C  99 1F 01 E8 */ stb r8, 0x1e8(r31)
/* 801FEBD0 001FBB10  99 1F 01 E9 */ stb r8, 0x1e9(r31)
/* 801FEBD4 001FBB14  99 1F 01 EA */ stb r8, 0x1ea(r31)
/* 801FEBD8 001FBB18  38 80 00 57 */ li r4, 0x57
/* 801FEBDC 001FBB1C  98 9F 01 EB */ stb r4, 0x1eb(r31)
/* 801FEBE0 001FBB20  98 DF 01 EC */ stb r6, 0x1ec(r31)
/* 801FEBE4 001FBB24  38 60 00 73 */ li r3, 0x73
/* 801FEBE8 001FBB28  98 7F 01 ED */ stb r3, 0x1ed(r31)
/* 801FEBEC 001FBB2C  98 DF 01 EE */ stb r6, 0x1ee(r31)
/* 801FEBF0 001FBB30  98 DF 01 EF */ stb r6, 0x1ef(r31)
/* 801FEBF4 001FBB34  C0 02 AB 74 */ lfs f0, lbl_80454574-_SDA2_BASE_(r2)
/* 801FEBF8 001FBB38  D0 1F 01 F0 */ stfs f0, 0x1f0(r31)
/* 801FEBFC 001FBB3C  C0 02 AB 78 */ lfs f0, lbl_80454578-_SDA2_BASE_(r2)
/* 801FEC00 001FBB40  D0 1F 01 F4 */ stfs f0, 0x1f4(r31)
/* 801FEC04 001FBB44  99 1F 01 F8 */ stb r8, 0x1f8(r31)
/* 801FEC08 001FBB48  99 1F 01 F9 */ stb r8, 0x1f9(r31)
/* 801FEC0C 001FBB4C  99 1F 01 FA */ stb r8, 0x1fa(r31)
/* 801FEC10 001FBB50  99 1F 01 FB */ stb r8, 0x1fb(r31)
/* 801FEC14 001FBB54  38 00 00 DC */ li r0, 0xdc
/* 801FEC18 001FBB58  98 1F 01 FC */ stb r0, 0x1fc(r31)
/* 801FEC1C 001FBB5C  98 1F 01 FD */ stb r0, 0x1fd(r31)
/* 801FEC20 001FBB60  38 00 00 D7 */ li r0, 0xd7
/* 801FEC24 001FBB64  98 1F 01 FE */ stb r0, 0x1fe(r31)
/* 801FEC28 001FBB68  98 DF 01 FF */ stb r6, 0x1ff(r31)
/* 801FEC2C 001FBB6C  99 1F 02 00 */ stb r8, 0x200(r31)
/* 801FEC30 001FBB70  99 1F 02 01 */ stb r8, 0x201(r31)
/* 801FEC34 001FBB74  38 00 00 BE */ li r0, 0xbe
/* 801FEC38 001FBB78  98 1F 02 02 */ stb r0, 0x202(r31)
/* 801FEC3C 001FBB7C  99 1F 02 03 */ stb r8, 0x203(r31)
/* 801FEC40 001FBB80  38 00 00 C8 */ li r0, 0xc8
/* 801FEC44 001FBB84  98 1F 02 04 */ stb r0, 0x204(r31)
/* 801FEC48 001FBB88  98 1F 02 05 */ stb r0, 0x205(r31)
/* 801FEC4C 001FBB8C  38 00 00 D2 */ li r0, 0xd2
/* 801FEC50 001FBB90  98 1F 02 06 */ stb r0, 0x206(r31)
/* 801FEC54 001FBB94  98 DF 02 07 */ stb r6, 0x207(r31)
/* 801FEC58 001FBB98  C0 02 AB 7C */ lfs f0, lbl_8045457C-_SDA2_BASE_(r2)
/* 801FEC5C 001FBB9C  D0 1F 02 08 */ stfs f0, 0x208(r31)
/* 801FEC60 001FBBA0  C0 02 AA E0 */ lfs f0, lbl_804544E0-_SDA2_BASE_(r2)
/* 801FEC64 001FBBA4  D0 1F 02 0C */ stfs f0, 0x20c(r31)
/* 801FEC68 001FBBA8  99 1F 02 10 */ stb r8, 0x210(r31)
/* 801FEC6C 001FBBAC  99 1F 02 11 */ stb r8, 0x211(r31)
/* 801FEC70 001FBBB0  99 1F 02 12 */ stb r8, 0x212(r31)
/* 801FEC74 001FBBB4  98 FF 02 13 */ stb r7, 0x213(r31)
/* 801FEC78 001FBBB8  98 DF 02 14 */ stb r6, 0x214(r31)
/* 801FEC7C 001FBBBC  98 BF 02 15 */ stb r5, 0x215(r31)
/* 801FEC80 001FBBC0  98 DF 02 16 */ stb r6, 0x216(r31)
/* 801FEC84 001FBBC4  98 DF 02 17 */ stb r6, 0x217(r31)
/* 801FEC88 001FBBC8  99 1F 02 18 */ stb r8, 0x218(r31)
/* 801FEC8C 001FBBCC  99 1F 02 19 */ stb r8, 0x219(r31)
/* 801FEC90 001FBBD0  99 1F 02 1A */ stb r8, 0x21a(r31)
/* 801FEC94 001FBBD4  98 9F 02 1B */ stb r4, 0x21b(r31)
/* 801FEC98 001FBBD8  98 DF 02 1C */ stb r6, 0x21c(r31)
/* 801FEC9C 001FBBDC  98 7F 02 1D */ stb r3, 0x21d(r31)
/* 801FECA0 001FBBE0  98 DF 02 1E */ stb r6, 0x21e(r31)
/* 801FECA4 001FBBE4  98 DF 02 1F */ stb r6, 0x21f(r31)
/* 801FECA8 001FBBE8  C0 02 AB 28 */ lfs f0, lbl_80454528-_SDA2_BASE_(r2)
/* 801FECAC 001FBBEC  D0 1F 02 20 */ stfs f0, 0x220(r31)
/* 801FECB0 001FBBF0  D0 3F 02 24 */ stfs f1, 0x224(r31)
/* 801FECB4 001FBBF4  99 1F 02 28 */ stb r8, 0x228(r31)
/* 801FECB8 001FBBF8  99 1F 02 29 */ stb r8, 0x229(r31)
/* 801FECBC 001FBBFC  99 1F 02 2A */ stb r8, 0x22a(r31)
/* 801FECC0 001FBC00  98 FF 02 2B */ stb r7, 0x22b(r31)
/* 801FECC4 001FBC04  98 DF 02 2C */ stb r6, 0x22c(r31)
/* 801FECC8 001FBC08  98 BF 02 2D */ stb r5, 0x22d(r31)
/* 801FECCC 001FBC0C  98 DF 02 2E */ stb r6, 0x22e(r31)
/* 801FECD0 001FBC10  98 DF 02 2F */ stb r6, 0x22f(r31)
/* 801FECD4 001FBC14  99 1F 02 30 */ stb r8, 0x230(r31)
/* 801FECD8 001FBC18  99 1F 02 31 */ stb r8, 0x231(r31)
/* 801FECDC 001FBC1C  99 1F 02 32 */ stb r8, 0x232(r31)
/* 801FECE0 001FBC20  98 9F 02 33 */ stb r4, 0x233(r31)
/* 801FECE4 001FBC24  98 DF 02 34 */ stb r6, 0x234(r31)
/* 801FECE8 001FBC28  98 7F 02 35 */ stb r3, 0x235(r31)
/* 801FECEC 001FBC2C  98 DF 02 36 */ stb r6, 0x236(r31)
/* 801FECF0 001FBC30  98 DF 02 37 */ stb r6, 0x237(r31)
/* 801FECF4 001FBC34  C0 02 AA E8 */ lfs f0, lbl_804544E8-_SDA2_BASE_(r2)
/* 801FECF8 001FBC38  D0 1F 02 38 */ stfs f0, 0x238(r31)
/* 801FECFC 001FBC3C  C0 02 AB 80 */ lfs f0, lbl_80454580-_SDA2_BASE_(r2)
/* 801FED00 001FBC40  D0 1F 02 3C */ stfs f0, 0x23c(r31)
/* 801FED04 001FBC44  38 00 00 04 */ li r0, 4
/* 801FED08 001FBC48  B0 1F 02 40 */ sth r0, 0x240(r31)
/* 801FED0C 001FBC4C  38 00 00 11 */ li r0, 0x11
/* 801FED10 001FBC50  7C 09 03 A6 */ mtctr r0
lbl_801FED14:
/* 801FED14 001FBC54  98 DF 02 48 */ stb r6, 0x248(r31)
/* 801FED18 001FBC58  42 00 FF FC */ bdnz lbl_801FED14
/* 801FED1C 001FBC5C  C0 02 AB 84 */ lfs f0, lbl_80454584-_SDA2_BASE_(r2)
/* 801FED20 001FBC60  D0 1F 02 44 */ stfs f0, 0x244(r31)
/* 801FED24 001FBC64  C0 42 AA F8 */ lfs f2, lbl_804544F8-_SDA2_BASE_(r2)
/* 801FED28 001FBC68  D0 5F 00 08 */ stfs f2, 8(r31)
/* 801FED2C 001FBC6C  C0 02 AB 88 */ lfs f0, lbl_80454588-_SDA2_BASE_(r2)
/* 801FED30 001FBC70  D0 1F 00 0C */ stfs f0, 0xc(r31)
/* 801FED34 001FBC74  C0 22 AA E0 */ lfs f1, lbl_804544E0-_SDA2_BASE_(r2)
/* 801FED38 001FBC78  D0 3F 00 10 */ stfs f1, 0x10(r31)
/* 801FED3C 001FBC7C  D0 5F 00 14 */ stfs f2, 0x14(r31)
/* 801FED40 001FBC80  D0 5F 00 18 */ stfs f2, 0x18(r31)
/* 801FED44 001FBC84  D0 3F 00 1C */ stfs f1, 0x1c(r31)
/* 801FED48 001FBC88  D0 5F 00 20 */ stfs f2, 0x20(r31)
/* 801FED4C 001FBC8C  D0 5F 00 24 */ stfs f2, 0x24(r31)
/* 801FED50 001FBC90  D0 3F 00 28 */ stfs f1, 0x28(r31)
/* 801FED54 001FBC94  D0 5F 00 2C */ stfs f2, 0x2c(r31)
/* 801FED58 001FBC98  D0 5F 00 30 */ stfs f2, 0x30(r31)
/* 801FED5C 001FBC9C  D0 3F 00 34 */ stfs f1, 0x34(r31)
/* 801FED60 001FBCA0  D0 5F 00 38 */ stfs f2, 0x38(r31)
/* 801FED64 001FBCA4  D0 5F 00 3C */ stfs f2, 0x3c(r31)
/* 801FED68 001FBCA8  D0 3F 00 40 */ stfs f1, 0x40(r31)
/* 801FED6C 001FBCAC  D0 5F 00 44 */ stfs f2, 0x44(r31)
/* 801FED70 001FBCB0  D0 5F 00 48 */ stfs f2, 0x48(r31)
/* 801FED74 001FBCB4  D0 3F 00 4C */ stfs f1, 0x4c(r31)
/* 801FED78 001FBCB8  D0 5F 00 50 */ stfs f2, 0x50(r31)
/* 801FED7C 001FBCBC  D0 5F 00 54 */ stfs f2, 0x54(r31)
/* 801FED80 001FBCC0  D0 3F 00 58 */ stfs f1, 0x58(r31)
/* 801FED84 001FBCC4  D0 5F 00 5C */ stfs f2, 0x5c(r31)
/* 801FED88 001FBCC8  C0 02 AB 8C */ lfs f0, lbl_8045458C-_SDA2_BASE_(r2)
/* 801FED8C 001FBCCC  D0 1F 00 60 */ stfs f0, 0x60(r31)
/* 801FED90 001FBCD0  C0 02 AB 04 */ lfs f0, lbl_80454504-_SDA2_BASE_(r2)
/* 801FED94 001FBCD4  D0 1F 00 64 */ stfs f0, 0x64(r31)
/* 801FED98 001FBCD8  D0 5F 00 68 */ stfs f2, 0x68(r31)
/* 801FED9C 001FBCDC  D0 5F 00 6C */ stfs f2, 0x6c(r31)
/* 801FEDA0 001FBCE0  D0 3F 00 70 */ stfs f1, 0x70(r31)
/* 801FEDA4 001FBCE4  D0 5F 00 74 */ stfs f2, 0x74(r31)
/* 801FEDA8 001FBCE8  D0 5F 00 78 */ stfs f2, 0x78(r31)
/* 801FEDAC 001FBCEC  D0 3F 00 7C */ stfs f1, 0x7c(r31)
/* 801FEDB0 001FBCF0  D0 5F 00 80 */ stfs f2, 0x80(r31)
/* 801FEDB4 001FBCF4  D0 5F 00 84 */ stfs f2, 0x84(r31)
/* 801FEDB8 001FBCF8  D0 3F 00 88 */ stfs f1, 0x88(r31)
/* 801FEDBC 001FBCFC  D0 5F 00 8C */ stfs f2, 0x8c(r31)
/* 801FEDC0 001FBD00  D0 5F 00 90 */ stfs f2, 0x90(r31)
/* 801FEDC4 001FBD04  D0 3F 00 94 */ stfs f1, 0x94(r31)
/* 801FEDC8 001FBD08  D0 5F 00 98 */ stfs f2, 0x98(r31)
/* 801FEDCC 001FBD0C  D0 5F 00 9C */ stfs f2, 0x9c(r31)
/* 801FEDD0 001FBD10  D0 3F 00 A0 */ stfs f1, 0xa0(r31)
/* 801FEDD4 001FBD14  D0 5F 00 BC */ stfs f2, 0xbc(r31)
/* 801FEDD8 001FBD18  D0 5F 00 C0 */ stfs f2, 0xc0(r31)
/* 801FEDDC 001FBD1C  D0 3F 00 C4 */ stfs f1, 0xc4(r31)
/* 801FEDE0 001FBD20  D0 5F 00 C8 */ stfs f2, 0xc8(r31)
/* 801FEDE4 001FBD24  D0 5F 00 CC */ stfs f2, 0xcc(r31)
/* 801FEDE8 001FBD28  D0 3F 00 D0 */ stfs f1, 0xd0(r31)
/* 801FEDEC 001FBD2C  D0 5F 00 D4 */ stfs f2, 0xd4(r31)
/* 801FEDF0 001FBD30  D0 5F 00 D8 */ stfs f2, 0xd8(r31)
/* 801FEDF4 001FBD34  D0 3F 00 DC */ stfs f1, 0xdc(r31)
/* 801FEDF8 001FBD38  D0 5F 00 E0 */ stfs f2, 0xe0(r31)
/* 801FEDFC 001FBD3C  D0 5F 00 E4 */ stfs f2, 0xe4(r31)
/* 801FEE00 001FBD40  D0 3F 00 E8 */ stfs f1, 0xe8(r31)
/* 801FEE04 001FBD44  D0 5F 00 EC */ stfs f2, 0xec(r31)
/* 801FEE08 001FBD48  D0 5F 00 F0 */ stfs f2, 0xf0(r31)
/* 801FEE0C 001FBD4C  D0 3F 00 F4 */ stfs f1, 0xf4(r31)
/* 801FEE10 001FBD50  D0 5F 00 F8 */ stfs f2, 0xf8(r31)
/* 801FEE14 001FBD54  D0 5F 00 FC */ stfs f2, 0xfc(r31)
/* 801FEE18 001FBD58  D0 3F 01 00 */ stfs f1, 0x100(r31)
/* 801FEE1C 001FBD5C  D0 5F 01 04 */ stfs f2, 0x104(r31)
/* 801FEE20 001FBD60  D0 5F 01 08 */ stfs f2, 0x108(r31)
/* 801FEE24 001FBD64  D0 3F 01 0C */ stfs f1, 0x10c(r31)
/* 801FEE28 001FBD68  D0 5F 00 A4 */ stfs f2, 0xa4(r31)
/* 801FEE2C 001FBD6C  D0 5F 00 A8 */ stfs f2, 0xa8(r31)
/* 801FEE30 001FBD70  D0 3F 00 AC */ stfs f1, 0xac(r31)
/* 801FEE34 001FBD74  D0 5F 00 B0 */ stfs f2, 0xb0(r31)
/* 801FEE38 001FBD78  D0 5F 00 B4 */ stfs f2, 0xb4(r31)
/* 801FEE3C 001FBD7C  D0 3F 00 B8 */ stfs f1, 0xb8(r31)
/* 801FEE40 001FBD80  D0 5F 01 10 */ stfs f2, 0x110(r31)
/* 801FEE44 001FBD84  D0 5F 01 14 */ stfs f2, 0x114(r31)
/* 801FEE48 001FBD88  D0 3F 01 18 */ stfs f1, 0x118(r31)
/* 801FEE4C 001FBD8C  C0 02 AB 90 */ lfs f0, lbl_80454590-_SDA2_BASE_(r2)
/* 801FEE50 001FBD90  D0 1F 01 1C */ stfs f0, 0x11c(r31)
/* 801FEE54 001FBD94  C0 02 AB 94 */ lfs f0, lbl_80454594-_SDA2_BASE_(r2)
/* 801FEE58 001FBD98  D0 1F 01 20 */ stfs f0, 0x120(r31)
/* 801FEE5C 001FBD9C  D0 3F 01 24 */ stfs f1, 0x124(r31)
/* 801FEE60 001FBDA0  C0 02 AB 7C */ lfs f0, lbl_8045457C-_SDA2_BASE_(r2)
/* 801FEE64 001FBDA4  D0 1F 01 2C */ stfs f0, 0x12c(r31)
/* 801FEE68 001FBDA8  D0 1F 01 28 */ stfs f0, 0x128(r31)
/* 801FEE6C 001FBDAC  C0 02 AB 78 */ lfs f0, lbl_80454578-_SDA2_BASE_(r2)
/* 801FEE70 001FBDB0  D0 1F 01 34 */ stfs f0, 0x134(r31)
/* 801FEE74 001FBDB4  D0 1F 01 30 */ stfs f0, 0x130(r31)
/* 801FEE78 001FBDB8  D0 3F 01 3C */ stfs f1, 0x13c(r31)
/* 801FEE7C 001FBDBC  D0 3F 01 38 */ stfs f1, 0x138(r31)
/* 801FEE80 001FBDC0  C0 02 AB 98 */ lfs f0, lbl_80454598-_SDA2_BASE_(r2)
/* 801FEE84 001FBDC4  D0 1F 01 40 */ stfs f0, 0x140(r31)
/* 801FEE88 001FBDC8  D0 5F 01 44 */ stfs f2, 0x144(r31)
/* 801FEE8C 001FBDCC  D0 3F 01 48 */ stfs f1, 0x148(r31)
/* 801FEE90 001FBDD0  D0 5F 01 4C */ stfs f2, 0x14c(r31)
/* 801FEE94 001FBDD4  D0 5F 01 50 */ stfs f2, 0x150(r31)
/* 801FEE98 001FBDD8  D0 3F 01 54 */ stfs f1, 0x154(r31)
/* 801FEE9C 001FBDDC  38 60 00 00 */ li r3, 0
/* 801FEEA0 001FBDE0  98 7F 02 59 */ stb r3, 0x259(r31)
/* 801FEEA4 001FBDE4  D0 5F 01 58 */ stfs f2, 0x158(r31)
/* 801FEEA8 001FBDE8  D0 5F 01 5C */ stfs f2, 0x15c(r31)
/* 801FEEAC 001FBDEC  38 00 00 03 */ li r0, 3
/* 801FEEB0 001FBDF0  7C 09 03 A6 */ mtctr r0
lbl_801FEEB4:
/* 801FEEB4 001FBDF4  38 03 01 6C */ addi r0, r3, 0x16c
/* 801FEEB8 001FBDF8  7C 5F 05 2E */ stfsx f2, r31, r0
/* 801FEEBC 001FBDFC  38 63 00 04 */ addi r3, r3, 4
/* 801FEEC0 001FBE00  42 00 FF F4 */ bdnz lbl_801FEEB4
/* 801FEEC4 001FBE04  C0 22 AA F8 */ lfs f1, lbl_804544F8-_SDA2_BASE_(r2)
/* 801FEEC8 001FBE08  D0 3F 01 60 */ stfs f1, 0x160(r31)
/* 801FEECC 001FBE0C  C0 02 AB 9C */ lfs f0, lbl_8045459C-_SDA2_BASE_(r2)
/* 801FEED0 001FBE10  D0 1F 01 64 */ stfs f0, 0x164(r31)
/* 801FEED4 001FBE14  C0 02 AB A0 */ lfs f0, lbl_804545A0-_SDA2_BASE_(r2)
/* 801FEED8 001FBE18  D0 1F 01 68 */ stfs f0, 0x168(r31)
/* 801FEEDC 001FBE1C  38 00 00 00 */ li r0, 0
/* 801FEEE0 001FBE20  98 1F 02 5A */ stb r0, 0x25a(r31)
/* 801FEEE4 001FBE24  D0 3F 01 78 */ stfs f1, 0x178(r31)
/* 801FEEE8 001FBE28  C0 02 AB 10 */ lfs f0, lbl_80454510-_SDA2_BASE_(r2)
/* 801FEEEC 001FBE2C  D0 1F 01 7C */ stfs f0, 0x17c(r31)
/* 801FEEF0 001FBE30  C0 02 AA F4 */ lfs f0, lbl_804544F4-_SDA2_BASE_(r2)
/* 801FEEF4 001FBE34  D0 1F 01 80 */ stfs f0, 0x180(r31)
/* 801FEEF8 001FBE38  C0 02 AB 04 */ lfs f0, lbl_80454504-_SDA2_BASE_(r2)
/* 801FEEFC 001FBE3C  D0 1F 01 84 */ stfs f0, 0x184(r31)
/* 801FEF00 001FBE40  38 60 00 00 */ li r3, 0
/* 801FEF04 001FBE44  C0 02 AA E0 */ lfs f0, lbl_804544E0-_SDA2_BASE_(r2)
/* 801FEF08 001FBE48  38 00 00 03 */ li r0, 3
/* 801FEF0C 001FBE4C  7C 09 03 A6 */ mtctr r0
lbl_801FEF10:
/* 801FEF10 001FBE50  7C 9F 1A 14 */ add r4, r31, r3
/* 801FEF14 001FBE54  D0 24 01 88 */ stfs f1, 0x188(r4)
/* 801FEF18 001FBE58  D0 04 01 AC */ stfs f0, 0x1ac(r4)
/* 801FEF1C 001FBE5C  38 63 00 04 */ addi r3, r3, 4
/* 801FEF20 001FBE60  42 00 FF F0 */ bdnz lbl_801FEF10
/* 801FEF24 001FBE64  C0 02 AB A4 */ lfs f0, lbl_804545A4-_SDA2_BASE_(r2)
/* 801FEF28 001FBE68  D0 1F 01 A0 */ stfs f0, 0x1a0(r31)
/* 801FEF2C 001FBE6C  C0 42 AB A8 */ lfs f2, lbl_804545A8-_SDA2_BASE_(r2)
/* 801FEF30 001FBE70  D0 5F 01 A4 */ stfs f2, 0x1a4(r31)
/* 801FEF34 001FBE74  C0 22 AA F8 */ lfs f1, lbl_804544F8-_SDA2_BASE_(r2)
/* 801FEF38 001FBE78  D0 3F 01 A8 */ stfs f1, 0x1a8(r31)
/* 801FEF3C 001FBE7C  C0 02 AB 98 */ lfs f0, lbl_80454598-_SDA2_BASE_(r2)
/* 801FEF40 001FBE80  D0 1F 01 94 */ stfs f0, 0x194(r31)
/* 801FEF44 001FBE84  D0 5F 01 98 */ stfs f2, 0x198(r31)
/* 801FEF48 001FBE88  D0 3F 01 9C */ stfs f1, 0x19c(r31)
/* 801FEF4C 001FBE8C  38 00 00 C8 */ li r0, 0xc8
/* 801FEF50 001FBE90  98 1F 01 B8 */ stb r0, 0x1b8(r31)
/* 801FEF54 001FBE94  98 1F 01 B9 */ stb r0, 0x1b9(r31)
/* 801FEF58 001FBE98  98 1F 01 BA */ stb r0, 0x1ba(r31)
/* 801FEF5C 001FBE9C  38 A0 00 00 */ li r5, 0
/* 801FEF60 001FBEA0  98 BF 01 BB */ stb r5, 0x1bb(r31)
/* 801FEF64 001FBEA4  38 80 00 FF */ li r4, 0xff
/* 801FEF68 001FBEA8  98 9F 01 C0 */ stb r4, 0x1c0(r31)
/* 801FEF6C 001FBEAC  98 9F 01 C1 */ stb r4, 0x1c1(r31)
/* 801FEF70 001FBEB0  98 BF 01 C2 */ stb r5, 0x1c2(r31)
/* 801FEF74 001FBEB4  98 9F 01 C3 */ stb r4, 0x1c3(r31)
/* 801FEF78 001FBEB8  98 9F 01 BC */ stb r4, 0x1bc(r31)
/* 801FEF7C 001FBEBC  38 60 00 91 */ li r3, 0x91
/* 801FEF80 001FBEC0  98 7F 01 BD */ stb r3, 0x1bd(r31)
/* 801FEF84 001FBEC4  38 00 00 64 */ li r0, 0x64
/* 801FEF88 001FBEC8  98 1F 01 BE */ stb r0, 0x1be(r31)
/* 801FEF8C 001FBECC  98 BF 01 BF */ stb r5, 0x1bf(r31)
/* 801FEF90 001FBED0  98 9F 01 C4 */ stb r4, 0x1c4(r31)
/* 801FEF94 001FBED4  98 7F 01 C5 */ stb r3, 0x1c5(r31)
/* 801FEF98 001FBED8  98 1F 01 C6 */ stb r0, 0x1c6(r31)
/* 801FEF9C 001FBEDC  98 9F 01 C7 */ stb r4, 0x1c7(r31)
/* 801FEFA0 001FBEE0  98 BF 01 C8 */ stb r5, 0x1c8(r31)
/* 801FEFA4 001FBEE4  98 BF 01 C9 */ stb r5, 0x1c9(r31)
/* 801FEFA8 001FBEE8  98 BF 01 CA */ stb r5, 0x1ca(r31)
/* 801FEFAC 001FBEEC  98 BF 01 CB */ stb r5, 0x1cb(r31)
/* 801FEFB0 001FBEF0  98 BF 01 CC */ stb r5, 0x1cc(r31)
/* 801FEFB4 001FBEF4  98 BF 01 CD */ stb r5, 0x1cd(r31)
/* 801FEFB8 001FBEF8  98 BF 01 CE */ stb r5, 0x1ce(r31)
/* 801FEFBC 001FBEFC  98 BF 01 CF */ stb r5, 0x1cf(r31)
/* 801FEFC0 001FBF00  C0 02 AA E8 */ lfs f0, lbl_804544E8-_SDA2_BASE_(r2)
/* 801FEFC4 001FBF04  D0 1F 01 D0 */ stfs f0, 0x1d0(r31)
/* 801FEFC8 001FBF08  C0 02 AB 04 */ lfs f0, lbl_80454504-_SDA2_BASE_(r2)
/* 801FEFCC 001FBF0C  D0 1F 01 D4 */ stfs f0, 0x1d4(r31)
/* 801FEFD0 001FBF10  38 00 00 1E */ li r0, 0x1e
/* 801FEFD4 001FBF14  B0 1F 01 D8 */ sth r0, 0x1d8(r31)
/* 801FEFD8 001FBF18  7F E3 FB 78 */ mr r3, r31
/* 801FEFDC 001FBF1C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801FEFE0 001FBF20  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801FEFE4 001FBF24  7C 08 03 A6 */ mtlr r0
/* 801FEFE8 001FBF28  38 21 00 10 */ addi r1, r1, 0x10
/* 801FEFEC 001FBF2C  4E 80 00 20 */ blr
