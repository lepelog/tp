/* 80264E2C 00261D6C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80264E30 00261D70  7C 08 02 A6 */ mflr r0
/* 80264E34 00261D74  90 01 00 24 */ stw r0, 0x24(r1)
/* 80264E38 00261D78  39 61 00 20 */ addi r11, r1, 0x20
/* 80264E3C 00261D7C  48 0F D3 99 */ bl _savegpr_27
/* 80264E40 00261D80  7C 7B 1B 78 */ mr r27, r3
/* 80264E44 00261D84  7C 9C 23 78 */ mr r28, r4
/* 80264E48 00261D88  7C BF 2B 78 */ mr r31, r5
/* 80264E4C 00261D8C  7F 83 E3 78 */ mr r3, r28
/* 80264E50 00261D90  4B FF EB F9 */ bl GetAc__8cCcD_ObjFv
/* 80264E54 00261D94  7C 7D 1B 78 */ mr r29, r3
/* 80264E58 00261D98  7F E3 FB 78 */ mr r3, r31
/* 80264E5C 00261D9C  4B FF EB ED */ bl GetAc__8cCcD_ObjFv
/* 80264E60 00261DA0  28 1D 00 00 */ cmplwi r29, 0
/* 80264E64 00261DA4  41 82 00 14 */ beq lbl_80264E78
/* 80264E68 00261DA8  28 03 00 00 */ cmplwi r3, 0
/* 80264E6C 00261DAC  41 82 00 0C */ beq lbl_80264E78
/* 80264E70 00261DB0  7C 1D 18 40 */ cmplw r29, r3
/* 80264E74 00261DB4  41 82 00 28 */ beq lbl_80264E9C
lbl_80264E78:
/* 80264E78 00261DB8  80 1C 00 00 */ lwz r0, 0(r28)
/* 80264E7C 00261DBC  54 03 06 FC */ rlwinm r3, r0, 0, 0x1b, 0x1e
/* 80264E80 00261DC0  80 1F 00 18 */ lwz r0, 0x18(r31)
/* 80264E84 00261DC4  7C 60 00 39 */ and. r0, r3, r0
/* 80264E88 00261DC8  41 82 00 14 */ beq lbl_80264E9C
/* 80264E8C 00261DCC  80 7C 00 10 */ lwz r3, 0x10(r28)
/* 80264E90 00261DD0  80 1F 00 28 */ lwz r0, 0x28(r31)
/* 80264E94 00261DD4  7C 60 00 39 */ and. r0, r3, r0
/* 80264E98 00261DD8  40 82 00 0C */ bne lbl_80264EA4
lbl_80264E9C:
/* 80264E9C 00261DDC  38 60 00 01 */ li r3, 1
/* 80264EA0 00261DE0  48 00 00 88 */ b lbl_80264F28
lbl_80264EA4:
/* 80264EA4 00261DE4  83 DC 00 44 */ lwz r30, 0x44(r28)
/* 80264EA8 00261DE8  80 7F 00 44 */ lwz r3, 0x44(r31)
/* 80264EAC 00261DEC  81 83 00 18 */ lwz r12, 0x18(r3)
/* 80264EB0 00261DF0  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80264EB4 00261DF4  7D 89 03 A6 */ mtctr r12
/* 80264EB8 00261DF8  4E 80 04 21 */ bctrl
/* 80264EBC 00261DFC  7C 7D 1B 78 */ mr r29, r3
/* 80264EC0 00261E00  7F C3 F3 78 */ mr r3, r30
/* 80264EC4 00261E04  81 9E 00 18 */ lwz r12, 0x18(r30)
/* 80264EC8 00261E08  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80264ECC 00261E0C  7D 89 03 A6 */ mtctr r12
/* 80264ED0 00261E10  4E 80 04 21 */ bctrl
/* 80264ED4 00261E14  7C 7E 1B 78 */ mr r30, r3
/* 80264ED8 00261E18  7F E3 FB 78 */ mr r3, r31
/* 80264EDC 00261E1C  81 9F 00 3C */ lwz r12, 0x3c(r31)
/* 80264EE0 00261E20  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80264EE4 00261E24  7D 89 03 A6 */ mtctr r12
/* 80264EE8 00261E28  4E 80 04 21 */ bctrl
/* 80264EEC 00261E2C  7C 7F 1B 78 */ mr r31, r3
/* 80264EF0 00261E30  7F 83 E3 78 */ mr r3, r28
/* 80264EF4 00261E34  81 9C 00 3C */ lwz r12, 0x3c(r28)
/* 80264EF8 00261E38  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80264EFC 00261E3C  7D 89 03 A6 */ mtctr r12
/* 80264F00 00261E40  4E 80 04 21 */ bctrl
/* 80264F04 00261E44  7C 64 1B 78 */ mr r4, r3
/* 80264F08 00261E48  7F 63 DB 78 */ mr r3, r27
/* 80264F0C 00261E4C  7F E5 FB 78 */ mr r5, r31
/* 80264F10 00261E50  7F C6 F3 78 */ mr r6, r30
/* 80264F14 00261E54  7F A7 EB 78 */ mr r7, r29
/* 80264F18 00261E58  81 9B 28 48 */ lwz r12, 0x2848(r27)
/* 80264F1C 00261E5C  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 80264F20 00261E60  7D 89 03 A6 */ mtctr r12
/* 80264F24 00261E64  4E 80 04 21 */ bctrl
lbl_80264F28:
/* 80264F28 00261E68  39 61 00 20 */ addi r11, r1, 0x20
/* 80264F2C 00261E6C  48 0F D2 F5 */ bl _restgpr_27
/* 80264F30 00261E70  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80264F34 00261E74  7C 08 03 A6 */ mtlr r0
/* 80264F38 00261E78  38 21 00 20 */ addi r1, r1, 0x20
/* 80264F3C 00261E7C  4E 80 00 20 */ blr
