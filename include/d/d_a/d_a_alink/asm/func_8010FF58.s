/* 8010FF58 0010CE98  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8010FF5C 0010CE9C  7C 08 02 A6 */ mflr r0
/* 8010FF60 0010CEA0  90 01 00 34 */ stw r0, 0x34(r1)
/* 8010FF64 0010CEA4  39 61 00 30 */ addi r11, r1, 0x30
/* 8010FF68 0010CEA8  48 25 22 75 */ bl _savegpr_29
/* 8010FF6C 0010CEAC  7C 7E 1B 78 */ mr r30, r3
/* 8010FF70 0010CEB0  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8010FF74 0010CEB4  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 8010FF78 0010CEB8  2C 00 00 00 */ cmpwi r0, 0
/* 8010FF7C 0010CEBC  40 82 02 C8 */ bne lbl_80110244
/* 8010FF80 0010CEC0  A0 1E 00 F8 */ lhz r0, 0xf8(r30)
/* 8010FF84 0010CEC4  28 00 00 06 */ cmplwi r0, 6
/* 8010FF88 0010CEC8  40 82 02 00 */ bne lbl_80110188
/* 8010FF8C 0010CECC  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 8010FF90 0010CED0  2C 00 00 00 */ cmpwi r0, 0
/* 8010FF94 0010CED4  40 82 00 3C */ bne lbl_8010FFD0
/* 8010FF98 0010CED8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010FF9C 0010CEDC  D0 21 00 08 */ stfs f1, 8(r1)
/* 8010FFA0 0010CEE0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010FFA4 0010CEE4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8010FFA8 0010CEE8  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 8010FFAC 0010CEEC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010FFB0 0010CEF0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010FFB4 0010CEF4  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 8010FFB8 0010CEF8  38 80 00 01 */ li r4, 1
/* 8010FFBC 0010CEFC  38 A0 00 01 */ li r5, 1
/* 8010FFC0 0010CF00  38 C1 00 08 */ addi r6, r1, 8
/* 8010FFC4 0010CF04  4B F5 FA 61 */ bl StartShock__12dVibration_cFii4cXyz
/* 8010FFC8 0010CF08  38 00 00 01 */ li r0, 1
/* 8010FFCC 0010CF0C  B0 1E 30 0E */ sth r0, 0x300e(r30)
lbl_8010FFD0:
/* 8010FFD0 0010CF10  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010FFD4 0010CF14  3B A3 61 C0 */ addi r29, r3, g_dComIfG_gameInfo@l
/* 8010FFD8 0010CF18  80 1D 5F 1C */ lwz r0, 0x5f1c(r29)
/* 8010FFDC 0010CF1C  64 00 04 00 */ oris r0, r0, 0x400
/* 8010FFE0 0010CF20  90 1D 5F 1C */ stw r0, 0x5f1c(r29)
/* 8010FFE4 0010CF24  38 7D 5B 54 */ addi r3, r29, 0x5b54
/* 8010FFE8 0010CF28  80 9D 5B 64 */ lwz r4, 0x5b64(r29)
/* 8010FFEC 0010CF2C  4B F6 39 A1 */ bl convPId__11dAttCatch_cFUi
/* 8010FFF0 0010CF30  28 03 00 00 */ cmplwi r3, 0
/* 8010FFF4 0010CF34  41 82 00 20 */ beq lbl_80110014
/* 8010FFF8 0010CF38  38 7D 5B 54 */ addi r3, r29, 0x5b54
/* 8010FFFC 0010CF3C  80 9D 5B 64 */ lwz r4, 0x5b64(r29)
/* 80110000 0010CF40  4B F6 39 8D */ bl convPId__11dAttCatch_cFUi
/* 80110004 0010CF44  80 03 04 9C */ lwz r0, 0x49c(r3)
/* 80110008 0010CF48  60 00 08 00 */ ori r0, r0, 0x800
/* 8011000C 0010CF4C  90 03 04 9C */ stw r0, 0x49c(r3)
/* 80110010 0010CF50  48 00 00 1C */ b lbl_8011002C
lbl_80110014:
/* 80110014 0010CF54  80 7E 28 10 */ lwz r3, 0x2810(r30)
/* 80110018 0010CF58  28 03 00 00 */ cmplwi r3, 0
/* 8011001C 0010CF5C  41 82 00 10 */ beq lbl_8011002C
/* 80110020 0010CF60  80 03 04 9C */ lwz r0, 0x49c(r3)
/* 80110024 0010CF64  60 00 08 00 */ ori r0, r0, 0x800
/* 80110028 0010CF68  90 03 04 9C */ stw r0, 0x49c(r3)
lbl_8011002C:
/* 8011002C 0010CF6C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80110030 0010CF70  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 80110034 0010CF74  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80110038 0010CF78  40 81 02 0C */ ble lbl_80110244
/* 8011003C 0010CF7C  38 00 00 01 */ li r0, 1
/* 80110040 0010CF80  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 80110044 0010CF84  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 80110048 0010CF88  54 00 07 B8 */ rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011004C 0010CF8C  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 80110050 0010CF90  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 80110054 0010CF94  28 00 00 48 */ cmplwi r0, 0x48
/* 80110058 0010CF98  41 82 01 24 */ beq lbl_8011017C
/* 8011005C 0010CF9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80110060 0010CFA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80110064 0010CFA4  8B A3 4F B6 */ lbz r29, 0x4fb6(r3)
/* 80110068 0010CFA8  28 1D 00 67 */ cmplwi r29, 0x67
/* 8011006C 0010CFAC  40 82 00 20 */ bne lbl_8011008C
/* 80110070 0010CFB0  38 7E 1A F0 */ addi r3, r30, 0x1af0
/* 80110074 0010CFB4  38 80 00 00 */ li r4, 0
/* 80110078 0010CFB8  4B F9 21 69 */ bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8011007C 0010CFBC  7C 60 07 34 */ extsh r0, r3
/* 80110080 0010CFC0  2C 00 00 82 */ cmpwi r0, 0x82
/* 80110084 0010CFC4  40 82 00 08 */ bne lbl_8011008C
/* 80110088 0010CFC8  3B A0 00 6B */ li r29, 0x6b
lbl_8011008C:
/* 8011008C 0010CFCC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80110090 0010CFD0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80110094 0010CFD4  38 63 00 9C */ addi r3, r3, 0x9c
/* 80110098 0010CFD8  88 9E 2F 9C */ lbz r4, 0x2f9c(r30)
/* 8011009C 0010CFDC  57 A5 06 3E */ clrlwi r5, r29, 0x18
/* 801100A0 0010CFE0  4B F2 34 F9 */ bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 801100A4 0010CFE4  57 A3 04 3E */ clrlwi r3, r29, 0x10
/* 801100A8 0010CFE8  28 03 00 76 */ cmplwi r3, 0x76
/* 801100AC 0010CFEC  40 82 00 18 */ bne lbl_801100C4
/* 801100B0 0010CFF0  4B F1 E5 09 */ bl dComIfGs_getBottleMax__Fv
/* 801100B4 0010CFF4  54 64 06 3E */ clrlwi r4, r3, 0x18
/* 801100B8 0010CFF8  88 7E 2F 9C */ lbz r3, 0x2f9c(r30)
/* 801100BC 0010CFFC  4B F1 E6 59 */ bl dComIfGp_setSelectItemNum__Fis
/* 801100C0 0010D000  48 00 00 90 */ b lbl_80110150
lbl_801100C4:
/* 801100C4 0010D004  28 03 00 67 */ cmplwi r3, 0x67
/* 801100C8 0010D008  40 82 00 24 */ bne lbl_801100EC
/* 801100CC 0010D00C  7F C3 F3 78 */ mr r3, r30
/* 801100D0 0010D010  3C 80 00 02 */ lis r4, 0x0002004D@ha
/* 801100D4 0010D014  38 84 00 4D */ addi r4, r4, 0x0002004D@l
/* 801100D8 0010D018  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 801100DC 0010D01C  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 801100E0 0010D020  7D 89 03 A6 */ mtctr r12
/* 801100E4 0010D024  4E 80 04 21 */ bctrl
/* 801100E8 0010D028  48 00 00 68 */ b lbl_80110150
lbl_801100EC:
/* 801100EC 0010D02C  48 04 EA 55 */ bl checkOilBottleItem__9daPy_py_cFi
/* 801100F0 0010D030  2C 03 00 00 */ cmpwi r3, 0
/* 801100F4 0010D034  41 82 00 24 */ beq lbl_80110118
/* 801100F8 0010D038  7F C3 F3 78 */ mr r3, r30
/* 801100FC 0010D03C  3C 80 00 02 */ lis r4, 0x000200AA@ha
/* 80110100 0010D040  38 84 00 AA */ addi r4, r4, 0x000200AA@l
/* 80110104 0010D044  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80110108 0010D048  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8011010C 0010D04C  7D 89 03 A6 */ mtctr r12
/* 80110110 0010D050  4E 80 04 21 */ bctrl
/* 80110114 0010D054  48 00 00 3C */ b lbl_80110150
lbl_80110118:
/* 80110118 0010D058  38 1D FF 83 */ addi r0, r29, -125
/* 8011011C 0010D05C  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 80110120 0010D060  28 00 00 01 */ cmplwi r0, 1
/* 80110124 0010D064  40 81 00 10 */ ble lbl_80110134
/* 80110128 0010D068  57 A0 04 3E */ clrlwi r0, r29, 0x10
/* 8011012C 0010D06C  28 00 00 7F */ cmplwi r0, 0x7f
/* 80110130 0010D070  40 82 00 20 */ bne lbl_80110150
lbl_80110134:
/* 80110134 0010D074  7F C3 F3 78 */ mr r3, r30
/* 80110138 0010D078  3C 80 00 02 */ lis r4, 0x000200AB@ha
/* 8011013C 0010D07C  38 84 00 AB */ addi r4, r4, 0x000200AB@l
/* 80110140 0010D080  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80110144 0010D084  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 80110148 0010D088  7D 89 03 A6 */ mtctr r12
/* 8011014C 0010D08C  4E 80 04 21 */ bctrl
lbl_80110150:
/* 80110150 0010D090  7F C3 F3 78 */ mr r3, r30
/* 80110154 0010D094  7F A4 EB 78 */ mr r4, r29
/* 80110158 0010D098  4B FF E4 81 */ bl setBottleModel__9daAlink_cFUs
/* 8011015C 0010D09C  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 80110160 0010D0A0  80 63 00 04 */ lwz r3, 4(r3)
/* 80110164 0010D0A4  80 63 00 60 */ lwz r3, 0x60(r3)
/* 80110168 0010D0A8  80 63 00 00 */ lwz r3, 0(r3)
/* 8011016C 0010D0AC  80 63 00 08 */ lwz r3, 8(r3)
/* 80110170 0010D0B0  80 03 00 0C */ lwz r0, 0xc(r3)
/* 80110174 0010D0B4  60 00 00 01 */ ori r0, r0, 1
/* 80110178 0010D0B8  90 03 00 0C */ stw r0, 0xc(r3)
lbl_8011017C:
/* 8011017C 0010D0BC  38 00 00 05 */ li r0, 5
/* 80110180 0010D0C0  B0 1E 06 04 */ sth r0, 0x604(r30)
/* 80110184 0010D0C4  48 00 00 C0 */ b lbl_80110244
lbl_80110188:
/* 80110188 0010D0C8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8011018C 0010D0CC  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 80110190 0010D0D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80110194 0010D0D4  4C 40 13 82 */ cror 2, 0, 2
/* 80110198 0010D0D8  40 82 00 AC */ bne lbl_80110244
/* 8011019C 0010D0DC  88 7E 2F 9C */ lbz r3, 0x2f9c(r30)
/* 801101A0 0010D0E0  4B F1 DD 7D */ bl dComIfGp_getSelectItem__Fi
/* 801101A4 0010D0E4  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 801101A8 0010D0E8  28 00 00 60 */ cmplwi r0, 0x60
/* 801101AC 0010D0EC  40 82 00 70 */ bne lbl_8011021C
/* 801101B0 0010D0F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801101B4 0010D0F4  3B A3 61 C0 */ addi r29, r3, g_dComIfG_gameInfo@l
/* 801101B8 0010D0F8  38 7D 5B 54 */ addi r3, r29, 0x5b54
/* 801101BC 0010D0FC  80 9D 5B 64 */ lwz r4, 0x5b64(r29)
/* 801101C0 0010D100  4B F6 37 CD */ bl convPId__11dAttCatch_cFUi
/* 801101C4 0010D104  28 03 00 00 */ cmplwi r3, 0
/* 801101C8 0010D108  40 82 00 30 */ bne lbl_801101F8
/* 801101CC 0010D10C  88 1E 2F BC */ lbz r0, 0x2fbc(r30)
/* 801101D0 0010D110  28 00 00 0B */ cmplwi r0, 0xb
/* 801101D4 0010D114  41 82 00 48 */ beq lbl_8011021C
/* 801101D8 0010D118  28 00 00 06 */ cmplwi r0, 6
/* 801101DC 0010D11C  41 82 00 40 */ beq lbl_8011021C
/* 801101E0 0010D120  C0 5E 33 B4 */ lfs f2, 0x33b4(r30)
/* 801101E4 0010D124  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 801101E8 0010D128  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 801101EC 0010D12C  EC 01 00 2A */ fadds f0, f1, f0
/* 801101F0 0010D130  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 801101F4 0010D134  40 81 00 28 */ ble lbl_8011021C
lbl_801101F8:
/* 801101F8 0010D138  38 7D 5B 54 */ addi r3, r29, 0x5b54
/* 801101FC 0010D13C  80 9D 5B 64 */ lwz r4, 0x5b64(r29)
/* 80110200 0010D140  4B F6 37 8D */ bl convPId__11dAttCatch_cFUi
/* 80110204 0010D144  7C 64 1B 78 */ mr r4, r3
/* 80110208 0010D148  7F C3 F3 78 */ mr r3, r30
/* 8011020C 0010D14C  38 A0 00 00 */ li r5, 0
/* 80110210 0010D150  38 C0 00 00 */ li r6, 0
/* 80110214 0010D154  4B F0 B1 21 */ bl fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 80110218 0010D158  48 00 00 2C */ b lbl_80110244
lbl_8011021C:
/* 8011021C 0010D15C  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 80110220 0010D160  28 00 00 48 */ cmplwi r0, 0x48
/* 80110224 0010D164  40 82 00 20 */ bne lbl_80110244
/* 80110228 0010D168  80 9E 28 10 */ lwz r4, 0x2810(r30)
/* 8011022C 0010D16C  28 04 00 00 */ cmplwi r4, 0
/* 80110230 0010D170  41 82 00 14 */ beq lbl_80110244
/* 80110234 0010D174  7F C3 F3 78 */ mr r3, r30
/* 80110238 0010D178  38 A0 00 00 */ li r5, 0
/* 8011023C 0010D17C  38 C0 00 00 */ li r6, 0
/* 80110240 0010D180  4B F0 B0 F5 */ bl fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
lbl_80110244:
/* 80110244 0010D184  7F E3 FB 78 */ mr r3, r31
/* 80110248 0010D188  48 04 E2 85 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011024C 0010D18C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80110250 0010D190  41 82 00 30 */ beq lbl_80110280
/* 80110254 0010D194  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 80110258 0010D198  2C 00 00 00 */ cmpwi r0, 0
/* 8011025C 0010D19C  41 82 00 14 */ beq lbl_80110270
/* 80110260 0010D1A0  7F C3 F3 78 */ mr r3, r30
/* 80110264 0010D1A4  A8 9E 30 10 */ lha r4, 0x3010(r30)
/* 80110268 0010D1A8  48 00 00 69 */ bl procBottleGetInit__9daAlink_cFi
/* 8011026C 0010D1AC  48 00 00 48 */ b lbl_801102B4
lbl_80110270:
/* 80110270 0010D1B0  7F C3 F3 78 */ mr r3, r30
/* 80110274 0010D1B4  38 80 00 00 */ li r4, 0
/* 80110278 0010D1B8  4B FA 9E 59 */ bl checkNextAction__9daAlink_cFi
/* 8011027C 0010D1BC  48 00 00 38 */ b lbl_801102B4
lbl_80110280:
/* 80110280 0010D1C0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80110284 0010D1C4  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 80110288 0010D1C8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011028C 0010D1CC  40 81 00 28 */ ble lbl_801102B4
/* 80110290 0010D1D0  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 80110294 0010D1D4  2C 00 00 00 */ cmpwi r0, 0
/* 80110298 0010D1D8  40 82 00 1C */ bne lbl_801102B4
/* 8011029C 0010D1DC  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 801102A0 0010D1E0  60 00 00 04 */ ori r0, r0, 4
/* 801102A4 0010D1E4  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 801102A8 0010D1E8  7F C3 F3 78 */ mr r3, r30
/* 801102AC 0010D1EC  38 80 00 01 */ li r4, 1
/* 801102B0 0010D1F0  4B FA 9E 21 */ bl checkNextAction__9daAlink_cFi
lbl_801102B4:
/* 801102B4 0010D1F4  38 60 00 01 */ li r3, 1
/* 801102B8 0010D1F8  39 61 00 30 */ addi r11, r1, 0x30
/* 801102BC 0010D1FC  48 25 1F 6D */ bl _restgpr_29
/* 801102C0 0010D200  80 01 00 34 */ lwz r0, 0x34(r1)
/* 801102C4 0010D204  7C 08 03 A6 */ mtlr r0
/* 801102C8 0010D208  38 21 00 30 */ addi r1, r1, 0x30
/* 801102CC 0010D20C  4E 80 00 20 */ blr
