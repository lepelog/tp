/* 801000F8 000FD038  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801000FC 000FD03C  7C 08 02 A6 */ mflr r0
/* 80100100 000FD040  90 01 00 24 */ stw r0, 0x24(r1)
/* 80100104 000FD044  39 61 00 20 */ addi r11, r1, 0x20
/* 80100108 000FD048  48 26 20 D5 */ bl _savegpr_29
/* 8010010C 000FD04C  7C 7D 1B 78 */ mr r29, r3
/* 80100110 000FD050  7C 9E 23 78 */ mr r30, r4
/* 80100114 000FD054  7C BF 2B 78 */ mr r31, r5
/* 80100118 000FD058  38 80 00 84 */ li r4, 0x84
/* 8010011C 000FD05C  4B FC 2C 89 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 80100120 000FD060  2C 03 00 00 */ cmpwi r3, 0
/* 80100124 000FD064  40 82 00 0C */ bne lbl_80100130
/* 80100128 000FD068  38 60 00 00 */ li r3, 0
/* 8010012C 000FD06C  48 00 01 14 */ b lbl_80100240
lbl_80100130:
/* 80100130 000FD070  2C 1F 00 00 */ cmpwi r31, 0
/* 80100134 000FD074  40 82 00 2C */ bne lbl_80100160
/* 80100138 000FD078  7F A3 EB 78 */ mr r3, r29
/* 8010013C 000FD07C  38 80 00 A5 */ li r4, 0xa5
/* 80100140 000FD080  4B FA C4 19 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80100144 000FD084  2C 03 00 00 */ cmpwi r3, 0
/* 80100148 000FD088  40 82 00 18 */ bne lbl_80100160
/* 8010014C 000FD08C  7F A3 EB 78 */ mr r3, r29
/* 80100150 000FD090  38 80 00 A6 */ li r4, 0xa6
/* 80100154 000FD094  4B FA C4 05 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80100158 000FD098  2C 03 00 00 */ cmpwi r3, 0
/* 8010015C 000FD09C  41 82 00 18 */ beq lbl_80100174
lbl_80100160:
/* 80100160 000FD0A0  7F A3 EB 78 */ mr r3, r29
/* 80100164 000FD0A4  38 80 00 A5 */ li r4, 0xa5
/* 80100168 000FD0A8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010016C 000FD0AC  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 80100170 000FD0B0  4B FA CE 71 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
lbl_80100174:
/* 80100174 000FD0B4  38 00 00 33 */ li r0, 0x33
/* 80100178 000FD0B8  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 8010017C 000FD0BC  7F A3 EB 78 */ mr r3, r29
/* 80100180 000FD0C0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80100184 000FD0C4  C0 5D 05 34 */ lfs f2, 0x534(r29)
/* 80100188 000FD0C8  38 80 00 00 */ li r4, 0
/* 8010018C 000FD0CC  4B FB B5 E5 */ bl setSpecialGravity__9daAlink_cFffi
/* 80100190 000FD0D0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80100194 000FD0D4  D0 1D 04 FC */ stfs f0, 0x4fc(r29)
/* 80100198 000FD0D8  D0 1D 33 98 */ stfs f0, 0x3398(r29)
/* 8010019C 000FD0DC  D0 1D 05 2C */ stfs f0, 0x52c(r29)
/* 801001A0 000FD0E0  38 00 00 0A */ li r0, 0xa
/* 801001A4 000FD0E4  98 1D 2F 99 */ stb r0, 0x2f99(r29)
/* 801001A8 000FD0E8  38 00 00 01 */ li r0, 1
/* 801001AC 000FD0EC  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 801001B0 000FD0F0  38 00 00 00 */ li r0, 0
/* 801001B4 000FD0F4  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 801001B8 000FD0F8  2C 1E 00 00 */ cmpwi r30, 0
/* 801001BC 000FD0FC  41 82 00 6C */ beq lbl_80100228
/* 801001C0 000FD100  88 1D 2F 98 */ lbz r0, 0x2f98(r29)
/* 801001C4 000FD104  28 00 00 00 */ cmplwi r0, 0
/* 801001C8 000FD108  40 82 00 18 */ bne lbl_801001E0
/* 801001CC 000FD10C  38 00 E8 00 */ li r0, -6144
/* 801001D0 000FD110  B0 1D 30 A0 */ sth r0, 0x30a0(r29)
/* 801001D4 000FD114  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 801001D8 000FD118  D0 1D 33 F4 */ stfs f0, 0x33f4(r29)
/* 801001DC 000FD11C  48 00 00 4C */ b lbl_80100228
lbl_801001E0:
/* 801001E0 000FD120  28 00 00 01 */ cmplwi r0, 1
/* 801001E4 000FD124  40 82 00 18 */ bne lbl_801001FC
/* 801001E8 000FD128  38 00 28 00 */ li r0, 0x2800
/* 801001EC 000FD12C  B0 1D 30 A0 */ sth r0, 0x30a0(r29)
/* 801001F0 000FD130  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801001F4 000FD134  D0 1D 33 F4 */ stfs f0, 0x33f4(r29)
/* 801001F8 000FD138  48 00 00 30 */ b lbl_80100228
lbl_801001FC:
/* 801001FC 000FD13C  28 00 00 03 */ cmplwi r0, 3
/* 80100200 000FD140  40 82 00 18 */ bne lbl_80100218
/* 80100204 000FD144  38 00 E8 00 */ li r0, -6144
/* 80100208 000FD148  B0 1D 30 A2 */ sth r0, 0x30a2(r29)
/* 8010020C 000FD14C  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80100210 000FD150  D0 1D 33 F0 */ stfs f0, 0x33f0(r29)
/* 80100214 000FD154  48 00 00 14 */ b lbl_80100228
lbl_80100218:
/* 80100218 000FD158  38 00 18 00 */ li r0, 0x1800
/* 8010021C 000FD15C  B0 1D 30 A2 */ sth r0, 0x30a2(r29)
/* 80100220 000FD160  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80100224 000FD164  D0 1D 33 F0 */ stfs f0, 0x33f0(r29)
lbl_80100228:
/* 80100228 000FD168  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010022C 000FD16C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80100230 000FD170  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 80100234 000FD174  60 00 00 08 */ ori r0, r0, 8
/* 80100238 000FD178  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 8010023C 000FD17C  38 60 00 01 */ li r3, 1
lbl_80100240:
/* 80100240 000FD180  39 61 00 20 */ addi r11, r1, 0x20
/* 80100244 000FD184  48 26 1F E5 */ bl _restgpr_29
/* 80100248 000FD188  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010024C 000FD18C  7C 08 03 A6 */ mtlr r0
/* 80100250 000FD190  38 21 00 20 */ addi r1, r1, 0x20
/* 80100254 000FD194  4E 80 00 20 */ blr