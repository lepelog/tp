/* 800C3338 000C0278  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C333C 000C027C  7C 08 02 A6 */ mflr r0
/* 800C3340 000C0280  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C3344 000C0284  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C3348 000C0288  93 C1 00 08 */ stw r30, 8(r1)
/* 800C334C 000C028C  7C 7E 1B 78 */ mr r30, r3
/* 800C3350 000C0290  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800C3354 000C0294  38 80 00 00 */ li r4, 0
/* 800C3358 000C0298  4B FF 6D 79 */ bl daAlink_c_NS_checkNextAction
/* 800C335C 000C029C  2C 03 00 00 */ cmpwi r3, 0
/* 800C3360 000C02A0  40 82 00 3C */ bne lbl_800C339C
/* 800C3364 000C02A4  7F E3 FB 78 */ mr r3, r31
/* 800C3368 000C02A8  48 09 B1 65 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C336C 000C02AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C3370 000C02B0  41 82 00 14 */ beq lbl_800C3384
/* 800C3374 000C02B4  7F C3 F3 78 */ mr r3, r30
/* 800C3378 000C02B8  38 80 00 B6 */ li r4, 0xb6
/* 800C337C 000C02BC  4B FE 9C 05 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800C3380 000C02C0  48 00 00 1C */ b lbl_800C339C
lbl_800C3384:
/* 800C3384 000C02C4  88 1F 00 04 */ lbz r0, 4(r31)
/* 800C3388 000C02C8  28 00 00 02 */ cmplwi r0, 2
/* 800C338C 000C02CC  40 82 00 10 */ bne lbl_800C339C
/* 800C3390 000C02D0  7F C3 F3 78 */ mr r3, r30
/* 800C3394 000C02D4  7F E4 FB 78 */ mr r4, r31
/* 800C3398 000C02D8  4B FE FF C1 */ bl daAlink_c_NS_setTiredVoice
lbl_800C339C:
/* 800C339C 000C02DC  38 60 00 01 */ li r3, 1
/* 800C33A0 000C02E0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C33A4 000C02E4  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C33A8 000C02E8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C33AC 000C02EC  7C 08 03 A6 */ mtlr r0
/* 800C33B0 000C02F0  38 21 00 10 */ addi r1, r1, 0x10
/* 800C33B4 000C02F4  4E 80 00 20 */ blr
