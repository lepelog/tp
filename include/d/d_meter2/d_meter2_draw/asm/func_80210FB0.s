/* 80210FB0 0020DEF0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80210FB4 0020DEF4  7C 08 02 A6 */ mflr r0
/* 80210FB8 0020DEF8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80210FBC 0020DEFC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80210FC0 0020DF00  7C 7F 1B 78 */ mr r31, r3
/* 80210FC4 0020DF04  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 80210FC8 0020DF08  D0 03 06 08 */ stfs f0, 0x608(r3)
/* 80210FCC 0020DF0C  D0 03 06 0C */ stfs f0, 0x60c(r3)
/* 80210FD0 0020DF10  38 60 00 00 */ li r3, 0
/* 80210FD4 0020DF14  38 00 00 03 */ li r0, 3
/* 80210FD8 0020DF18  7C 09 03 A6 */ mtctr r0
lbl_80210FDC:
/* 80210FDC 0020DF1C  7C 9F 1A 14 */ add r4, r31, r3
/* 80210FE0 0020DF20  D0 04 06 20 */ stfs f0, 0x620(r4)
/* 80210FE4 0020DF24  D0 04 06 10 */ stfs f0, 0x610(r4)
/* 80210FE8 0020DF28  38 63 00 04 */ addi r3, r3, 4
/* 80210FEC 0020DF2C  42 00 FF F0 */ bdnz lbl_80210FDC
/* 80210FF0 0020DF30  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 80210FF4 0020DF34  D0 1F 06 1C */ stfs f0, 0x61c(r31)
/* 80210FF8 0020DF38  38 60 00 00 */ li r3, 0
/* 80210FFC 0020DF3C  38 00 00 10 */ li r0, 0x10
/* 80211000 0020DF40  7C 09 03 A6 */ mtctr r0
lbl_80211004:
/* 80211004 0020DF44  7C 9F 1A 14 */ add r4, r31, r3
/* 80211008 0020DF48  D0 04 06 2C */ stfs f0, 0x62c(r4)
/* 8021100C 0020DF4C  D0 04 06 6C */ stfs f0, 0x66c(r4)
/* 80211010 0020DF50  38 63 00 04 */ addi r3, r3, 4
/* 80211014 0020DF54  42 00 FF F0 */ bdnz lbl_80211004
/* 80211018 0020DF58  38 60 00 00 */ li r3, 0
/* 8021101C 0020DF5C  98 7F 07 59 */ stb r3, 0x759(r31)
/* 80211020 0020DF60  98 7F 07 5A */ stb r3, 0x75a(r31)
/* 80211024 0020DF64  38 80 00 00 */ li r4, 0
/* 80211028 0020DF68  38 00 00 03 */ li r0, 3
/* 8021102C 0020DF6C  7C 09 03 A6 */ mtctr r0
lbl_80211030:
/* 80211030 0020DF70  38 04 07 5C */ addi r0, r4, 0x75c
/* 80211034 0020DF74  7C 7F 01 AE */ stbx r3, r31, r0
/* 80211038 0020DF78  38 84 00 01 */ addi r4, r4, 1
/* 8021103C 0020DF7C  42 00 FF F4 */ bdnz lbl_80211030
/* 80211040 0020DF80  38 60 00 00 */ li r3, 0
/* 80211044 0020DF84  98 7F 07 5F */ stb r3, 0x75f(r31)
/* 80211048 0020DF88  38 00 FF FF */ li r0, -1
/* 8021104C 0020DF8C  B0 1F 07 56 */ sth r0, 0x756(r31)
/* 80211050 0020DF90  98 7F 07 60 */ stb r3, 0x760(r31)
/* 80211054 0020DF94  38 60 00 00 */ li r3, 0
/* 80211058 0020DF98  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 8021105C 0020DF9C  38 00 00 03 */ li r0, 3
/* 80211060 0020DFA0  7C 09 03 A6 */ mtctr r0
lbl_80211064:
/* 80211064 0020DFA4  7C 9F 1A 14 */ add r4, r31, r3
/* 80211068 0020DFA8  D0 04 06 AC */ stfs f0, 0x6ac(r4)
/* 8021106C 0020DFAC  D0 04 06 B8 */ stfs f0, 0x6b8(r4)
/* 80211070 0020DFB0  D0 04 06 C4 */ stfs f0, 0x6c4(r4)
/* 80211074 0020DFB4  D0 04 06 D0 */ stfs f0, 0x6d0(r4)
/* 80211078 0020DFB8  38 63 00 04 */ addi r3, r3, 4
/* 8021107C 0020DFBC  42 00 FF E8 */ bdnz lbl_80211064
/* 80211080 0020DFC0  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80211084 0020DFC4  D0 3F 06 DC */ stfs f1, 0x6dc(r31)
/* 80211088 0020DFC8  D0 3F 06 E0 */ stfs f1, 0x6e0(r31)
/* 8021108C 0020DFCC  D0 3F 06 E4 */ stfs f1, 0x6e4(r31)
/* 80211090 0020DFD0  D0 3F 06 E8 */ stfs f1, 0x6e8(r31)
/* 80211094 0020DFD4  D0 3F 06 EC */ stfs f1, 0x6ec(r31)
/* 80211098 0020DFD8  D0 3F 06 F0 */ stfs f1, 0x6f0(r31)
/* 8021109C 0020DFDC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802110A0 0020DFE0  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 802110A4 0020DFE4  C0 04 00 14 */ lfs f0, 0x14(r4)
/* 802110A8 0020DFE8  D0 1F 07 78 */ stfs f0, 0x778(r31)
/* 802110AC 0020DFEC  C0 04 00 18 */ lfs f0, 0x18(r4)
/* 802110B0 0020DFF0  D0 1F 07 7C */ stfs f0, 0x77c(r31)
/* 802110B4 0020DFF4  D0 3F 07 80 */ stfs f1, 0x780(r31)
/* 802110B8 0020DFF8  D0 3F 07 84 */ stfs f1, 0x784(r31)
/* 802110BC 0020DFFC  C0 02 AE 84 */ lfs f0, lbl_80454884-_SDA2_BASE_(r2)
/* 802110C0 0020E000  D0 1F 07 88 */ stfs f0, 0x788(r31)
/* 802110C4 0020E004  C0 04 00 9C */ lfs f0, 0x9c(r4)
/* 802110C8 0020E008  D0 1F 07 8C */ stfs f0, 0x78c(r31)
/* 802110CC 0020E00C  D0 3F 07 90 */ stfs f1, 0x790(r31)
/* 802110D0 0020E010  C0 04 00 20 */ lfs f0, 0x20(r4)
/* 802110D4 0020E014  D0 1F 07 94 */ stfs f0, 0x794(r31)
/* 802110D8 0020E018  C0 04 00 24 */ lfs f0, 0x24(r4)
/* 802110DC 0020E01C  D0 1F 07 98 */ stfs f0, 0x798(r31)
/* 802110E0 0020E020  C0 04 00 34 */ lfs f0, 0x34(r4)
/* 802110E4 0020E024  D0 1F 07 9C */ stfs f0, 0x79c(r31)
/* 802110E8 0020E028  C0 04 00 3C */ lfs f0, 0x3c(r4)
/* 802110EC 0020E02C  D0 1F 07 A0 */ stfs f0, 0x7a0(r31)
/* 802110F0 0020E030  D0 3F 07 A4 */ stfs f1, 0x7a4(r31)
/* 802110F4 0020E034  C0 04 00 44 */ lfs f0, 0x44(r4)
/* 802110F8 0020E038  D0 1F 07 A8 */ stfs f0, 0x7a8(r31)
/* 802110FC 0020E03C  C0 04 00 48 */ lfs f0, 0x48(r4)
/* 80211100 0020E040  D0 1F 07 AC */ stfs f0, 0x7ac(r31)
/* 80211104 0020E044  D0 3F 07 B0 */ stfs f1, 0x7b0(r31)
/* 80211108 0020E048  C0 04 00 58 */ lfs f0, 0x58(r4)
/* 8021110C 0020E04C  D0 1F 07 B4 */ stfs f0, 0x7b4(r31)
/* 80211110 0020E050  C0 04 00 5C */ lfs f0, 0x5c(r4)
/* 80211114 0020E054  D0 1F 07 B8 */ stfs f0, 0x7b8(r31)
/* 80211118 0020E058  D0 3F 07 BC */ stfs f1, 0x7bc(r31)
/* 8021111C 0020E05C  C0 04 00 6C */ lfs f0, 0x6c(r4)
/* 80211120 0020E060  D0 1F 07 C0 */ stfs f0, 0x7c0(r31)
/* 80211124 0020E064  C0 04 00 70 */ lfs f0, 0x70(r4)
/* 80211128 0020E068  D0 1F 07 C4 */ stfs f0, 0x7c4(r31)
/* 8021112C 0020E06C  D0 3F 07 C8 */ stfs f1, 0x7c8(r31)
/* 80211130 0020E070  38 00 00 00 */ li r0, 0
/* 80211134 0020E074  98 1F 08 61 */ stb r0, 0x861(r31)
/* 80211138 0020E078  98 1F 08 60 */ stb r0, 0x860(r31)
/* 8021113C 0020E07C  C0 04 00 18 */ lfs f0, 0x18(r4)
/* 80211140 0020E080  D0 1F 07 CC */ stfs f0, 0x7cc(r31)
/* 80211144 0020E084  C0 04 03 48 */ lfs f0, 0x348(r4)
/* 80211148 0020E088  D0 1F 07 D0 */ stfs f0, 0x7d0(r31)
/* 8021114C 0020E08C  C0 04 03 58 */ lfs f0, 0x358(r4)
/* 80211150 0020E090  D0 1F 07 D4 */ stfs f0, 0x7d4(r31)
/* 80211154 0020E094  C0 04 03 78 */ lfs f0, 0x378(r4)
/* 80211158 0020E098  D0 1F 07 D8 */ stfs f0, 0x7d8(r31)
/* 8021115C 0020E09C  C0 04 03 88 */ lfs f0, 0x388(r4)
/* 80211160 0020E0A0  D0 1F 07 DC */ stfs f0, 0x7dc(r31)
/* 80211164 0020E0A4  C0 04 00 18 */ lfs f0, 0x18(r4)
/* 80211168 0020E0A8  D0 1F 07 E0 */ stfs f0, 0x7e0(r31)
/* 8021116C 0020E0AC  C0 04 03 48 */ lfs f0, 0x348(r4)
/* 80211170 0020E0B0  D0 1F 07 E4 */ stfs f0, 0x7e4(r31)
/* 80211174 0020E0B4  C0 04 03 68 */ lfs f0, 0x368(r4)
/* 80211178 0020E0B8  D0 1F 07 E8 */ stfs f0, 0x7e8(r31)
/* 8021117C 0020E0BC  C0 04 03 98 */ lfs f0, 0x398(r4)
/* 80211180 0020E0C0  D0 1F 07 EC */ stfs f0, 0x7ec(r31)
/* 80211184 0020E0C4  C0 04 00 18 */ lfs f0, 0x18(r4)
/* 80211188 0020E0C8  D0 1F 07 F0 */ stfs f0, 0x7f0(r31)
/* 8021118C 0020E0CC  C0 04 00 84 */ lfs f0, 0x84(r4)
/* 80211190 0020E0D0  D0 1F 07 F4 */ stfs f0, 0x7f4(r31)
/* 80211194 0020E0D4  C0 04 00 A0 */ lfs f0, 0xa0(r4)
/* 80211198 0020E0D8  D0 1F 07 F8 */ stfs f0, 0x7f8(r31)
/* 8021119C 0020E0DC  C0 04 00 A8 */ lfs f0, 0xa8(r4)
/* 802111A0 0020E0E0  D0 1F 07 FC */ stfs f0, 0x7fc(r31)
/* 802111A4 0020E0E4  C0 04 00 F0 */ lfs f0, 0xf0(r4)
/* 802111A8 0020E0E8  D0 1F 08 00 */ stfs f0, 0x800(r31)
/* 802111AC 0020E0EC  C0 04 01 48 */ lfs f0, 0x148(r4)
/* 802111B0 0020E0F0  D0 1F 08 04 */ stfs f0, 0x804(r31)
/* 802111B4 0020E0F4  C0 04 01 58 */ lfs f0, 0x158(r4)
/* 802111B8 0020E0F8  D0 1F 08 08 */ stfs f0, 0x808(r31)
/* 802111BC 0020E0FC  C0 04 01 68 */ lfs f0, 0x168(r4)
/* 802111C0 0020E100  D0 1F 08 0C */ stfs f0, 0x80c(r31)
/* 802111C4 0020E104  C0 04 01 78 */ lfs f0, 0x178(r4)
/* 802111C8 0020E108  D0 1F 08 10 */ stfs f0, 0x810(r31)
/* 802111CC 0020E10C  38 60 00 00 */ li r3, 0
/* 802111D0 0020E110  38 00 00 02 */ li r0, 2
/* 802111D4 0020E114  7C 09 03 A6 */ mtctr r0
lbl_802111D8:
/* 802111D8 0020E118  7C A4 1A 14 */ add r5, r4, r3
/* 802111DC 0020E11C  C0 05 02 38 */ lfs f0, 0x238(r5)
/* 802111E0 0020E120  7C DF 1A 14 */ add r6, r31, r3
/* 802111E4 0020E124  D0 06 08 14 */ stfs f0, 0x814(r6)
/* 802111E8 0020E128  C0 05 02 58 */ lfs f0, 0x258(r5)
/* 802111EC 0020E12C  D0 06 08 1C */ stfs f0, 0x81c(r6)
/* 802111F0 0020E130  C0 05 02 78 */ lfs f0, 0x278(r5)
/* 802111F4 0020E134  D0 06 08 24 */ stfs f0, 0x824(r6)
/* 802111F8 0020E138  C0 05 02 98 */ lfs f0, 0x298(r5)
/* 802111FC 0020E13C  D0 06 08 2C */ stfs f0, 0x82c(r6)
/* 80211200 0020E140  38 63 00 04 */ addi r3, r3, 4
/* 80211204 0020E144  42 00 FF D4 */ bdnz lbl_802111D8
/* 80211208 0020E148  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8021120C 0020E14C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80211210 0020E150  C0 03 02 AC */ lfs f0, 0x2ac(r3)
/* 80211214 0020E154  D0 1F 08 34 */ stfs f0, 0x834(r31)
/* 80211218 0020E158  C0 03 02 B0 */ lfs f0, 0x2b0(r3)
/* 8021121C 0020E15C  D0 1F 08 38 */ stfs f0, 0x838(r31)
/* 80211220 0020E160  C0 03 02 C4 */ lfs f0, 0x2c4(r3)
/* 80211224 0020E164  D0 1F 08 3C */ stfs f0, 0x83c(r31)
/* 80211228 0020E168  C0 03 04 14 */ lfs f0, 0x414(r3)
/* 8021122C 0020E16C  D0 1F 08 40 */ stfs f0, 0x840(r31)
/* 80211230 0020E170  C0 03 04 18 */ lfs f0, 0x418(r3)
/* 80211234 0020E174  D0 1F 08 44 */ stfs f0, 0x844(r31)
/* 80211238 0020E178  C0 03 04 1C */ lfs f0, 0x41c(r3)
/* 8021123C 0020E17C  D0 1F 08 48 */ stfs f0, 0x848(r31)
/* 80211240 0020E180  88 03 02 C0 */ lbz r0, 0x2c0(r3)
/* 80211244 0020E184  98 1F 08 4C */ stb r0, 0x84c(r31)
/* 80211248 0020E188  88 03 02 C1 */ lbz r0, 0x2c1(r3)
/* 8021124C 0020E18C  98 1F 08 4D */ stb r0, 0x84d(r31)
/* 80211250 0020E190  88 03 02 C2 */ lbz r0, 0x2c2(r3)
/* 80211254 0020E194  98 1F 08 4E */ stb r0, 0x84e(r31)
/* 80211258 0020E198  88 03 02 C3 */ lbz r0, 0x2c3(r3)
/* 8021125C 0020E19C  98 1F 08 4F */ stb r0, 0x84f(r31)
/* 80211260 0020E1A0  88 03 02 E0 */ lbz r0, 0x2e0(r3)
/* 80211264 0020E1A4  98 1F 08 50 */ stb r0, 0x850(r31)
/* 80211268 0020E1A8  88 03 02 E1 */ lbz r0, 0x2e1(r3)
/* 8021126C 0020E1AC  98 1F 08 51 */ stb r0, 0x851(r31)
/* 80211270 0020E1B0  88 03 02 E2 */ lbz r0, 0x2e2(r3)
/* 80211274 0020E1B4  98 1F 08 52 */ stb r0, 0x852(r31)
/* 80211278 0020E1B8  88 03 02 E3 */ lbz r0, 0x2e3(r3)
/* 8021127C 0020E1BC  98 1F 08 53 */ stb r0, 0x853(r31)
/* 80211280 0020E1C0  88 03 02 F0 */ lbz r0, 0x2f0(r3)
/* 80211284 0020E1C4  98 1F 08 54 */ stb r0, 0x854(r31)
/* 80211288 0020E1C8  88 03 02 F1 */ lbz r0, 0x2f1(r3)
/* 8021128C 0020E1CC  98 1F 08 55 */ stb r0, 0x855(r31)
/* 80211290 0020E1D0  88 03 02 F2 */ lbz r0, 0x2f2(r3)
/* 80211294 0020E1D4  98 1F 08 56 */ stb r0, 0x856(r31)
/* 80211298 0020E1D8  88 03 02 F3 */ lbz r0, 0x2f3(r3)
/* 8021129C 0020E1DC  98 1F 08 57 */ stb r0, 0x857(r31)
/* 802112A0 0020E1E0  88 03 03 38 */ lbz r0, 0x338(r3)
/* 802112A4 0020E1E4  98 1F 08 58 */ stb r0, 0x858(r31)
/* 802112A8 0020E1E8  88 03 03 39 */ lbz r0, 0x339(r3)
/* 802112AC 0020E1EC  98 1F 08 59 */ stb r0, 0x859(r31)
/* 802112B0 0020E1F0  88 03 03 3A */ lbz r0, 0x33a(r3)
/* 802112B4 0020E1F4  98 1F 08 5A */ stb r0, 0x85a(r31)
/* 802112B8 0020E1F8  88 03 03 3B */ lbz r0, 0x33b(r3)
/* 802112BC 0020E1FC  98 1F 08 5B */ stb r0, 0x85b(r31)
/* 802112C0 0020E200  88 03 03 00 */ lbz r0, 0x300(r3)
/* 802112C4 0020E204  98 1F 08 5C */ stb r0, 0x85c(r31)
/* 802112C8 0020E208  88 03 03 01 */ lbz r0, 0x301(r3)
/* 802112CC 0020E20C  98 1F 08 5D */ stb r0, 0x85d(r31)
/* 802112D0 0020E210  88 03 03 02 */ lbz r0, 0x302(r3)
/* 802112D4 0020E214  98 1F 08 5E */ stb r0, 0x85e(r31)
/* 802112D8 0020E218  88 03 03 03 */ lbz r0, 0x303(r3)
/* 802112DC 0020E21C  98 1F 08 5F */ stb r0, 0x85f(r31)
/* 802112E0 0020E220  7F E3 FB 78 */ mr r3, r31
/* 802112E4 0020E224  38 80 00 00 */ li r4, 0
/* 802112E8 0020E228  48 00 9E 1D */ bl setItemParamX__13dMeter2Draw_cFUc
/* 802112EC 0020E22C  7F E3 FB 78 */ mr r3, r31
/* 802112F0 0020E230  38 80 00 00 */ li r4, 0
/* 802112F4 0020E234  48 00 A0 71 */ bl setItemParamY__13dMeter2Draw_cFUc
/* 802112F8 0020E238  7F E3 FB 78 */ mr r3, r31
/* 802112FC 0020E23C  38 80 00 00 */ li r4, 0
/* 80211300 0020E240  48 00 A2 B1 */ bl setItemParamZ__13dMeter2Draw_cFUc
/* 80211304 0020E244  7F E3 FB 78 */ mr r3, r31
/* 80211308 0020E248  38 80 00 00 */ li r4, 0
/* 8021130C 0020E24C  48 00 A5 05 */ bl setItemParamB__13dMeter2Draw_cFUc
/* 80211310 0020E250  7F E3 FB 78 */ mr r3, r31
/* 80211314 0020E254  48 00 08 D9 */ bl init__13dMeter2Draw_cFvLife
/* 80211318 0020E258  7F E3 FB 78 */ mr r3, r31
/* 8021131C 0020E25C  48 00 0B 49 */ bl init__13dMeter2Draw_cFvMagic
/* 80211320 0020E260  7F E3 FB 78 */ mr r3, r31
/* 80211324 0020E264  48 00 0E 6D */ bl init__13dMeter2Draw_cFvLightDrop
/* 80211328 0020E268  7F E3 FB 78 */ mr r3, r31
/* 8021132C 0020E26C  48 00 10 D9 */ bl init__13dMeter2Draw_cFvRupeeKey
/* 80211330 0020E270  7F E3 FB 78 */ mr r3, r31
/* 80211334 0020E274  48 00 13 B1 */ bl init__13dMeter2Draw_cFvButton
/* 80211338 0020E278  7F E3 FB 78 */ mr r3, r31
/* 8021133C 0020E27C  48 00 21 D1 */ bl init__13dMeter2Draw_cFvButtonCross
/* 80211340 0020E280  38 00 00 00 */ li r0, 0
/* 80211344 0020E284  98 1F 07 72 */ stb r0, 0x772(r31)
/* 80211348 0020E288  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8021134C 0020E28C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80211350 0020E290  7C 08 03 A6 */ mtlr r0
/* 80211354 0020E294  38 21 00 10 */ addi r1, r1, 0x10
/* 80211358 0020E298  4E 80 00 20 */ blr
