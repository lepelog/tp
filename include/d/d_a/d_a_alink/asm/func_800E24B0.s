/* 800E24B0 000DF3F0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E24B4 000DF3F4  7C 08 02 A6 */ mflr r0
/* 800E24B8 000DF3F8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E24BC 000DF3FC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E24C0 000DF400  7C 7F 1B 78 */ mr r31, r3
/* 800E24C4 000DF404  38 7F 1D AC */ addi r3, r31, 0x1dac
/* 800E24C8 000DF408  7F E6 FB 78 */ mr r6, r31
/* 800E24CC 000DF40C  4B F9 58 99 */ bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E24D0 000DF410  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E24D4 000DF414  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E24D8 000DF418  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800E24DC 000DF41C  38 9F 1D AC */ addi r4, r31, 0x1dac
/* 800E24E0 000DF420  4B F9 1E D5 */ bl LineCross__4cBgSFP11cBgS_LinChk
/* 800E24E4 000DF424  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E24E8 000DF428  41 82 00 1C */ beq lbl_800E2504
/* 800E24EC 000DF42C  38 7F 1D C0 */ addi r3, r31, 0x1dc0
/* 800E24F0 000DF430  4B F4 F6 61 */ bl checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo
/* 800E24F4 000DF434  2C 03 00 00 */ cmpwi r3, 0
/* 800E24F8 000DF438  41 82 00 0C */ beq lbl_800E2504
/* 800E24FC 000DF43C  38 60 00 01 */ li r3, 1
/* 800E2500 000DF440  48 00 00 08 */ b lbl_800E2508
lbl_800E2504:
/* 800E2504 000DF444  38 60 00 00 */ li r3, 0
lbl_800E2508:
/* 800E2508 000DF448  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E250C 000DF44C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E2510 000DF450  7C 08 03 A6 */ mtlr r0
/* 800E2514 000DF454  38 21 00 10 */ addi r1, r1, 0x10
/* 800E2518 000DF458  4E 80 00 20 */ blr
