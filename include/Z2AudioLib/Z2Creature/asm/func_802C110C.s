/* 802C110C 002BE04C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 802C1110 002BE050  7C 08 02 A6 */ mflr r0
/* 802C1114 002BE054  90 01 00 54 */ stw r0, 0x54(r1)
/* 802C1118 002BE058  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 802C111C 002BE05C  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 802C1120 002BE060  DB C1 00 30 */ stfd f30, 0x30(r1)
/* 802C1124 002BE064  F3 C1 00 38 */ psq_st f30, 56(r1), 0, 0
/* 802C1128 002BE068  39 61 00 30 */ addi r11, r1, 0x30
/* 802C112C 002BE06C  48 0A 10 AD */ bl _savegpr_28
/* 802C1130 002BE070  7C 7D 1B 78 */ mr r29, r3
/* 802C1134 002BE074  7C 9E 23 78 */ mr r30, r4
/* 802C1138 002BE078  7C BC 2B 78 */ mr r28, r5
/* 802C113C 002BE07C  80 04 00 00 */ lwz r0, 0(r4)
/* 802C1140 002BE080  90 01 00 08 */ stw r0, 8(r1)
/* 802C1144 002BE084  38 7D 00 08 */ addi r3, r29, 8
/* 802C1148 002BE088  38 81 00 08 */ addi r4, r1, 8
/* 802C114C 002BE08C  81 9D 00 18 */ lwz r12, 0x18(r29)
/* 802C1150 002BE090  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 802C1154 002BE094  7D 89 03 A6 */ mtctr r12
/* 802C1158 002BE098  4E 80 04 21 */ bctrl
/* 802C115C 002BE09C  7C 7F 1B 78 */ mr r31, r3
/* 802C1160 002BE0A0  88 9D 00 A0 */ lbz r4, 0xa0(r29)
/* 802C1164 002BE0A4  38 04 FF E7 */ addi r0, r4, -25
/* 802C1168 002BE0A8  28 00 00 1D */ cmplwi r0, 0x1d
/* 802C116C 002BE0AC  41 81 01 88 */ bgt lbl_802C12F4
/* 802C1170 002BE0B0  3C 80 80 3D */ lis r4, lbl_803CB630@ha
/* 802C1174 002BE0B4  38 84 B6 30 */ addi r4, r4, lbl_803CB630@l
/* 802C1178 002BE0B8  54 00 10 3A */ slwi r0, r0, 2
/* 802C117C 002BE0BC  7C 04 00 2E */ lwzx r0, r4, r0
/* 802C1180 002BE0C0  7C 09 03 A6 */ mtctr r0
/* 802C1184 002BE0C4  4E 80 04 20 */ bctr
/* 802C1188 002BE0C8  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C118C 002BE0CC  3C 63 FF F9 */ addis r3, r3, 0xfff9
/* 802C1190 002BE0D0  28 03 00 96 */ cmplwi r3, 0x96
/* 802C1194 002BE0D4  40 82 00 28 */ bne lbl_802C11BC
/* 802C1198 002BE0D8  38 00 00 01 */ li r0, 1
/* 802C119C 002BE0DC  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C11A0 002BE0E0  7F A4 EB 78 */ mr r4, r29
/* 802C11A4 002BE0E4  28 1D 00 00 */ cmplwi r29, 0
/* 802C11A8 002BE0E8  41 82 00 08 */ beq lbl_802C11B0
/* 802C11AC 002BE0EC  38 9D 00 90 */ addi r4, r29, 0x90
lbl_802C11B0:
/* 802C11B0 002BE0F0  80 6D 85 C8 */ lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 802C11B4 002BE0F4  48 01 AF A9 */ bl remove__10JSUPtrListFP10JSUPtrLink
/* 802C11B8 002BE0F8  48 00 01 3C */ b lbl_802C12F4
lbl_802C11BC:
/* 802C11BC 002BE0FC  88 1D 00 A3 */ lbz r0, 0xa3(r29)
/* 802C11C0 002BE100  28 00 00 00 */ cmplwi r0, 0
/* 802C11C4 002BE104  41 82 01 30 */ beq lbl_802C12F4
/* 802C11C8 002BE108  28 03 00 95 */ cmplwi r3, 0x95
/* 802C11CC 002BE10C  40 82 01 28 */ bne lbl_802C12F4
/* 802C11D0 002BE110  38 00 00 00 */ li r0, 0
/* 802C11D4 002BE114  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C11D8 002BE118  7F A4 EB 78 */ mr r4, r29
/* 802C11DC 002BE11C  28 1D 00 00 */ cmplwi r29, 0
/* 802C11E0 002BE120  41 82 00 08 */ beq lbl_802C11E8
/* 802C11E4 002BE124  38 9D 00 90 */ addi r4, r29, 0x90
lbl_802C11E8:
/* 802C11E8 002BE128  80 6D 85 C8 */ lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 802C11EC 002BE12C  48 01 AD 61 */ bl append__10JSUPtrListFP10JSUPtrLink
/* 802C11F0 002BE130  48 00 01 04 */ b lbl_802C12F4
/* 802C11F4 002BE134  28 1F 00 00 */ cmplwi r31, 0
/* 802C11F8 002BE138  41 82 00 FC */ beq lbl_802C12F4
/* 802C11FC 002BE13C  80 1F 00 00 */ lwz r0, 0(r31)
/* 802C1200 002BE140  28 00 00 00 */ cmplwi r0, 0
/* 802C1204 002BE144  41 82 00 F0 */ beq lbl_802C12F4
/* 802C1208 002BE148  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C120C 002BE14C  3C 03 FF F9 */ addis r0, r3, 0xfff9
/* 802C1210 002BE150  28 00 03 20 */ cmplwi r0, 0x320
/* 802C1214 002BE154  40 82 00 E0 */ bne lbl_802C12F4
/* 802C1218 002BE158  C8 22 C2 28 */ lfd f1, lbl_80455C28-_SDA2_BASE_(r2)
/* 802C121C 002BE15C  93 81 00 14 */ stw r28, 0x14(r1)
/* 802C1220 002BE160  3C 00 43 30 */ lis r0, 0x4330
/* 802C1224 002BE164  90 01 00 10 */ stw r0, 0x10(r1)
/* 802C1228 002BE168  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 802C122C 002BE16C  EC 20 08 28 */ fsubs f1, f0, f1
/* 802C1230 002BE170  C0 42 C2 44 */ lfs f2, lbl_80455C44-_SDA2_BASE_(r2)
/* 802C1234 002BE174  C0 62 C2 48 */ lfs f3, lbl_80455C48-_SDA2_BASE_(r2)
/* 802C1238 002BE178  C0 82 C2 4C */ lfs f4, lbl_80455C4C-_SDA2_BASE_(r2)
/* 802C123C 002BE17C  C0 A2 C2 20 */ lfs f5, lbl_80455C20-_SDA2_BASE_(r2)
/* 802C1240 002BE180  38 60 00 00 */ li r3, 0
/* 802C1244 002BE184  4B FE 84 49 */ bl linearTransform__6Z2CalcFfffffb
/* 802C1248 002BE188  FF E0 08 90 */ fmr f31, f1
/* 802C124C 002BE18C  C8 22 C2 28 */ lfd f1, lbl_80455C28-_SDA2_BASE_(r2)
/* 802C1250 002BE190  93 81 00 1C */ stw r28, 0x1c(r1)
/* 802C1254 002BE194  3C 00 43 30 */ lis r0, 0x4330
/* 802C1258 002BE198  90 01 00 18 */ stw r0, 0x18(r1)
/* 802C125C 002BE19C  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 802C1260 002BE1A0  EC 20 08 28 */ fsubs f1, f0, f1
/* 802C1264 002BE1A4  C0 42 C2 44 */ lfs f2, lbl_80455C44-_SDA2_BASE_(r2)
/* 802C1268 002BE1A8  C0 62 C2 48 */ lfs f3, lbl_80455C48-_SDA2_BASE_(r2)
/* 802C126C 002BE1AC  C0 82 C2 14 */ lfs f4, lbl_80455C14-_SDA2_BASE_(r2)
/* 802C1270 002BE1B0  C0 A2 C2 18 */ lfs f5, lbl_80455C18-_SDA2_BASE_(r2)
/* 802C1274 002BE1B4  38 60 00 00 */ li r3, 0
/* 802C1278 002BE1B8  4B FE 84 15 */ bl linearTransform__6Z2CalcFfffffb
/* 802C127C 002BE1BC  FF C0 08 90 */ fmr f30, f1
/* 802C1280 002BE1C0  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C1284 002BE1C4  38 63 00 48 */ addi r3, r3, 0x48
/* 802C1288 002BE1C8  FC 20 F8 90 */ fmr f1, f31
/* 802C128C 002BE1CC  38 80 00 00 */ li r4, 0
/* 802C1290 002BE1D0  4B FE 1B 25 */ bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C1294 002BE1D4  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C1298 002BE1D8  38 63 00 48 */ addi r3, r3, 0x48
/* 802C129C 002BE1DC  FC 20 F0 90 */ fmr f1, f30
/* 802C12A0 002BE1E0  38 80 00 00 */ li r4, 0
/* 802C12A4 002BE1E4  4B FE 1B 69 */ bl movePitch__18JAISoundParamsMoveFfUl
/* 802C12A8 002BE1E8  48 00 00 4C */ b lbl_802C12F4
/* 802C12AC 002BE1EC  A0 9D 00 24 */ lhz r4, 0x24(r29)
/* 802C12B0 002BE1F0  48 00 1B A5 */ bl Z2_E_ms_modVol
/* 802C12B4 002BE1F4  48 00 00 40 */ b lbl_802C12F4
/* 802C12B8 002BE1F8  7F 84 E3 78 */ mr r4, r28
/* 802C12BC 002BE1FC  48 00 1B 25 */ bl Z2_E_sw_modPitch
/* 802C12C0 002BE200  48 00 00 34 */ b lbl_802C12F4
/* 802C12C4 002BE204  A0 9D 00 24 */ lhz r4, 0x24(r29)
/* 802C12C8 002BE208  48 00 1B D5 */ bl Z2_E_mm_modPitch
/* 802C12CC 002BE20C  48 00 00 28 */ b lbl_802C12F4
/* 802C12D0 002BE210  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C12D4 002BE214  3C 03 FF F9 */ addis r0, r3, 0xfff9
/* 802C12D8 002BE218  28 00 02 7B */ cmplwi r0, 0x27b
/* 802C12DC 002BE21C  40 82 00 18 */ bne lbl_802C12F4
/* 802C12E0 002BE220  38 00 00 01 */ li r0, 1
/* 802C12E4 002BE224  98 1D 00 A3 */ stb r0, 0xa3(r29)
/* 802C12E8 002BE228  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C12EC 002BE22C  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C12F0 002BE230  4B FF 38 0D */ bl setBattleLastHit__8Z2SeqMgrFUc
lbl_802C12F4:
/* 802C12F4 002BE234  80 9E 00 00 */ lwz r4, 0(r30)
/* 802C12F8 002BE238  3C 60 00 07 */ lis r3, 0x00070460@ha
/* 802C12FC 002BE23C  38 03 04 60 */ addi r0, r3, 0x00070460@l
/* 802C1300 002BE240  7C 04 00 00 */ cmpw r4, r0
/* 802C1304 002BE244  41 82 00 28 */ beq lbl_802C132C
/* 802C1308 002BE248  40 80 00 38 */ bge lbl_802C1340
/* 802C130C 002BE24C  38 03 04 38 */ addi r0, r3, 0x438
/* 802C1310 002BE250  7C 04 00 00 */ cmpw r4, r0
/* 802C1314 002BE254  41 82 00 08 */ beq lbl_802C131C
/* 802C1318 002BE258  48 00 00 28 */ b lbl_802C1340
lbl_802C131C:
/* 802C131C 002BE25C  7F E3 FB 78 */ mr r3, r31
/* 802C1320 002BE260  A0 9D 00 24 */ lhz r4, 0x24(r29)
/* 802C1324 002BE264  48 00 1B C1 */ bl Z2_B_zan_modPitch
/* 802C1328 002BE268  48 00 00 18 */ b lbl_802C1340
lbl_802C132C:
/* 802C132C 002BE26C  A0 1D 00 24 */ lhz r0, 0x24(r29)
/* 802C1330 002BE270  28 00 00 64 */ cmplwi r0, 0x64
/* 802C1334 002BE274  40 81 00 0C */ ble lbl_802C1340
/* 802C1338 002BE278  38 60 00 00 */ li r3, 0
/* 802C133C 002BE27C  48 00 00 08 */ b lbl_802C1344
lbl_802C1340:
/* 802C1340 002BE280  7F E3 FB 78 */ mr r3, r31
lbl_802C1344:
/* 802C1344 002BE284  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 802C1348 002BE288  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 802C134C 002BE28C  E3 C1 00 38 */ psq_l f30, 56(r1), 0, 0
/* 802C1350 002BE290  CB C1 00 30 */ lfd f30, 0x30(r1)
/* 802C1354 002BE294  39 61 00 30 */ addi r11, r1, 0x30
/* 802C1358 002BE298  48 0A 0E CD */ bl _restgpr_28
/* 802C135C 002BE29C  80 01 00 54 */ lwz r0, 0x54(r1)
/* 802C1360 002BE2A0  7C 08 03 A6 */ mtlr r0
/* 802C1364 002BE2A4  38 21 00 50 */ addi r1, r1, 0x50
/* 802C1368 002BE2A8  4E 80 00 20 */ blr