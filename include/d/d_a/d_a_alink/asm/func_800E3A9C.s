/* 800E3A9C 000E09DC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E3AA0 000E09E0  7C 08 02 A6 */ mflr r0
/* 800E3AA4 000E09E4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E3AA8 000E09E8  39 61 00 20 */ addi r11, r1, 0x20
/* 800E3AAC 000E09EC  48 27 E7 31 */ bl _savegpr_29
/* 800E3AB0 000E09F0  7C 7D 1B 78 */ mr r29, r3
/* 800E3AB4 000E09F4  7C 9E 23 78 */ mr r30, r4
/* 800E3AB8 000E09F8  7C DF 33 78 */ mr r31, r6
/* 800E3ABC 000E09FC  2C 05 00 00 */ cmpwi r5, 0
/* 800E3AC0 000E0A00  40 82 00 10 */ bne lbl_800E3AD0
/* 800E3AC4 000E0A04  48 03 21 5D */ bl daAlink_c_NS_checkEventRun
/* 800E3AC8 000E0A08  2C 03 00 00 */ cmpwi r3, 0
/* 800E3ACC 000E0A0C  40 82 00 E4 */ bne lbl_800E3BB0
lbl_800E3AD0:
/* 800E3AD0 000E0A10  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E3AD4 000E0A14  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E3AD8 000E0A18  40 82 00 D8 */ bne lbl_800E3BB0
/* 800E3ADC 000E0A1C  A0 7D 2F DC */ lhz r3, 0x2fdc(r29)
/* 800E3AE0 000E0A20  28 03 00 FF */ cmplwi r3, 0xff
/* 800E3AE4 000E0A24  41 82 00 18 */ beq lbl_800E3AFC
/* 800E3AE8 000E0A28  2C 1F 00 00 */ cmpwi r31, 0
/* 800E3AEC 000E0A2C  41 82 00 C4 */ beq lbl_800E3BB0
/* 800E3AF0 000E0A30  48 07 B0 C9 */ bl checkHookshotItem__9daPy_py_cFi
/* 800E3AF4 000E0A34  2C 03 00 00 */ cmpwi r3, 0
/* 800E3AF8 000E0A38  41 82 00 B8 */ beq lbl_800E3BB0
lbl_800E3AFC:
/* 800E3AFC 000E0A3C  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 800E3B00 000E0A40  54 00 00 C7 */ rlwinm. r0, r0, 0, 3, 3
/* 800E3B04 000E0A44  41 82 00 3C */ beq lbl_800E3B40
/* 800E3B08 000E0A48  7F A3 EB 78 */ mr r3, r29
/* 800E3B0C 000E0A4C  48 00 95 69 */ bl daAlink_c_NS_checkHorseNoUpperAnime
/* 800E3B10 000E0A50  2C 03 00 00 */ cmpwi r3, 0
/* 800E3B14 000E0A54  40 82 00 5C */ bne lbl_800E3B70
/* 800E3B18 000E0A58  38 60 00 00 */ li r3, 0
/* 800E3B1C 000E0A5C  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800E3B20 000E0A60  28 00 02 4C */ cmplwi r0, 0x24c
/* 800E3B24 000E0A64  41 82 00 10 */ beq lbl_800E3B34
/* 800E3B28 000E0A68  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800E3B2C 000E0A6C  28 00 02 4D */ cmplwi r0, 0x24d
/* 800E3B30 000E0A70  40 82 00 08 */ bne lbl_800E3B38
lbl_800E3B34:
/* 800E3B34 000E0A74  38 60 00 01 */ li r3, 1
lbl_800E3B38:
/* 800E3B38 000E0A78  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E3B3C 000E0A7C  40 82 00 34 */ bne lbl_800E3B70
lbl_800E3B40:
/* 800E3B40 000E0A80  2C 1F 00 00 */ cmpwi r31, 0
/* 800E3B44 000E0A84  41 82 00 6C */ beq lbl_800E3BB0
/* 800E3B48 000E0A88  38 60 00 00 */ li r3, 0
/* 800E3B4C 000E0A8C  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800E3B50 000E0A90  28 00 01 8D */ cmplwi r0, 0x18d
/* 800E3B54 000E0A94  41 82 00 10 */ beq lbl_800E3B64
/* 800E3B58 000E0A98  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800E3B5C 000E0A9C  28 00 01 8C */ cmplwi r0, 0x18c
/* 800E3B60 000E0AA0  40 82 00 08 */ bne lbl_800E3B68
lbl_800E3B64:
/* 800E3B64 000E0AA4  38 60 00 01 */ li r3, 1
lbl_800E3B68:
/* 800E3B68 000E0AA8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E3B6C 000E0AAC  41 82 00 44 */ beq lbl_800E3BB0
lbl_800E3B70:
/* 800E3B70 000E0AB0  7F A3 EB 78 */ mr r3, r29
/* 800E3B74 000E0AB4  38 80 00 01 */ li r4, 1
/* 800E3B78 000E0AB8  38 A0 00 00 */ li r5, 0
/* 800E3B7C 000E0ABC  4B FD D7 61 */ bl daAlink_c_NS_deleteEquipItem
/* 800E3B80 000E0AC0  7F A3 EB 78 */ mr r3, r29
/* 800E3B84 000E0AC4  7F C4 F3 78 */ mr r4, r30
/* 800E3B88 000E0AC8  48 00 20 2D */ bl daAlink_c_NS_setGrabItemActor
/* 800E3B8C 000E0ACC  C0 02 93 94 */ lfs f0, lbl_80452D94-_SDA2_BASE_(r2)
/* 800E3B90 000E0AD0  D0 1D 33 E4 */ stfs f0, 0x33e4(r29)
/* 800E3B94 000E0AD4  7F A3 EB 78 */ mr r3, r29
/* 800E3B98 000E0AD8  3C 80 80 39 */ lis r4, lbl_8038D664@ha
/* 800E3B9C 000E0ADC  38 84 D6 64 */ addi r4, r4, lbl_8038D664@l
/* 800E3BA0 000E0AE0  C0 24 00 18 */ lfs f1, 0x18(r4)
/* 800E3BA4 000E0AE4  48 00 02 19 */ bl daAlink_c_NS_setGrabUpperAnime
/* 800E3BA8 000E0AE8  38 60 00 01 */ li r3, 1
/* 800E3BAC 000E0AEC  48 00 00 08 */ b lbl_800E3BB4
lbl_800E3BB0:
/* 800E3BB0 000E0AF0  38 60 00 00 */ li r3, 0
lbl_800E3BB4:
/* 800E3BB4 000E0AF4  39 61 00 20 */ addi r11, r1, 0x20
/* 800E3BB8 000E0AF8  48 27 E6 71 */ bl _restgpr_29
/* 800E3BBC 000E0AFC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E3BC0 000E0B00  7C 08 03 A6 */ mtlr r0
/* 800E3BC4 000E0B04  38 21 00 20 */ addi r1, r1, 0x20
/* 800E3BC8 000E0B08  4E 80 00 20 */ blr
