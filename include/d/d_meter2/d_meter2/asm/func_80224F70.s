/* 80224F70 00221EB0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80224F74 00221EB4  7C 08 02 A6 */ mflr r0
/* 80224F78 00221EB8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80224F7C 00221EBC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80224F80 00221EC0  93 C1 00 08 */ stw r30, 8(r1)
/* 80224F84 00221EC4  7C 7F 1B 78 */ mr r31, r3
/* 80224F88 00221EC8  80 63 01 24 */ lwz r3, 0x124(r3)
/* 80224F8C 00221ECC  54 60 04 63 */ rlwinm. r0, r3, 0, 0x11, 0x11
/* 80224F90 00221ED0  40 82 01 2C */ bne lbl_802250BC
/* 80224F94 00221ED4  54 60 06 73 */ rlwinm. r0, r3, 0, 0x19, 0x19
/* 80224F98 00221ED8  41 82 00 30 */ beq lbl_80224FC8
/* 80224F9C 00221EDC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224FA0 00221EE0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80224FA4 00221EE4  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 80224FA8 00221EE8  28 00 00 00 */ cmplwi r0, 0
/* 80224FAC 00221EEC  41 82 00 10 */ beq lbl_80224FBC
/* 80224FB0 00221EF0  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 80224FB4 00221EF4  54 00 06 72 */ rlwinm r0, r0, 0, 0x19, 0x19
/* 80224FB8 00221EF8  48 00 00 08 */ b lbl_80224FC0
lbl_80224FBC:
/* 80224FBC 00221EFC  38 00 00 00 */ li r0, 0
lbl_80224FC0:
/* 80224FC0 00221F00  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 80224FC4 00221F04  40 82 00 F8 */ bne lbl_802250BC
lbl_80224FC8:
/* 80224FC8 00221F08  7F E3 FB 78 */ mr r3, r31
/* 80224FCC 00221F0C  48 00 09 95 */ bl isKeyVisible__9dMeter2_cFv
/* 80224FD0 00221F10  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80224FD4 00221F14  41 82 00 E8 */ beq lbl_802250BC
/* 80224FD8 00221F18  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80224FDC 00221F1C  54 60 00 43 */ rlwinm. r0, r3, 0, 1, 1
/* 80224FE0 00221F20  40 82 00 DC */ bne lbl_802250BC
/* 80224FE4 00221F24  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 80224FE8 00221F28  40 82 00 D4 */ bne lbl_802250BC
/* 80224FEC 00221F2C  54 60 02 D7 */ rlwinm. r0, r3, 0, 0xb, 0xb
/* 80224FF0 00221F30  40 82 00 CC */ bne lbl_802250BC
/* 80224FF4 00221F34  54 60 00 01 */ rlwinm. r0, r3, 0, 0, 0
/* 80224FF8 00221F38  40 82 00 C4 */ bne lbl_802250BC
/* 80224FFC 00221F3C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80225000 00221F40  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80225004 00221F44  80 83 5D AC */ lwz r4, 0x5dac(r3)
/* 80225008 00221F48  38 00 00 00 */ li r0, 0
/* 8022500C 00221F4C  88 64 05 6A */ lbz r3, 0x56a(r4)
/* 80225010 00221F50  28 03 00 00 */ cmplwi r3, 0
/* 80225014 00221F54  41 82 00 10 */ beq lbl_80225024
/* 80225018 00221F58  28 03 00 26 */ cmplwi r3, 0x26
/* 8022501C 00221F5C  40 80 00 08 */ bge lbl_80225024
/* 80225020 00221F60  38 00 00 01 */ li r0, 1
lbl_80225024:
/* 80225024 00221F64  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80225028 00221F68  40 82 00 94 */ bne lbl_802250BC
/* 8022502C 00221F6C  88 04 05 6A */ lbz r0, 0x56a(r4)
/* 80225030 00221F70  28 00 00 2D */ cmplwi r0, 0x2d
/* 80225034 00221F74  40 82 00 30 */ bne lbl_80225064
/* 80225038 00221F78  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8022503C 00221F7C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80225040 00221F80  3B C3 0F 38 */ addi r30, r3, 0xf38
/* 80225044 00221F84  7F C3 F3 78 */ mr r3, r30
/* 80225048 00221F88  4B E0 7B 75 */ bl getTimerMode__14dComIfG_play_cFv
/* 8022504C 00221F8C  2C 03 00 03 */ cmpwi r3, 3
/* 80225050 00221F90  41 82 00 6C */ beq lbl_802250BC
/* 80225054 00221F94  7F C3 F3 78 */ mr r3, r30
/* 80225058 00221F98  4B E0 7B 65 */ bl getTimerMode__14dComIfG_play_cFv
/* 8022505C 00221F9C  2C 03 00 04 */ cmpwi r3, 4
/* 80225060 00221FA0  41 82 00 5C */ beq lbl_802250BC
lbl_80225064:
/* 80225064 00221FA4  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80225068 00221FA8  54 60 05 EF */ rlwinm. r0, r3, 0, 0x17, 0x17
/* 8022506C 00221FAC  40 82 00 50 */ bne lbl_802250BC
/* 80225070 00221FB0  54 60 07 39 */ rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80225074 00221FB4  40 82 00 48 */ bne lbl_802250BC
/* 80225078 00221FB8  54 60 06 F7 */ rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8022507C 00221FBC  40 82 00 40 */ bne lbl_802250BC
/* 80225080 00221FC0  54 60 01 CF */ rlwinm. r0, r3, 0, 7, 7
/* 80225084 00221FC4  40 82 00 38 */ bne lbl_802250BC
/* 80225088 00221FC8  54 60 06 B5 */ rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8022508C 00221FCC  40 82 00 30 */ bne lbl_802250BC
/* 80225090 00221FD0  54 60 01 4B */ rlwinm. r0, r3, 0, 5, 5
/* 80225094 00221FD4  40 82 00 28 */ bne lbl_802250BC
/* 80225098 00221FD8  54 60 01 09 */ rlwinm. r0, r3, 0, 4, 4
/* 8022509C 00221FDC  40 82 00 20 */ bne lbl_802250BC
/* 802250A0 00221FE0  54 60 00 C7 */ rlwinm. r0, r3, 0, 3, 3
/* 802250A4 00221FE4  40 82 00 18 */ bne lbl_802250BC
/* 802250A8 00221FE8  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802250AC 00221FEC  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802250B0 00221FF0  A0 03 00 A2 */ lhz r0, 0xa2(r3)
/* 802250B4 00221FF4  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802250B8 00221FF8  41 82 00 10 */ beq lbl_802250C8
lbl_802250BC:
/* 802250BC 00221FFC  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 802250C0 00222000  4B FF 1B E9 */ bl setAlphaKeyAnimeMin__13dMeter2Draw_cFv
/* 802250C4 00222004  48 00 00 0C */ b lbl_802250D0
lbl_802250C8:
/* 802250C8 00222008  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 802250CC 0022200C  4B FF 1C 61 */ bl setAlphaKeyAnimeMax__13dMeter2Draw_cFv
lbl_802250D0:
/* 802250D0 00222010  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 802250D4 00222014  38 80 00 00 */ li r4, 0
/* 802250D8 00222018  4B FF 1A 51 */ bl setAlphaKeyChange__13dMeter2Draw_cFb
/* 802250DC 0022201C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802250E0 00222020  83 C1 00 08 */ lwz r30, 8(r1)
/* 802250E4 00222024  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802250E8 00222028  7C 08 03 A6 */ mtlr r0
/* 802250EC 0022202C  38 21 00 10 */ addi r1, r1, 0x10
/* 802250F0 00222030  4E 80 00 20 */ blr
