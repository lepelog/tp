/* 801ADBBC 001AAAFC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801ADBC0 001AAB00  7C 08 02 A6 */ mflr r0
/* 801ADBC4 001AAB04  90 01 00 14 */ stw r0, 0x14(r1)
/* 801ADBC8 001AAB08  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801ADBCC 001AAB0C  93 C1 00 08 */ stw r30, 8(r1)
/* 801ADBD0 001AAB10  7C 7E 1B 79 */ or. r30, r3, r3
/* 801ADBD4 001AAB14  7C 9F 23 78 */ mr r31, r4
/* 801ADBD8 001AAB18  41 82 00 B0 */ beq lbl_801ADC88
/* 801ADBDC 001AAB1C  3C 60 80 3C */ lis r3, lbl_803BC13C@ha
/* 801ADBE0 001AAB20  38 03 C1 3C */ addi r0, r3, lbl_803BC13C@l
/* 801ADBE4 001AAB24  90 1E 00 00 */ stw r0, 0(r30)
/* 801ADBE8 001AAB28  38 7E 0D 58 */ addi r3, r30, 0xd58
/*.global __dt__10BOSS_LIGHTFv*/
/* 801ADBEC 001AAB2C  3C 80 80 1A */ lis r4, __dt__10BOSS_LIGHTFv@ha
/*.global __dt__10BOSS_LIGHTFv*/
/* 801ADBF0 001AAB30  38 84 F4 38 */ addi r4, r4, __dt__10BOSS_LIGHTFv@l
/* 801ADBF4 001AAB34  38 A0 00 28 */ li r5, 0x28
/* 801ADBF8 001AAB38  38 C0 00 06 */ li r6, 6
/* 801ADBFC 001AAB3C  48 1B 40 ED */ bl func_80361CE8
/* 801ADC00 001AAB40  38 7E 0C 18 */ addi r3, r30, 0xc18
/*.global __dt__10BOSS_LIGHTFv*/
/* 801ADC04 001AAB44  3C 80 80 1A */ lis r4, __dt__10BOSS_LIGHTFv@ha
/*.global __dt__10BOSS_LIGHTFv*/
/* 801ADC08 001AAB48  38 84 F4 38 */ addi r4, r4, __dt__10BOSS_LIGHTFv@l
/* 801ADC0C 001AAB4C  38 A0 00 28 */ li r5, 0x28
/* 801ADC10 001AAB50  38 C0 00 08 */ li r6, 8
/* 801ADC14 001AAB54  48 1B 40 D5 */ bl func_80361CE8
/* 801ADC18 001AAB58  38 7E 09 B8 */ addi r3, r30, 0x9b8
/*.global __dt__13DUNGEON_LIGHTFv*/
/* 801ADC1C 001AAB5C  3C 80 80 1A */ lis r4, __dt__13DUNGEON_LIGHTFv@ha
/*.global __dt__13DUNGEON_LIGHTFv*/
/* 801ADC20 001AAB60  38 84 F4 78 */ addi r4, r4, __dt__13DUNGEON_LIGHTFv@l
/* 801ADC24 001AAB64  38 A0 00 4C */ li r5, 0x4c
/* 801ADC28 001AAB68  38 C0 00 08 */ li r6, 8
/* 801ADC2C 001AAB6C  48 1B 40 BD */ bl func_80361CE8
/* 801ADC30 001AAB70  38 7E 08 48 */ addi r3, r30, 0x848
/*.global __dt__15WIND_INF_ENTITYFv*/
/* 801ADC34 001AAB74  3C 80 80 1A */ lis r4, __dt__15WIND_INF_ENTITYFv@ha
/*.global __dt__15WIND_INF_ENTITYFv*/
/* 801ADC38 001AAB78  38 84 F4 B8 */ addi r4, r4, __dt__15WIND_INF_ENTITYFv@l
/* 801ADC3C 001AAB7C  38 A0 00 3C */ li r5, 0x3c
/* 801ADC40 001AAB80  38 C0 00 05 */ li r6, 5
/* 801ADC44 001AAB84  48 1B 40 A5 */ bl func_80361CE8
/* 801ADC48 001AAB88  38 7E 07 64 */ addi r3, r30, 0x764
/*.global __dt__15LIGHT_INFLUENCEFv*/
/* 801ADC4C 001AAB8C  3C 80 80 0D */ lis r4, __dt__15LIGHT_INFLUENCEFv@ha
/*.global __dt__15LIGHT_INFLUENCEFv*/
/* 801ADC50 001AAB90  38 84 FC 7C */ addi r4, r4, __dt__15LIGHT_INFLUENCEFv@l
/* 801ADC54 001AAB94  38 A0 00 20 */ li r5, 0x20
/* 801ADC58 001AAB98  38 C0 00 02 */ li r6, 2
/* 801ADC5C 001AAB9C  48 1B 40 8D */ bl func_80361CE8
/* 801ADC60 001AABA0  38 7E 00 38 */ addi r3, r30, 0x38
/*.global __dt__15LIGHT_INFLUENCEFv*/
/* 801ADC64 001AABA4  3C 80 80 0D */ lis r4, __dt__15LIGHT_INFLUENCEFv@ha
/*.global __dt__15LIGHT_INFLUENCEFv*/
/* 801ADC68 001AABA8  38 84 FC 7C */ addi r4, r4, __dt__15LIGHT_INFLUENCEFv@l
/* 801ADC6C 001AABAC  38 A0 00 20 */ li r5, 0x20
/* 801ADC70 001AABB0  38 C0 00 1E */ li r6, 0x1e
/* 801ADC74 001AABB4  48 1B 40 75 */ bl func_80361CE8
/* 801ADC78 001AABB8  7F E0 07 35 */ extsh. r0, r31
/* 801ADC7C 001AABBC  40 81 00 0C */ ble lbl_801ADC88
/* 801ADC80 001AABC0  7F C3 F3 78 */ mr r3, r30
/* 801ADC84 001AABC4  48 12 10 B9 */ bl __dl__FPv
lbl_801ADC88:
/* 801ADC88 001AABC8  7F C3 F3 78 */ mr r3, r30
/* 801ADC8C 001AABCC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801ADC90 001AABD0  83 C1 00 08 */ lwz r30, 8(r1)
/* 801ADC94 001AABD4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801ADC98 001AABD8  7C 08 03 A6 */ mtlr r0
/* 801ADC9C 001AABDC  38 21 00 10 */ addi r1, r1, 0x10
/* 801ADCA0 001AABE0  4E 80 00 20 */ blr