/* 800DF0BC 000DBFFC  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800DF0C0 000DC000  7C 08 02 A6 */ mflr r0
/* 800DF0C4 000DC004  90 01 00 54 */ stw r0, 0x54(r1)
/* 800DF0C8 000DC008  39 61 00 50 */ addi r11, r1, 0x50
/* 800DF0CC 000DC00C  48 28 31 11 */ bl _savegpr_29
/* 800DF0D0 000DC010  7C 7F 1B 78 */ mr r31, r3
/* 800DF0D4 000DC014  3B DF 20 48 */ addi r30, r31, 0x2048
/* 800DF0D8 000DC018  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800DF0DC 000DC01C  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF0E0 000DC020  40 82 00 24 */ bne lbl_800DF104
/* 800DF0E4 000DC024  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800DF0E8 000DC028  81 8C 00 20 */ lwz r12, 0x20(r12)
/* 800DF0EC 000DC02C  7D 89 03 A6 */ mtctr r12
/* 800DF0F0 000DC030  4E 80 04 21 */ bctrl
/* 800DF0F4 000DC034  3C 80 80 39 */ lis r4, lbl_803918D0@ha
/* 800DF0F8 000DC038  38 84 18 D0 */ addi r4, r4, lbl_803918D0@l
/* 800DF0FC 000DC03C  38 BF 37 E0 */ addi r5, r31, 0x37e0
/* 800DF100 000DC040  48 26 7C 6D */ bl PSMTXMultVec
lbl_800DF104:
/* 800DF104 000DC044  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800DF108 000DC048  28 00 00 0A */ cmplwi r0, 0xa
/* 800DF10C 000DC04C  40 82 03 5C */ bne lbl_800DF468
/* 800DF110 000DC050  83 BF 28 28 */ lwz r29, 0x2828(r31)
/* 800DF114 000DC054  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF118 000DC058  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF11C 000DC05C  41 82 00 68 */ beq lbl_800DF184
/* 800DF120 000DC060  A8 7F 30 1C */ lha r3, 0x301c(r31)
/* 800DF124 000DC064  2C 03 00 00 */ cmpwi r3, 0
/* 800DF128 000DC068  40 81 00 44 */ ble lbl_800DF16C
/* 800DF12C 000DC06C  38 03 FF FF */ addi r0, r3, -1
/* 800DF130 000DC070  B0 1F 30 1C */ sth r0, 0x301c(r31)
/* 800DF134 000DC074  A8 7F 30 1C */ lha r3, 0x301c(r31)
/* 800DF138 000DC078  A8 1E 00 08 */ lha r0, 8(r30)
/* 800DF13C 000DC07C  7C 03 00 00 */ cmpw r3, r0
/* 800DF140 000DC080  41 81 00 44 */ bgt lbl_800DF184
/* 800DF144 000DC084  C0 1E 00 10 */ lfs f0, 0x10(r30)
/* 800DF148 000DC088  C0 22 93 A0 */ lfs f1, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800DF14C 000DC08C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800DF150 000DC090  40 80 00 34 */ bge lbl_800DF184
/* 800DF154 000DC094  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800DF158 000DC098  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800DF15C 000DC09C  40 80 00 28 */ bge lbl_800DF184
/* 800DF160 000DC0A0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DF164 000DC0A4  D0 1E 00 0C */ stfs f0, 0xc(r30)
/* 800DF168 000DC0A8  48 00 00 1C */ b lbl_800DF184
lbl_800DF16C:
/* 800DF16C 000DC0AC  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800DF170 000DC0B0  60 00 00 10 */ ori r0, r0, 0x10
/* 800DF174 000DC0B4  90 1F 05 80 */ stw r0, 0x580(r31)
/* 800DF178 000DC0B8  7F E3 FB 78 */ mr r3, r31
/* 800DF17C 000DC0BC  38 80 00 00 */ li r4, 0
/* 800DF180 000DC0C0  4B FD 80 11 */ bl daAlink_c_NS_cancelItemUseQuake
lbl_800DF184:
/* 800DF184 000DC0C4  7F E3 FB 78 */ mr r3, r31
/* 800DF188 000DC0C8  4B FD 97 A9 */ bl daAlink_c_NS_checkReadyItem
/* 800DF18C 000DC0CC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DF190 000DC0D0  41 82 05 9C */ beq lbl_800DF72C
/* 800DF194 000DC0D4  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 800DF198 000DC0D8  2C 00 00 00 */ cmpwi r0, 0
/* 800DF19C 000DC0DC  41 82 00 E8 */ beq lbl_800DF284
/* 800DF1A0 000DC0E0  7F E3 FB 78 */ mr r3, r31
/* 800DF1A4 000DC0E4  38 80 00 0C */ li r4, 0xc
/* 800DF1A8 000DC0E8  38 A0 00 02 */ li r5, 2
/* 800DF1AC 000DC0EC  3C C0 80 39 */ lis r6, lbl_8038E658@ha
/* 800DF1B0 000DC0F0  38 C6 E6 58 */ addi r6, r6, lbl_8038E658@l
/* 800DF1B4 000DC0F4  4B FC E5 3D */ bl daAlink_c_NS_setUpperAnimeParam
/* 800DF1B8 000DC0F8  7F E3 FB 78 */ mr r3, r31
/* 800DF1BC 000DC0FC  38 80 00 E8 */ li r4, 0xe8
/* 800DF1C0 000DC100  38 A0 00 01 */ li r5, 1
/* 800DF1C4 000DC104  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800DF1C8 000DC108  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800DF1CC 000DC10C  4B FD 02 E5 */ bl daAlink_c_NS_setFaceBck
/* 800DF1D0 000DC110  38 80 00 00 */ li r4, 0
/* 800DF1D4 000DC114  98 9F 2F 96 */ stb r4, 0x2f96(r31)
/* 800DF1D8 000DC118  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF1DC 000DC11C  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF1E0 000DC120  40 82 00 68 */ bne lbl_800DF248
/* 800DF1E4 000DC124  3B A0 01 F1 */ li r29, 0x1f1
/* 800DF1E8 000DC128  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF1EC 000DC12C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF1F0 000DC130  88 03 00 F4 */ lbz r0, 0xf4(r3)
/* 800DF1F4 000DC134  28 00 00 00 */ cmplwi r0, 0
/* 800DF1F8 000DC138  41 82 00 68 */ beq lbl_800DF260
/* 800DF1FC 000DC13C  90 81 00 08 */ stw r4, 8(r1)
/* 800DF200 000DC140  38 60 03 08 */ li r3, 0x308
/* 800DF204 000DC144  38 80 04 01 */ li r4, 0x401
/* 800DF208 000DC148  38 BF 37 E0 */ addi r5, r31, 0x37e0
/* 800DF20C 000DC14C  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 800DF210 000DC150  7C 06 07 74 */ extsb r6, r0
/* 800DF214 000DC154  38 E0 00 00 */ li r7, 0
/* 800DF218 000DC158  39 00 00 00 */ li r8, 0
/* 800DF21C 000DC15C  39 20 FF FF */ li r9, -1
/* 800DF220 000DC160  39 40 00 00 */ li r10, 0
/* 800DF224 000DC164  4B F3 AB E1 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800DF228 000DC168  28 03 00 00 */ cmplwi r3, 0
/* 800DF22C 000DC16C  41 82 00 34 */ beq lbl_800DF260
/* 800DF230 000DC170  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF234 000DC174  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF238 000DC178  A8 64 5D F6 */ lha r3, 0x5df6(r4)
/* 800DF23C 000DC17C  38 03 FF FF */ addi r0, r3, -1
/* 800DF240 000DC180  B0 04 5D F6 */ sth r0, 0x5df6(r4)
/* 800DF244 000DC184  48 00 00 1C */ b lbl_800DF260
lbl_800DF248:
/* 800DF248 000DC188  A8 1F 30 1C */ lha r0, 0x301c(r31)
/* 800DF24C 000DC18C  2C 00 00 00 */ cmpwi r0, 0
/* 800DF250 000DC190  41 82 00 0C */ beq lbl_800DF25C
/* 800DF254 000DC194  3B A0 00 43 */ li r29, 0x43
/* 800DF258 000DC198  48 00 00 08 */ b lbl_800DF260
lbl_800DF25C:
/* 800DF25C 000DC19C  3B A0 00 44 */ li r29, 0x44
lbl_800DF260:
/* 800DF260 000DC1A0  7F E3 FB 78 */ mr r3, r31
/* 800DF264 000DC1A4  7F A4 EB 78 */ mr r4, r29
/* 800DF268 000DC1A8  3C A0 80 39 */ lis r5, lbl_8038E658@ha
/* 800DF26C 000DC1AC  38 A5 E6 58 */ addi r5, r5, lbl_8038E658@l
/* 800DF270 000DC1B0  C0 25 00 08 */ lfs f1, 8(r5)
/* 800DF274 000DC1B4  4B FE 0E 11 */ bl daAlink_c_NS_changeItemBck
/* 800DF278 000DC1B8  38 00 00 00 */ li r0, 0
/* 800DF27C 000DC1BC  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 800DF280 000DC1C0  48 00 04 AC */ b lbl_800DF72C
lbl_800DF284:
/* 800DF284 000DC1C4  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF288 000DC1C8  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF28C 000DC1CC  40 82 00 74 */ bne lbl_800DF300
/* 800DF290 000DC1D0  7F E3 FB 78 */ mr r3, r31
/* 800DF294 000DC1D4  4B FD 33 71 */ bl itemButton__9daAlink_cFv
/* 800DF298 000DC1D8  2C 03 00 00 */ cmpwi r3, 0
/* 800DF29C 000DC1DC  40 82 04 90 */ bne lbl_800DF72C
/* 800DF2A0 000DC1E0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DF2A4 000DC1E4  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 800DF2A8 000DC1E8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DF2AC 000DC1EC  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800DF2B0 000DC1F0  D0 21 00 30 */ stfs f1, 0x30(r1)
/* 800DF2B4 000DC1F4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF2B8 000DC1F8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF2BC 000DC1FC  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DF2C0 000DC200  38 80 00 01 */ li r4, 1
/* 800DF2C4 000DC204  38 A0 00 01 */ li r5, 1
/* 800DF2C8 000DC208  38 C1 00 28 */ addi r6, r1, 0x28
/* 800DF2CC 000DC20C  4B F9 07 59 */ bl dVibration_c_NS_StartShock
/* 800DF2D0 000DC210  7F E3 FB 78 */ mr r3, r31
/* 800DF2D4 000DC214  3C 80 00 02 */ lis r4, 0x000200B0@ha
/* 800DF2D8 000DC218  38 84 00 B0 */ addi r4, r4, 0x000200B0@l
/* 800DF2DC 000DC21C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DF2E0 000DC220  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DF2E4 000DC224  7D 89 03 A6 */ mtctr r12
/* 800DF2E8 000DC228  4E 80 04 21 */ bctrl
/* 800DF2EC 000DC22C  38 00 00 01 */ li r0, 1
/* 800DF2F0 000DC230  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 800DF2F4 000DC234  7F E3 FB 78 */ mr r3, r31
/* 800DF2F8 000DC238  4B FD 09 C5 */ bl daAlink_c_NS_resetFacePriAnime
/* 800DF2FC 000DC23C  48 00 04 30 */ b lbl_800DF72C
lbl_800DF300:
/* 800DF300 000DC240  7F E3 FB 78 */ mr r3, r31
/* 800DF304 000DC244  4B FD 33 01 */ bl itemButton__9daAlink_cFv
/* 800DF308 000DC248  2C 03 00 00 */ cmpwi r3, 0
/* 800DF30C 000DC24C  40 82 01 50 */ bne lbl_800DF45C
/* 800DF310 000DC250  28 1D 00 00 */ cmplwi r29, 0
/* 800DF314 000DC254  41 82 01 04 */ beq lbl_800DF418
/* 800DF318 000DC258  A8 1F 30 1C */ lha r0, 0x301c(r31)
/* 800DF31C 000DC25C  2C 00 00 00 */ cmpwi r0, 0
/* 800DF320 000DC260  41 82 00 34 */ beq lbl_800DF354
/* 800DF324 000DC264  38 00 00 01 */ li r0, 1
/* 800DF328 000DC268  90 1D 00 B0 */ stw r0, 0xb0(r29)
/* 800DF32C 000DC26C  38 80 00 01 */ li r4, 1
/* 800DF330 000DC270  88 1D 09 3C */ lbz r0, 0x93c(r29)
/* 800DF334 000DC274  28 00 00 01 */ cmplwi r0, 1
/* 800DF338 000DC278  40 82 00 10 */ bne lbl_800DF348
/* 800DF33C 000DC27C  3C 60 00 08 */ lis r3, 0x0008000C@ha
/* 800DF340 000DC280  3B A3 00 0C */ addi r29, r3, 0x0008000C@l
/* 800DF344 000DC284  48 00 00 3C */ b lbl_800DF380
lbl_800DF348:
/* 800DF348 000DC288  3C 60 00 08 */ lis r3, 0x00080002@ha
/* 800DF34C 000DC28C  3B A3 00 02 */ addi r29, r3, 0x00080002@l
/* 800DF350 000DC290  48 00 00 30 */ b lbl_800DF380
lbl_800DF354:
/* 800DF354 000DC294  38 00 00 02 */ li r0, 2
/* 800DF358 000DC298  90 1D 00 B0 */ stw r0, 0xb0(r29)
/* 800DF35C 000DC29C  38 80 00 02 */ li r4, 2
/* 800DF360 000DC2A0  88 1D 09 3C */ lbz r0, 0x93c(r29)
/* 800DF364 000DC2A4  28 00 00 01 */ cmplwi r0, 1
/* 800DF368 000DC2A8  40 82 00 10 */ bne lbl_800DF378
/* 800DF36C 000DC2AC  3C 60 00 08 */ lis r3, 0x0008000D@ha
/* 800DF370 000DC2B0  3B A3 00 0D */ addi r29, r3, 0x0008000D@l
/* 800DF374 000DC2B4  48 00 00 0C */ b lbl_800DF380
lbl_800DF378:
/* 800DF378 000DC2B8  3C 60 00 08 */ lis r3, 0x00080003@ha
/* 800DF37C 000DC2BC  3B A3 00 03 */ addi r29, r3, 0x00080003@l
lbl_800DF380:
/* 800DF380 000DC2C0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DF384 000DC2C4  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 800DF388 000DC2C8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DF38C 000DC2CC  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 800DF390 000DC2D0  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 800DF394 000DC2D4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF398 000DC2D8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF39C 000DC2DC  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DF3A0 000DC2E0  38 A0 00 01 */ li r5, 1
/* 800DF3A4 000DC2E4  38 C1 00 1C */ addi r6, r1, 0x1c
/* 800DF3A8 000DC2E8  4B F9 06 7D */ bl dVibration_c_NS_StartShock
/* 800DF3AC 000DC2EC  7F E3 FB 78 */ mr r3, r31
/* 800DF3B0 000DC2F0  7F A4 EB 78 */ mr r4, r29
/* 800DF3B4 000DC2F4  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DF3B8 000DC2F8  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DF3BC 000DC2FC  7D 89 03 A6 */ mtctr r12
/* 800DF3C0 000DC300  4E 80 04 21 */ bctrl
/* 800DF3C4 000DC304  A8 1F 30 1E */ lha r0, 0x301e(r31)
/* 800DF3C8 000DC308  2C 00 00 01 */ cmpwi r0, 1
/* 800DF3CC 000DC30C  40 82 00 10 */ bne lbl_800DF3DC
/* 800DF3D0 000DC310  88 7F 2F 9C */ lbz r3, 0x2f9c(r31)
/* 800DF3D4 000DC314  38 80 FF FF */ li r4, -1
/* 800DF3D8 000DC318  4B F4 F4 65 */ bl dComIfGp_addSelectItemNum
lbl_800DF3DC:
/* 800DF3DC 000DC31C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF3E0 000DC320  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF3E4 000DC324  A8 64 5D F4 */ lha r3, 0x5df4(r4)
/* 800DF3E8 000DC328  38 03 FF FF */ addi r0, r3, -1
/* 800DF3EC 000DC32C  B0 04 5D F4 */ sth r0, 0x5df4(r4)
/* 800DF3F0 000DC330  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800DF3F4 000DC334  48 07 F9 09 */ bl daPy_actorKeep_c_NS_clearData
/* 800DF3F8 000DC338  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800DF3FC 000DC33C  64 00 20 00 */ oris r0, r0, 0x2000
/* 800DF400 000DC340  90 1F 05 80 */ stw r0, 0x580(r31)
/* 800DF404 000DC344  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DF408 000DC348  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DF40C 000DC34C  A8 03 00 2A */ lha r0, 0x2a(r3)
/* 800DF410 000DC350  B0 1F 30 A4 */ sth r0, 0x30a4(r31)
/* 800DF414 000DC354  48 00 00 20 */ b lbl_800DF434
lbl_800DF418:
/* 800DF418 000DC358  7F E3 FB 78 */ mr r3, r31
/* 800DF41C 000DC35C  3C 80 00 02 */ lis r4, 0x0002003C@ha
/* 800DF420 000DC360  38 84 00 3C */ addi r4, r4, 0x0002003C@l
/* 800DF424 000DC364  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DF428 000DC368  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DF42C 000DC36C  7D 89 03 A6 */ mtctr r12
/* 800DF430 000DC370  4E 80 04 21 */ bctrl
lbl_800DF434:
/* 800DF434 000DC374  38 00 00 01 */ li r0, 1
/* 800DF438 000DC378  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 800DF43C 000DC37C  7F E3 FB 78 */ mr r3, r31
/* 800DF440 000DC380  4B FD 08 7D */ bl daAlink_c_NS_resetFacePriAnime
/* 800DF444 000DC384  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF448 000DC388  28 00 00 43 */ cmplwi r0, 0x43
/* 800DF44C 000DC38C  40 82 02 E0 */ bne lbl_800DF72C
/* 800DF450 000DC390  38 00 00 00 */ li r0, 0
/* 800DF454 000DC394  B0 1F 30 1E */ sth r0, 0x301e(r31)
/* 800DF458 000DC398  48 00 02 D4 */ b lbl_800DF72C
lbl_800DF45C:
/* 800DF45C 000DC39C  7F E3 FB 78 */ mr r3, r31
/* 800DF460 000DC3A0  4B FF F7 69 */ bl daAlink_c_NS_changeArrowType
/* 800DF464 000DC3A4  48 00 02 C8 */ b lbl_800DF72C
lbl_800DF468:
/* 800DF468 000DC3A8  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800DF46C 000DC3AC  28 00 00 09 */ cmplwi r0, 9
/* 800DF470 000DC3B0  40 82 00 A8 */ bne lbl_800DF518
/* 800DF474 000DC3B4  7F C3 F3 78 */ mr r3, r30
/* 800DF478 000DC3B8  48 07 F0 55 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800DF47C 000DC3BC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DF480 000DC3C0  41 82 02 AC */ beq lbl_800DF72C
/* 800DF484 000DC3C4  7F E3 FB 78 */ mr r3, r31
/* 800DF488 000DC3C8  38 80 00 0A */ li r4, 0xa
/* 800DF48C 000DC3CC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DF490 000DC3D0  C0 42 92 BC */ lfs f2, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DF494 000DC3D4  4B FC DF 15 */ bl daAlink_c_NS_setUpperAnimeBaseSpeed
/* 800DF498 000DC3D8  7F E3 FB 78 */ mr r3, r31
/* 800DF49C 000DC3DC  38 80 00 09 */ li r4, 9
/* 800DF4A0 000DC3E0  4B FD 06 09 */ bl daAlink_c_NS_setFacePriTexture
/* 800DF4A4 000DC3E4  7F E3 FB 78 */ mr r3, r31
/* 800DF4A8 000DC3E8  38 80 00 E6 */ li r4, 0xe6
/* 800DF4AC 000DC3EC  38 A0 00 01 */ li r5, 1
/* 800DF4B0 000DC3F0  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800DF4B4 000DC3F4  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800DF4B8 000DC3F8  4B FC FF F9 */ bl daAlink_c_NS_setFaceBck
/* 800DF4BC 000DC3FC  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF4C0 000DC400  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF4C4 000DC404  41 82 02 68 */ beq lbl_800DF72C
/* 800DF4C8 000DC408  7F E3 FB 78 */ mr r3, r31
/* 800DF4CC 000DC40C  38 80 00 42 */ li r4, 0x42
/* 800DF4D0 000DC410  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DF4D4 000DC414  4B FE 0B B1 */ bl daAlink_c_NS_changeItemBck
/* 800DF4D8 000DC418  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DF4DC 000DC41C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DF4E0 000DC420  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DF4E4 000DC424  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800DF4E8 000DC428  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 800DF4EC 000DC42C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF4F0 000DC430  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF4F4 000DC434  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DF4F8 000DC438  38 80 00 01 */ li r4, 1
/* 800DF4FC 000DC43C  38 A0 00 01 */ li r5, 1
/* 800DF500 000DC440  38 C1 00 10 */ addi r6, r1, 0x10
/* 800DF504 000DC444  4B F9 06 0D */ bl dVibration_c_NS_StartQuake
/* 800DF508 000DC448  80 1F 05 7C */ lwz r0, 0x57c(r31)
/* 800DF50C 000DC44C  60 00 00 04 */ ori r0, r0, 4
/* 800DF510 000DC450  90 1F 05 7C */ stw r0, 0x57c(r31)
/* 800DF514 000DC454  48 00 02 18 */ b lbl_800DF72C
lbl_800DF518:
/* 800DF518 000DC458  28 00 00 0D */ cmplwi r0, 0xd
/* 800DF51C 000DC45C  40 82 01 2C */ bne lbl_800DF648
/* 800DF520 000DC460  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 800DF524 000DC464  2C 00 00 00 */ cmpwi r0, 0
/* 800DF528 000DC468  40 82 00 10 */ bne lbl_800DF538
/* 800DF52C 000DC46C  A8 1F 30 8E */ lha r0, 0x308e(r31)
/* 800DF530 000DC470  2C 00 00 00 */ cmpwi r0, 0
/* 800DF534 000DC474  40 82 00 3C */ bne lbl_800DF570
lbl_800DF538:
/* 800DF538 000DC478  A8 1F 30 1A */ lha r0, 0x301a(r31)
/* 800DF53C 000DC47C  2C 00 00 00 */ cmpwi r0, 0
/* 800DF540 000DC480  40 82 00 60 */ bne lbl_800DF5A0
/* 800DF544 000DC484  7F E3 FB 78 */ mr r3, r31
/* 800DF548 000DC488  4B FD 30 BD */ bl itemButton__9daAlink_cFv
/* 800DF54C 000DC48C  2C 03 00 00 */ cmpwi r3, 0
/* 800DF550 000DC490  40 82 00 50 */ bne lbl_800DF5A0
/* 800DF554 000DC494  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 800DF558 000DC498  2C 00 00 00 */ cmpwi r0, 0
/* 800DF55C 000DC49C  40 82 00 44 */ bne lbl_800DF5A0
/* 800DF560 000DC4A0  7F E3 FB 78 */ mr r3, r31
/* 800DF564 000DC4A4  4B FF F8 25 */ bl daAlink_c_NS_cancelBowMoveRideNotAtn
/* 800DF568 000DC4A8  2C 03 00 00 */ cmpwi r3, 0
/* 800DF56C 000DC4AC  41 82 00 34 */ beq lbl_800DF5A0
lbl_800DF570:
/* 800DF570 000DC4B0  7F E3 FB 78 */ mr r3, r31
/* 800DF574 000DC4B4  38 80 00 02 */ li r4, 2
/* 800DF578 000DC4B8  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800DF57C 000DC4BC  4B FC E1 A9 */ bl daAlink_c_NS_resetUpperAnime
/* 800DF580 000DC4C0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF584 000DC4C4  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF588 000DC4C8  80 64 5F 18 */ lwz r3, 0x5f18(r4)
/* 800DF58C 000DC4CC  38 00 EF BF */ li r0, -4161
/* 800DF590 000DC4D0  7C 60 00 38 */ and r0, r3, r0
/* 800DF594 000DC4D4  90 04 5F 18 */ stw r0, 0x5f18(r4)
/* 800DF598 000DC4D8  38 60 00 01 */ li r3, 1
/* 800DF59C 000DC4DC  48 00 01 E4 */ b lbl_800DF780
lbl_800DF5A0:
/* 800DF5A0 000DC4E0  A8 1F 30 1A */ lha r0, 0x301a(r31)
/* 800DF5A4 000DC4E4  2C 00 00 00 */ cmpwi r0, 0
/* 800DF5A8 000DC4E8  40 82 00 74 */ bne lbl_800DF61C
/* 800DF5AC 000DC4EC  7F E3 FB 78 */ mr r3, r31
/* 800DF5B0 000DC4F0  4B FD 30 55 */ bl itemButton__9daAlink_cFv
/* 800DF5B4 000DC4F4  2C 03 00 00 */ cmpwi r3, 0
/* 800DF5B8 000DC4F8  40 82 00 10 */ bne lbl_800DF5C8
/* 800DF5BC 000DC4FC  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 800DF5C0 000DC500  2C 00 00 00 */ cmpwi r0, 0
/* 800DF5C4 000DC504  41 82 00 58 */ beq lbl_800DF61C
lbl_800DF5C8:
/* 800DF5C8 000DC508  7F E3 FB 78 */ mr r3, r31
/* 800DF5CC 000DC50C  4B FD 93 65 */ bl daAlink_c_NS_checkReadyItem
/* 800DF5D0 000DC510  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DF5D4 000DC514  41 82 00 48 */ beq lbl_800DF61C
/* 800DF5D8 000DC518  A8 1F 30 A4 */ lha r0, 0x30a4(r31)
/* 800DF5DC 000DC51C  2C 00 00 00 */ cmpwi r0, 0
/* 800DF5E0 000DC520  41 82 00 10 */ beq lbl_800DF5F0
/* 800DF5E4 000DC524  A8 1F 30 1E */ lha r0, 0x301e(r31)
/* 800DF5E8 000DC528  2C 00 00 01 */ cmpwi r0, 1
/* 800DF5EC 000DC52C  41 82 00 30 */ beq lbl_800DF61C
lbl_800DF5F0:
/* 800DF5F0 000DC530  7F E3 FB 78 */ mr r3, r31
/* 800DF5F4 000DC534  4B FF F9 C5 */ bl daAlink_c_NS_setBowReloadAnime
/* 800DF5F8 000DC538  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF5FC 000DC53C  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF600 000DC540  40 82 00 10 */ bne lbl_800DF610
/* 800DF604 000DC544  38 00 00 00 */ li r0, 0
/* 800DF608 000DC548  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 800DF60C 000DC54C  48 00 00 24 */ b lbl_800DF630
lbl_800DF610:
/* 800DF610 000DC550  7F E3 FB 78 */ mr r3, r31
/* 800DF614 000DC554  4B FF F4 29 */ bl daAlink_c_NS_makeArrow
/* 800DF618 000DC558  48 00 00 18 */ b lbl_800DF630
lbl_800DF61C:
/* 800DF61C 000DC55C  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF620 000DC560  28 00 00 5A */ cmplwi r0, 0x5a
/* 800DF624 000DC564  40 82 00 0C */ bne lbl_800DF630
/* 800DF628 000DC568  7F E3 FB 78 */ mr r3, r31
/* 800DF62C 000DC56C  4B FF F5 9D */ bl daAlink_c_NS_changeArrowType
lbl_800DF630:
/* 800DF630 000DC570  A8 7F 30 1A */ lha r3, 0x301a(r31)
/* 800DF634 000DC574  2C 03 00 00 */ cmpwi r3, 0
/* 800DF638 000DC578  41 82 00 F4 */ beq lbl_800DF72C
/* 800DF63C 000DC57C  38 03 FF FF */ addi r0, r3, -1
/* 800DF640 000DC580  B0 1F 30 1A */ sth r0, 0x301a(r31)
/* 800DF644 000DC584  48 00 00 E8 */ b lbl_800DF72C
lbl_800DF648:
/* 800DF648 000DC588  28 00 00 0C */ cmplwi r0, 0xc
/* 800DF64C 000DC58C  40 82 00 E0 */ bne lbl_800DF72C
/* 800DF650 000DC590  C0 3F 20 58 */ lfs f1, 0x2058(r31)
/* 800DF654 000DC594  C0 02 93 44 */ lfs f0, lbl_80452D44-_SDA2_BASE_(r2)
/* 800DF658 000DC598  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DF65C 000DC59C  4C 41 13 82 */ cror 2, 1, 2
/* 800DF660 000DC5A0  40 82 00 10 */ bne lbl_800DF670
/* 800DF664 000DC5A4  38 00 00 05 */ li r0, 5
/* 800DF668 000DC5A8  98 1F 2F 97 */ stb r0, 0x2f97(r31)
/* 800DF66C 000DC5AC  48 00 00 1C */ b lbl_800DF688
lbl_800DF670:
/* 800DF670 000DC5B0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DF674 000DC5B4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DF678 000DC5B8  4C 41 13 82 */ cror 2, 1, 2
/* 800DF67C 000DC5BC  40 82 00 0C */ bne lbl_800DF688
/* 800DF680 000DC5C0  38 00 00 04 */ li r0, 4
/* 800DF684 000DC5C4  98 1F 2F 96 */ stb r0, 0x2f96(r31)
lbl_800DF688:
/* 800DF688 000DC5C8  38 7F 20 48 */ addi r3, r31, 0x2048
/* 800DF68C 000DC5CC  48 07 EE 41 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800DF690 000DC5D0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DF694 000DC5D4  41 82 00 44 */ beq lbl_800DF6D8
/* 800DF698 000DC5D8  7F E3 FB 78 */ mr r3, r31
/* 800DF69C 000DC5DC  4B FF F6 ED */ bl daAlink_c_NS_cancelBowMoveRideNotAtn
/* 800DF6A0 000DC5E0  2C 03 00 00 */ cmpwi r3, 0
/* 800DF6A4 000DC5E4  41 82 00 34 */ beq lbl_800DF6D8
/* 800DF6A8 000DC5E8  7F E3 FB 78 */ mr r3, r31
/* 800DF6AC 000DC5EC  38 80 00 02 */ li r4, 2
/* 800DF6B0 000DC5F0  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800DF6B4 000DC5F4  4B FC E0 71 */ bl daAlink_c_NS_resetUpperAnime
/* 800DF6B8 000DC5F8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DF6BC 000DC5FC  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF6C0 000DC600  80 64 5F 18 */ lwz r3, 0x5f18(r4)
/* 800DF6C4 000DC604  38 00 EF BF */ li r0, -4161
/* 800DF6C8 000DC608  7C 60 00 38 */ and r0, r3, r0
/* 800DF6CC 000DC60C  90 04 5F 18 */ stw r0, 0x5f18(r4)
/* 800DF6D0 000DC610  38 60 00 01 */ li r3, 1
/* 800DF6D4 000DC614  48 00 00 AC */ b lbl_800DF780
lbl_800DF6D8:
/* 800DF6D8 000DC618  38 7F 20 48 */ addi r3, r31, 0x2048
/* 800DF6DC 000DC61C  48 07 ED F1 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800DF6E0 000DC620  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DF6E4 000DC624  40 82 00 2C */ bne lbl_800DF710
/* 800DF6E8 000DC628  C0 3F 20 58 */ lfs f1, 0x2058(r31)
/* 800DF6EC 000DC62C  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DF6F0 000DC630  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DF6F4 000DC634  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800DF6F8 000DC638  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DF6FC 000DC63C  40 81 00 1C */ ble lbl_800DF718
/* 800DF700 000DC640  7F E3 FB 78 */ mr r3, r31
/* 800DF704 000DC644  4B FD 2F 01 */ bl itemButton__9daAlink_cFv
/* 800DF708 000DC648  2C 03 00 00 */ cmpwi r3, 0
/* 800DF70C 000DC64C  41 82 00 0C */ beq lbl_800DF718
lbl_800DF710:
/* 800DF710 000DC650  7F E3 FB 78 */ mr r3, r31
/* 800DF714 000DC654  4B FF F7 C9 */ bl daAlink_c_NS_setBowReadyAnime
lbl_800DF718:
/* 800DF718 000DC658  A8 7F 30 1A */ lha r3, 0x301a(r31)
/* 800DF71C 000DC65C  2C 03 00 00 */ cmpwi r3, 0
/* 800DF720 000DC660  41 82 00 0C */ beq lbl_800DF72C
/* 800DF724 000DC664  38 03 FF FF */ addi r0, r3, -1
/* 800DF728 000DC668  B0 1F 30 1A */ sth r0, 0x301a(r31)
lbl_800DF72C:
/* 800DF72C 000DC66C  A0 7F 1F BC */ lhz r3, 0x1fbc(r31)
/* 800DF730 000DC670  28 03 00 0D */ cmplwi r3, 0xd
/* 800DF734 000DC674  41 82 00 1C */ beq lbl_800DF750
/* 800DF738 000DC678  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DF73C 000DC67C  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DF740 000DC680  40 82 00 2C */ bne lbl_800DF76C
/* 800DF744 000DC684  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 800DF748 000DC688  28 00 00 0A */ cmplwi r0, 0xa
/* 800DF74C 000DC68C  40 82 00 20 */ bne lbl_800DF76C
lbl_800DF750:
/* 800DF750 000DC690  C0 3F 33 DC */ lfs f1, 0x33dc(r31)
/* 800DF754 000DC694  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DF758 000DC698  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DF75C 000DC69C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800DF760 000DC6A0  EC 01 00 2A */ fadds f0, f1, f0
/* 800DF764 000DC6A4  D0 1F 33 DC */ stfs f0, 0x33dc(r31)
/* 800DF768 000DC6A8  48 00 00 0C */ b lbl_800DF774
lbl_800DF76C:
/* 800DF76C 000DC6AC  C0 1F 20 58 */ lfs f0, 0x2058(r31)
/* 800DF770 000DC6B0  D0 1F 33 DC */ stfs f0, 0x33dc(r31)
lbl_800DF774:
/* 800DF774 000DC6B4  7F E3 FB 78 */ mr r3, r31
/* 800DF778 000DC6B8  38 80 00 00 */ li r4, 0
/* 800DF77C 000DC6BC  4B FD 7A 71 */ bl daAlink_c_NS_cancelUpperItemReadyAnime
lbl_800DF780:
/* 800DF780 000DC6C0  39 61 00 50 */ addi r11, r1, 0x50
/* 800DF784 000DC6C4  48 28 2A A5 */ bl _restgpr_29
/* 800DF788 000DC6C8  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800DF78C 000DC6CC  7C 08 03 A6 */ mtlr r0
/* 800DF790 000DC6D0  38 21 00 50 */ addi r1, r1, 0x50
/* 800DF794 000DC6D4  4E 80 00 20 */ blr
