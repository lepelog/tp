/* 800DBED8 000D8E18  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800DBEDC 000D8E1C  7C 08 02 A6 */ mflr r0
/* 800DBEE0 000D8E20  90 01 00 44 */ stw r0, 0x44(r1)
/* 800DBEE4 000D8E24  39 61 00 40 */ addi r11, r1, 0x40
/* 800DBEE8 000D8E28  48 28 62 F5 */ bl _savegpr_29
/* 800DBEEC 000D8E2C  7C 7E 1B 78 */ mr r30, r3
/* 800DBEF0 000D8E30  7C 9F 23 78 */ mr r31, r4
/* 800DBEF4 000D8E34  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DBEF8 000D8E38  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DBEFC 000D8E3C  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 800DBF00 000D8E40  7F C4 F3 78 */ mr r4, r30
/* 800DBF04 000D8E44  38 A0 00 00 */ li r5, 0
/* 800DBF08 000D8E48  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800DBF0C 000D8E4C  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800DBF10 000D8E50  4B F6 72 5D */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 800DBF14 000D8E54  2C 03 00 00 */ cmpwi r3, 0
/* 800DBF18 000D8E58  40 82 00 0C */ bne lbl_800DBF24
/* 800DBF1C 000D8E5C  38 60 00 00 */ li r3, 0
/* 800DBF20 000D8E60  48 00 02 DC */ b lbl_800DC1FC
lbl_800DBF24:
/* 800DBF24 000D8E64  38 00 00 05 */ li r0, 5
/* 800DBF28 000D8E68  B0 1E 06 04 */ sth r0, 0x604(r30)
/* 800DBF2C 000D8E6C  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DBF30 000D8E70  54 1D 06 72 */ rlwinm r29, r0, 0, 0x19, 0x19
/* 800DBF34 000D8E74  7F C3 F3 78 */ mr r3, r30
/* 800DBF38 000D8E78  38 80 01 55 */ li r4, 0x155
/* 800DBF3C 000D8E7C  4B FE 6E 69 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800DBF40 000D8E80  2C 03 00 00 */ cmpwi r3, 0
/* 800DBF44 000D8E84  40 82 00 0C */ bne lbl_800DBF50
/* 800DBF48 000D8E88  38 60 00 01 */ li r3, 1
/* 800DBF4C 000D8E8C  48 00 02 B0 */ b lbl_800DC1FC
lbl_800DBF50:
/* 800DBF50 000D8E90  28 1D 00 00 */ cmplwi r29, 0
/* 800DBF54 000D8E94  41 82 00 14 */ beq lbl_800DBF68
/* 800DBF58 000D8E98  C0 1E 38 34 */ lfs f0, 0x3834(r30)
/* 800DBF5C 000D8E9C  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 800DBF60 000D8EA0  C0 1E 38 3C */ lfs f0, 0x383c(r30)
/* 800DBF64 000D8EA4  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
lbl_800DBF68:
/* 800DBF68 000D8EA8  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800DBF6C 000D8EAC  60 00 01 00 */ ori r0, r0, 0x100
/* 800DBF70 000D8EB0  90 1E 05 70 */ stw r0, 0x570(r30)
/* 800DBF74 000D8EB4  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800DBF78 000D8EB8  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800DBF7C 000D8EBC  41 82 00 64 */ beq lbl_800DBFE0
/* 800DBF80 000D8EC0  7F C3 F3 78 */ mr r3, r30
/* 800DBF84 000D8EC4  38 80 00 7D */ li r4, 0x7d
/* 800DBF88 000D8EC8  48 04 D6 F1 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 800DBF8C 000D8ECC  7F C3 F3 78 */ mr r3, r30
/* 800DBF90 000D8ED0  38 80 00 9E */ li r4, 0x9e
/* 800DBF94 000D8ED4  4B FD 39 0D */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DBF98 000D8ED8  2C 1F 00 00 */ cmpwi r31, 0
/* 800DBF9C 000D8EDC  41 82 00 24 */ beq lbl_800DBFC0
/* 800DBFA0 000D8EE0  7F C3 F3 78 */ mr r3, r30
/* 800DBFA4 000D8EE4  3C 80 00 01 */ lis r4, 0x000100B4@ha
/* 800DBFA8 000D8EE8  38 84 00 B4 */ addi r4, r4, 0x000100B4@l
/* 800DBFAC 000D8EEC  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DBFB0 000D8EF0  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DBFB4 000D8EF4  7D 89 03 A6 */ mtctr r12
/* 800DBFB8 000D8EF8  4E 80 04 21 */ bctrl
/* 800DBFBC 000D8EFC  48 00 00 88 */ b lbl_800DC044
lbl_800DBFC0:
/* 800DBFC0 000D8F00  7F C3 F3 78 */ mr r3, r30
/* 800DBFC4 000D8F04  3C 80 00 01 */ lis r4, 0x000100B3@ha
/* 800DBFC8 000D8F08  38 84 00 B3 */ addi r4, r4, 0x000100B3@l
/* 800DBFCC 000D8F0C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DBFD0 000D8F10  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DBFD4 000D8F14  7D 89 03 A6 */ mtctr r12
/* 800DBFD8 000D8F18  4E 80 04 21 */ bctrl
/* 800DBFDC 000D8F1C  48 00 00 68 */ b lbl_800DC044
lbl_800DBFE0:
/* 800DBFE0 000D8F20  7F C3 F3 78 */ mr r3, r30
/* 800DBFE4 000D8F24  38 80 01 19 */ li r4, 0x119
/* 800DBFE8 000D8F28  4B FD 0F 99 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DBFEC 000D8F2C  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800DBFF0 000D8F30  28 00 01 03 */ cmplwi r0, 0x103
/* 800DBFF4 000D8F34  40 82 00 0C */ bne lbl_800DC000
/* 800DBFF8 000D8F38  38 00 00 64 */ li r0, 0x64
/* 800DBFFC 000D8F3C  98 1E 2F 92 */ stb r0, 0x2f92(r30)
lbl_800DC000:
/* 800DC000 000D8F40  2C 1F 00 00 */ cmpwi r31, 0
/* 800DC004 000D8F44  41 82 00 24 */ beq lbl_800DC028
/* 800DC008 000D8F48  7F C3 F3 78 */ mr r3, r30
/* 800DC00C 000D8F4C  3C 80 00 01 */ lis r4, 0x0001002A@ha
/* 800DC010 000D8F50  38 84 00 2A */ addi r4, r4, 0x0001002A@l
/* 800DC014 000D8F54  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DC018 000D8F58  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DC01C 000D8F5C  7D 89 03 A6 */ mtctr r12
/* 800DC020 000D8F60  4E 80 04 21 */ bctrl
/* 800DC024 000D8F64  48 00 00 20 */ b lbl_800DC044
lbl_800DC028:
/* 800DC028 000D8F68  7F C3 F3 78 */ mr r3, r30
/* 800DC02C 000D8F6C  3C 80 00 01 */ lis r4, 0x00010029@ha
/* 800DC030 000D8F70  38 84 00 29 */ addi r4, r4, 0x00010029@l
/* 800DC034 000D8F74  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DC038 000D8F78  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DC03C 000D8F7C  7D 89 03 A6 */ mtctr r12
/* 800DC040 000D8F80  4E 80 04 21 */ bctrl
lbl_800DC044:
/* 800DC044 000D8F84  2C 1F 00 00 */ cmpwi r31, 0
/* 800DC048 000D8F88  41 82 00 78 */ beq lbl_800DC0C0
/* 800DC04C 000D8F8C  7F C3 F3 78 */ mr r3, r30
/* 800DC050 000D8F90  3C 80 00 02 */ lis r4, 0x00020072@ha
/* 800DC054 000D8F94  38 84 00 72 */ addi r4, r4, 0x00020072@l
/* 800DC058 000D8F98  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DC05C 000D8F9C  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DC060 000D8FA0  7D 89 03 A6 */ mtctr r12
/* 800DC064 000D8FA4  4E 80 04 21 */ bctrl
/* 800DC068 000D8FA8  38 00 00 FF */ li r0, 0xff
/* 800DC06C 000D8FAC  98 1E 2F BD */ stb r0, 0x2fbd(r30)
/* 800DC070 000D8FB0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DC074 000D8FB4  54 00 03 98 */ rlwinm r0, r0, 0, 0xe, 0xc
/* 800DC078 000D8FB8  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800DC07C 000D8FBC  80 7E 20 60 */ lwz r3, 0x2060(r30)
/* 800DC080 000D8FC0  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 800DC084 000D8FC4  C0 23 00 18 */ lfs f1, 0x18(r3)
/* 800DC088 000D8FC8  C0 1E 34 58 */ lfs f0, 0x3458(r30)
/* 800DC08C 000D8FCC  EC 01 00 2A */ fadds f0, f1, f0
/* 800DC090 000D8FD0  D0 03 00 18 */ stfs f0, 0x18(r3)
/* 800DC094 000D8FD4  C0 3E 2B A8 */ lfs f1, 0x2ba8(r30)
/* 800DC098 000D8FD8  C0 1E 34 58 */ lfs f0, 0x3458(r30)
/* 800DC09C 000D8FDC  EC 01 00 28 */ fsubs f0, f1, f0
/* 800DC0A0 000D8FE0  D0 1E 2B A8 */ stfs f0, 0x2ba8(r30)
/* 800DC0A4 000D8FE4  38 00 00 00 */ li r0, 0
/* 800DC0A8 000D8FE8  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800DC0AC 000D8FEC  38 00 00 05 */ li r0, 5
/* 800DC0B0 000D8FF0  90 1E 32 CC */ stw r0, 0x32cc(r30)
/* 800DC0B4 000D8FF4  38 00 00 04 */ li r0, 4
/* 800DC0B8 000D8FF8  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 800DC0BC 000D8FFC  48 00 00 E0 */ b lbl_800DC19C
lbl_800DC0C0:
/* 800DC0C0 000D9000  7F C3 F3 78 */ mr r3, r30
/* 800DC0C4 000D9004  3C 80 00 02 */ lis r4, 0x0002006F@ha
/* 800DC0C8 000D9008  38 84 00 6F */ addi r4, r4, 0x0002006F@l
/* 800DC0CC 000D900C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800DC0D0 000D9010  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DC0D4 000D9014  7D 89 03 A6 */ mtctr r12
/* 800DC0D8 000D9018  4E 80 04 21 */ bctrl
/* 800DC0DC 000D901C  C0 5E 04 D8 */ lfs f2, 0x4d8(r30)
/* 800DC0E0 000D9020  C0 3E 33 B4 */ lfs f1, 0x33b4(r30)
/* 800DC0E4 000D9024  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800DC0E8 000D9028  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 800DC0EC 000D902C  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 800DC0F0 000D9030  D0 41 00 28 */ stfs f2, 0x28(r1)
/* 800DC0F4 000D9034  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DC0F8 000D9038  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 800DC0FC 000D903C  80 7F 5D 3C */ lwz r3, 0x5d3c(r31)
/* 800DC100 000D9040  38 80 00 00 */ li r4, 0
/* 800DC104 000D9044  90 81 00 08 */ stw r4, 8(r1)
/* 800DC108 000D9048  38 00 FF FF */ li r0, -1
/* 800DC10C 000D904C  90 01 00 0C */ stw r0, 0xc(r1)
/* 800DC110 000D9050  90 81 00 10 */ stw r4, 0x10(r1)
/* 800DC114 000D9054  90 81 00 14 */ stw r4, 0x14(r1)
/* 800DC118 000D9058  90 81 00 18 */ stw r4, 0x18(r1)
/* 800DC11C 000D905C  38 80 00 00 */ li r4, 0
/* 800DC120 000D9060  3C A0 00 01 */ lis r5, 0x00008757@ha
/* 800DC124 000D9064  38 A5 87 57 */ addi r5, r5, 0x00008757@l
/* 800DC128 000D9068  38 C1 00 20 */ addi r6, r1, 0x20
/* 800DC12C 000D906C  38 FE 01 0C */ addi r7, r30, 0x10c
/* 800DC130 000D9070  39 00 00 00 */ li r8, 0
/* 800DC134 000D9074  39 20 00 00 */ li r9, 0
/* 800DC138 000D9078  39 40 00 FF */ li r10, 0xff
/* 800DC13C 000D907C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DC140 000D9080  4B F7 09 51 */ bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800DC144 000D9084  80 7F 5D 3C */ lwz r3, 0x5d3c(r31)
/* 800DC148 000D9088  38 80 00 00 */ li r4, 0
/* 800DC14C 000D908C  90 81 00 08 */ stw r4, 8(r1)
/* 800DC150 000D9090  38 00 FF FF */ li r0, -1
/* 800DC154 000D9094  90 01 00 0C */ stw r0, 0xc(r1)
/* 800DC158 000D9098  90 81 00 10 */ stw r4, 0x10(r1)
/* 800DC15C 000D909C  90 81 00 14 */ stw r4, 0x14(r1)
/* 800DC160 000D90A0  90 81 00 18 */ stw r4, 0x18(r1)
/* 800DC164 000D90A4  38 80 00 00 */ li r4, 0
/* 800DC168 000D90A8  3C A0 00 01 */ lis r5, 0x00008758@ha
/* 800DC16C 000D90AC  38 A5 87 58 */ addi r5, r5, 0x00008758@l
/* 800DC170 000D90B0  38 C1 00 20 */ addi r6, r1, 0x20
/* 800DC174 000D90B4  38 FE 01 0C */ addi r7, r30, 0x10c
/* 800DC178 000D90B8  39 00 00 00 */ li r8, 0
/* 800DC17C 000D90BC  39 20 00 00 */ li r9, 0
/* 800DC180 000D90C0  39 40 00 FF */ li r10, 0xff
/* 800DC184 000D90C4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DC188 000D90C8  4B F7 09 09 */ bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800DC18C 000D90CC  38 00 00 04 */ li r0, 4
/* 800DC190 000D90D0  90 1E 32 CC */ stw r0, 0x32cc(r30)
/* 800DC194 000D90D4  38 00 00 08 */ li r0, 8
/* 800DC198 000D90D8  90 1E 31 98 */ stw r0, 0x3198(r30)
lbl_800DC19C:
/* 800DC19C 000D90DC  38 00 00 00 */ li r0, 0
/* 800DC1A0 000D90E0  B0 1E 30 80 */ sth r0, 0x3080(r30)
/* 800DC1A4 000D90E4  B0 1E 05 6C */ sth r0, 0x56c(r30)
/* 800DC1A8 000D90E8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DC1AC 000D90EC  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800DC1B0 000D90F0  38 00 00 01 */ li r0, 1
/* 800DC1B4 000D90F4  90 1E 31 94 */ stw r0, 0x3194(r30)
/* 800DC1B8 000D90F8  28 1E 00 00 */ cmplwi r30, 0
/* 800DC1BC 000D90FC  41 82 00 0C */ beq lbl_800DC1C8
/* 800DC1C0 000D9100  83 BE 00 04 */ lwz r29, 4(r30)
/* 800DC1C4 000D9104  48 00 00 08 */ b lbl_800DC1CC
lbl_800DC1C8:
/* 800DC1C8 000D9108  3B A0 FF FF */ li r29, -1
lbl_800DC1CC:
/* 800DC1CC 000D910C  48 0A 54 75 */ bl dCam_getBody
/* 800DC1D0 000D9110  38 80 00 09 */ li r4, 9
/* 800DC1D4 000D9114  7F A5 EB 78 */ mr r5, r29
/* 800DC1D8 000D9118  3C C0 80 39 */ lis r6, lbl_80392094@ha
/* 800DC1DC 000D911C  38 C6 20 94 */ addi r6, r6, lbl_80392094@l
/* 800DC1E0 000D9120  38 C6 00 43 */ addi r6, r6, 0x43
/* 800DC1E4 000D9124  38 E0 00 01 */ li r7, 1
/* 800DC1E8 000D9128  39 1E 31 94 */ addi r8, r30, 0x3194
/* 800DC1EC 000D912C  39 20 00 00 */ li r9, 0
/* 800DC1F0 000D9130  4C C6 31 82 */ crclr 6
/* 800DC1F4 000D9134  4B FA C8 89 */ bl StartEventCamera__9dCamera_cFiie
/* 800DC1F8 000D9138  38 60 00 01 */ li r3, 1
lbl_800DC1FC:
/* 800DC1FC 000D913C  39 61 00 40 */ addi r11, r1, 0x40
/* 800DC200 000D9140  48 28 60 29 */ bl _restgpr_29
/* 800DC204 000D9144  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800DC208 000D9148  7C 08 03 A6 */ mtlr r0
/* 800DC20C 000D914C  38 21 00 40 */ addi r1, r1, 0x40
/* 800DC210 000D9150  4E 80 00 20 */ blr