/* 800DA180 000D70C0  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800DA184 000D70C4  7C 08 02 A6 */ mflr r0
/* 800DA188 000D70C8  90 01 00 44 */ stw r0, 0x44(r1)
/* 800DA18C 000D70CC  39 61 00 40 */ addi r11, r1, 0x40
/* 800DA190 000D70D0  48 28 80 3D */ bl _savegpr_25
/* 800DA194 000D70D4  7C 7A 1B 78 */ mr r26, r3
/* 800DA198 000D70D8  7C 9B 23 78 */ mr r27, r4
/* 800DA19C 000D70DC  7C BC 2B 78 */ mr r28, r5
/* 800DA1A0 000D70E0  7C DD 33 78 */ mr r29, r6
/* 800DA1A4 000D70E4  7C FE 3B 78 */ mr r30, r7
/* 800DA1A8 000D70E8  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800DA1AC 000D70EC  3B 24 D6 58 */ addi r25, r4, lbl_8038D658@l
/* 800DA1B0 000D70F0  38 80 00 33 */ li r4, 0x33
/* 800DA1B4 000D70F4  4B FE 8B F1 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800DA1B8 000D70F8  2C 03 00 00 */ cmpwi r3, 0
/* 800DA1BC 000D70FC  40 82 00 0C */ bne lbl_800DA1C8
/* 800DA1C0 000D7100  38 60 00 00 */ li r3, 0
/* 800DA1C4 000D7104  48 00 03 78 */ b lbl_800DA53C
lbl_800DA1C8:
/* 800DA1C8 000D7108  2C 1C 00 00 */ cmpwi r28, 0
/* 800DA1CC 000D710C  3B F9 0D 14 */ addi r31, r25, 0xd14
/* 800DA1D0 000D7110  41 82 00 08 */ beq lbl_800DA1D8
/* 800DA1D4 000D7114  3B F9 0C 58 */ addi r31, r25, 0xc58
lbl_800DA1D8:
/* 800DA1D8 000D7118  38 00 00 00 */ li r0, 0
/* 800DA1DC 000D711C  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DA1E0 000D7120  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DA1E4 000D7124  93 7A 31 98 */ stw r27, 0x3198(r26)
/* 800DA1E8 000D7128  7F 43 D3 78 */ mr r3, r26
/* 800DA1EC 000D712C  48 00 E0 AD */ bl offGoatStopGame__9daAlink_cFv
/* 800DA1F0 000D7130  38 60 00 00 */ li r3, 0
/* 800DA1F4 000D7134  B0 7A 30 10 */ sth r3, 0x3010(r26)
/* 800DA1F8 000D7138  2C 1B FF FC */ cmpwi r27, -4
/* 800DA1FC 000D713C  40 82 00 88 */ bne lbl_800DA284
/* 800DA200 000D7140  80 1A 05 78 */ lwz r0, 0x578(r26)
/* 800DA204 000D7144  60 00 10 00 */ ori r0, r0, 0x1000
/* 800DA208 000D7148  90 1A 05 78 */ stw r0, 0x578(r26)
/* 800DA20C 000D714C  B0 7A 30 08 */ sth r3, 0x3008(r26)
/* 800DA210 000D7150  38 00 00 01 */ li r0, 1
/* 800DA214 000D7154  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DA218 000D7158  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DA21C 000D715C  7F 43 D3 78 */ mr r3, r26
/* 800DA220 000D7160  3C 80 00 01 */ lis r4, 0x00010055@ha
/* 800DA224 000D7164  38 84 00 55 */ addi r4, r4, 0x00010055@l
/* 800DA228 000D7168  81 9A 06 28 */ lwz r12, 0x628(r26)
/* 800DA22C 000D716C  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DA230 000D7170  7D 89 03 A6 */ mtctr r12
/* 800DA234 000D7174  4E 80 04 21 */ bctrl
/* 800DA238 000D7178  7F 43 D3 78 */ mr r3, r26
/* 800DA23C 000D717C  3C 80 00 02 */ lis r4, 0x00020015@ha
/* 800DA240 000D7180  38 84 00 15 */ addi r4, r4, 0x00020015@l
/* 800DA244 000D7184  81 9A 06 28 */ lwz r12, 0x628(r26)
/* 800DA248 000D7188  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800DA24C 000D718C  7D 89 03 A6 */ mtctr r12
/* 800DA250 000D7190  4E 80 04 21 */ bctrl
/* 800DA254 000D7194  7F 43 D3 78 */ mr r3, r26
/* 800DA258 000D7198  38 80 01 5F */ li r4, 0x15f
/* 800DA25C 000D719C  4B FD 2D 25 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DA260 000D71A0  38 00 00 88 */ li r0, 0x88
/* 800DA264 000D71A4  90 1A 32 CC */ stw r0, 0x32cc(r26)
/* 800DA268 000D71A8  C0 1F 00 24 */ lfs f0, 0x24(r31)
/* 800DA26C 000D71AC  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA270 000D71B0  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800DA274 000D71B4  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA278 000D71B8  C0 02 93 B8 */ lfs f0, lbl_80452DB8-_SDA2_BASE_(r2)
/* 800DA27C 000D71BC  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA280 000D71C0  48 00 02 4C */ b lbl_800DA4CC
lbl_800DA284:
/* 800DA284 000D71C4  2C 1B 00 00 */ cmpwi r27, 0
/* 800DA288 000D71C8  40 80 00 FC */ bge lbl_800DA384
/* 800DA28C 000D71CC  2C 1B FF FD */ cmpwi r27, -3
/* 800DA290 000D71D0  40 82 00 44 */ bne lbl_800DA2D4
/* 800DA294 000D71D4  3B 80 00 87 */ li r28, 0x87
/* 800DA298 000D71D8  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA29C 000D71DC  38 A0 FF FF */ li r5, -1
/* 800DA2A0 000D71E0  C0 62 93 3C */ lfs f3, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800DA2A4 000D71E4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DA2A8 000D71E8  38 00 FF FF */ li r0, -1
/* 800DA2AC 000D71EC  B0 1A 30 08 */ sth r0, 0x3008(r26)
/* 800DA2B0 000D71F0  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 800DA2B4 000D71F4  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA2B8 000D71F8  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800DA2BC 000D71FC  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA2C0 000D7200  38 00 00 04 */ li r0, 4
/* 800DA2C4 000D7204  98 1A 2F 9D */ stb r0, 0x2f9d(r26)
/* 800DA2C8 000D7208  C0 02 93 C0 */ lfs f0, lbl_80452DC0-_SDA2_BASE_(r2)
/* 800DA2CC 000D720C  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA2D0 000D7210  48 00 00 A0 */ b lbl_800DA370
lbl_800DA2D4:
/* 800DA2D4 000D7214  2C 1B FF FE */ cmpwi r27, -2
/* 800DA2D8 000D7218  40 82 00 0C */ bne lbl_800DA2E4
/* 800DA2DC 000D721C  C0 62 92 C0 */ lfs f3, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA2E0 000D7220  48 00 00 0C */ b lbl_800DA2EC
lbl_800DA2E4:
/* 800DA2E4 000D7224  38 79 0C 58 */ addi r3, r25, 0xc58
/* 800DA2E8 000D7228  C0 63 00 20 */ lfs f3, 0x20(r3)
lbl_800DA2EC:
/* 800DA2EC 000D722C  C0 02 93 34 */ lfs f0, lbl_80452D34-_SDA2_BASE_(r2)
/* 800DA2F0 000D7230  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA2F4 000D7234  3B 80 00 88 */ li r28, 0x88
/* 800DA2F8 000D7238  FC 40 00 90 */ fmr f2, f0
/* 800DA2FC 000D723C  38 A0 FF FF */ li r5, -1
/* 800DA300 000D7240  C0 1F 00 24 */ lfs f0, 0x24(r31)
/* 800DA304 000D7244  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA308 000D7248  2C 1B FF FB */ cmpwi r27, -5
/* 800DA30C 000D724C  40 82 00 1C */ bne lbl_800DA328
/* 800DA310 000D7250  80 1A 06 10 */ lwz r0, 0x610(r26)
/* 800DA314 000D7254  2C 00 00 00 */ cmpwi r0, 0
/* 800DA318 000D7258  40 81 00 10 */ ble lbl_800DA328
/* 800DA31C 000D725C  B0 1A 30 08 */ sth r0, 0x3008(r26)
/* 800DA320 000D7260  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA324 000D7264  48 00 00 38 */ b lbl_800DA35C
lbl_800DA328:
/* 800DA328 000D7268  2C 1B FF FE */ cmpwi r27, -2
/* 800DA32C 000D726C  40 82 00 20 */ bne lbl_800DA34C
/* 800DA330 000D7270  A0 1A 06 04 */ lhz r0, 0x604(r26)
/* 800DA334 000D7274  2C 00 00 01 */ cmpwi r0, 1
/* 800DA338 000D7278  40 82 00 14 */ bne lbl_800DA34C
/* 800DA33C 000D727C  38 00 00 1E */ li r0, 0x1e
/* 800DA340 000D7280  B0 1A 30 08 */ sth r0, 0x3008(r26)
/* 800DA344 000D7284  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA348 000D7288  48 00 00 14 */ b lbl_800DA35C
lbl_800DA34C:
/* 800DA34C 000D728C  38 00 FF FF */ li r0, -1
/* 800DA350 000D7290  B0 1A 30 08 */ sth r0, 0x3008(r26)
/* 800DA354 000D7294  38 79 0E F4 */ addi r3, r25, 0xef4
/* 800DA358 000D7298  C0 23 00 50 */ lfs f1, 0x50(r3)
lbl_800DA35C:
/* 800DA35C 000D729C  38 00 00 01 */ li r0, 1
/* 800DA360 000D72A0  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DA364 000D72A4  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DA368 000D72A8  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800DA36C 000D72AC  D0 1A 34 80 */ stfs f0, 0x3480(r26)
lbl_800DA370:
/* 800DA370 000D72B0  7F 43 D3 78 */ mr r3, r26
/* 800DA374 000D72B4  7F 84 E3 78 */ mr r4, r28
/* 800DA378 000D72B8  4B FD 2C 95 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800DA37C 000D72BC  93 9A 32 CC */ stw r28, 0x32cc(r26)
/* 800DA380 000D72C0  48 00 01 4C */ b lbl_800DA4CC
lbl_800DA384:
/* 800DA384 000D72C4  B0 7A 30 08 */ sth r3, 0x3008(r26)
/* 800DA388 000D72C8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA38C 000D72CC  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DA390 000D72D0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DA394 000D72D4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800DA398 000D72D8  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DA39C 000D72DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DA3A0 000D72E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DA3A4 000D72E4  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DA3A8 000D72E8  38 80 00 06 */ li r4, 6
/* 800DA3AC 000D72EC  38 A0 00 1F */ li r5, 0x1f
/* 800DA3B0 000D72F0  38 C1 00 08 */ addi r6, r1, 8
/* 800DA3B4 000D72F4  4B F9 56 71 */ bl StartShock__12dVibration_cFii4cXyz
/* 800DA3B8 000D72F8  7F 43 D3 78 */ mr r3, r26
/* 800DA3BC 000D72FC  3C 80 00 03 */ lis r4, 0x0003001A@ha
/* 800DA3C0 000D7300  38 84 00 1A */ addi r4, r4, 0x0003001A@l
/* 800DA3C4 000D7304  4B FE 4D D1 */ bl seStartMapInfo__9daAlink_cFUl
/* 800DA3C8 000D7308  38 00 00 04 */ li r0, 4
/* 800DA3CC 000D730C  98 1A 2F 9D */ stb r0, 0x2f9d(r26)
/* 800DA3D0 000D7310  2C 1B 00 84 */ cmpwi r27, 0x84
/* 800DA3D4 000D7314  40 82 00 40 */ bne lbl_800DA414
/* 800DA3D8 000D7318  7F 43 D3 78 */ mr r3, r26
/* 800DA3DC 000D731C  38 80 00 88 */ li r4, 0x88
/* 800DA3E0 000D7320  38 BF 00 14 */ addi r5, r31, 0x14
/* 800DA3E4 000D7324  4B FD 2D 11 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800DA3E8 000D7328  C0 1F 00 24 */ lfs f0, 0x24(r31)
/* 800DA3EC 000D732C  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA3F0 000D7330  38 00 00 01 */ li r0, 1
/* 800DA3F4 000D7334  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DA3F8 000D7338  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800DA3FC 000D733C  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA400 000D7340  38 00 00 88 */ li r0, 0x88
/* 800DA404 000D7344  90 1A 32 CC */ stw r0, 0x32cc(r26)
/* 800DA408 000D7348  C0 02 93 34 */ lfs f0, lbl_80452D34-_SDA2_BASE_(r2)
/* 800DA40C 000D734C  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA410 000D7350  48 00 00 AC */ b lbl_800DA4BC
lbl_800DA414:
/* 800DA414 000D7354  2C 1B 00 85 */ cmpwi r27, 0x85
/* 800DA418 000D7358  40 82 00 38 */ bne lbl_800DA450
/* 800DA41C 000D735C  7F 43 D3 78 */ mr r3, r26
/* 800DA420 000D7360  38 80 00 89 */ li r4, 0x89
/* 800DA424 000D7364  38 BF 00 28 */ addi r5, r31, 0x28
/* 800DA428 000D7368  4B FD 2C CD */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800DA42C 000D736C  C0 1F 00 38 */ lfs f0, 0x38(r31)
/* 800DA430 000D7370  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA434 000D7374  C0 02 93 C4 */ lfs f0, lbl_80452DC4-_SDA2_BASE_(r2)
/* 800DA438 000D7378  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA43C 000D737C  38 00 00 89 */ li r0, 0x89
/* 800DA440 000D7380  90 1A 32 CC */ stw r0, 0x32cc(r26)
/* 800DA444 000D7384  C0 02 93 44 */ lfs f0, lbl_80452D44-_SDA2_BASE_(r2)
/* 800DA448 000D7388  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA44C 000D738C  48 00 00 70 */ b lbl_800DA4BC
lbl_800DA450:
/* 800DA450 000D7390  2C 1B 00 86 */ cmpwi r27, 0x86
/* 800DA454 000D7394  40 82 00 38 */ bne lbl_800DA48C
/* 800DA458 000D7398  7F 43 D3 78 */ mr r3, r26
/* 800DA45C 000D739C  38 80 00 8A */ li r4, 0x8a
/* 800DA460 000D73A0  38 BF 00 3C */ addi r5, r31, 0x3c
/* 800DA464 000D73A4  4B FD 2C 91 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800DA468 000D73A8  C0 1F 00 4C */ lfs f0, 0x4c(r31)
/* 800DA46C 000D73AC  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA470 000D73B0  C0 02 93 C4 */ lfs f0, lbl_80452DC4-_SDA2_BASE_(r2)
/* 800DA474 000D73B4  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA478 000D73B8  38 00 00 8A */ li r0, 0x8a
/* 800DA47C 000D73BC  90 1A 32 CC */ stw r0, 0x32cc(r26)
/* 800DA480 000D73C0  C0 02 93 44 */ lfs f0, lbl_80452D44-_SDA2_BASE_(r2)
/* 800DA484 000D73C4  D0 1A 34 84 */ stfs f0, 0x3484(r26)
/* 800DA488 000D73C8  48 00 00 34 */ b lbl_800DA4BC
lbl_800DA48C:
/* 800DA48C 000D73CC  7F 43 D3 78 */ mr r3, r26
/* 800DA490 000D73D0  38 80 00 87 */ li r4, 0x87
/* 800DA494 000D73D4  7F E5 FB 78 */ mr r5, r31
/* 800DA498 000D73D8  4B FD 2C 5D */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800DA49C 000D73DC  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 800DA4A0 000D73E0  D0 1A 34 78 */ stfs f0, 0x3478(r26)
/* 800DA4A4 000D73E4  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800DA4A8 000D73E8  D0 1A 34 80 */ stfs f0, 0x3480(r26)
/* 800DA4AC 000D73EC  38 00 00 87 */ li r0, 0x87
/* 800DA4B0 000D73F0  90 1A 32 CC */ stw r0, 0x32cc(r26)
/* 800DA4B4 000D73F4  C0 02 93 C0 */ lfs f0, lbl_80452DC0-_SDA2_BASE_(r2)
/* 800DA4B8 000D73F8  D0 1A 34 84 */ stfs f0, 0x3484(r26)
lbl_800DA4BC:
/* 800DA4BC 000D73FC  2C 1C 00 00 */ cmpwi r28, 0
/* 800DA4C0 000D7400  41 82 00 0C */ beq lbl_800DA4CC
/* 800DA4C4 000D7404  38 00 00 01 */ li r0, 1
/* 800DA4C8 000D7408  B0 1A 30 10 */ sth r0, 0x3010(r26)
lbl_800DA4CC:
/* 800DA4CC 000D740C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DA4D0 000D7410  D0 1A 33 CC */ stfs f0, 0x33cc(r26)
/* 800DA4D4 000D7414  C0 62 93 14 */ lfs f3, lbl_80452D14-_SDA2_BASE_(r2)
/* 800DA4D8 000D7418  C0 5A 34 78 */ lfs f2, 0x3478(r26)
/* 800DA4DC 000D741C  A8 1A 1F D6 */ lha r0, 0x1fd6(r26)
/* 800DA4E0 000D7420  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800DA4E4 000D7424  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800DA4E8 000D7428  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800DA4EC 000D742C  3C 00 43 30 */ lis r0, 0x4330
/* 800DA4F0 000D7430  90 01 00 18 */ stw r0, 0x18(r1)
/* 800DA4F4 000D7434  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 800DA4F8 000D7438  EC 00 08 28 */ fsubs f0, f0, f1
/* 800DA4FC 000D743C  EC 02 00 28 */ fsubs f0, f2, f0
/* 800DA500 000D7440  EC 03 00 24 */ fdivs f0, f3, f0
/* 800DA504 000D7444  D0 1A 34 7C */ stfs f0, 0x347c(r26)
/* 800DA508 000D7448  7F 43 D3 78 */ mr r3, r26
/* 800DA50C 000D744C  7F A4 EB 78 */ mr r4, r29
/* 800DA510 000D7450  38 A0 00 00 */ li r5, 0
/* 800DA514 000D7454  7F C6 F3 78 */ mr r6, r30
/* 800DA518 000D7458  4B FD 36 61 */ bl setOldRootQuaternion__9daAlink_cFsss
/* 800DA51C 000D745C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DA520 000D7460  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DA524 000D7464  A8 1A 04 E6 */ lha r0, 0x4e6(r26)
/* 800DA528 000D7468  B0 1A 04 DE */ sth r0, 0x4de(r26)
/* 800DA52C 000D746C  7F 43 D3 78 */ mr r3, r26
/* 800DA530 000D7470  38 80 00 04 */ li r4, 4
/* 800DA534 000D7474  48 04 6C 8D */ bl setFootEffectProcType__9daAlink_cFi
/* 800DA538 000D7478  38 60 00 01 */ li r3, 1
lbl_800DA53C:
/* 800DA53C 000D747C  39 61 00 40 */ addi r11, r1, 0x40
/* 800DA540 000D7480  48 28 7C D9 */ bl _restgpr_25
/* 800DA544 000D7484  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800DA548 000D7488  7C 08 03 A6 */ mtlr r0
/* 800DA54C 000D748C  38 21 00 40 */ addi r1, r1, 0x40
/* 800DA550 000D7490  4E 80 00 20 */ blr