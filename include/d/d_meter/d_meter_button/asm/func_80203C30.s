/* 80203C30 00200B70  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80203C34 00200B74  7C 08 02 A6 */ mflr r0
/* 80203C38 00200B78  90 01 00 24 */ stw r0, 0x24(r1)
/* 80203C3C 00200B7C  39 61 00 20 */ addi r11, r1, 0x20
/* 80203C40 00200B80  48 15 E5 9D */ bl _savegpr_29
/* 80203C44 00200B84  7C 7E 1B 78 */ mr r30, r3
/* 80203C48 00200B88  7C 9F 23 78 */ mr r31, r4
/* 80203C4C 00200B8C  7C BD 2B 78 */ mr r29, r5
/* 80203C50 00200B90  54 80 04 63 */ rlwinm. r0, r4, 0, 0x11, 0x11
/* 80203C54 00200B94  40 82 00 A0 */ bne lbl_80203CF4
/* 80203C58 00200B98  48 03 45 D5 */ bl getStatus__12dMsgObject_cFv
/* 80203C5C 00200B9C  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 80203C60 00200BA0  20 60 00 01 */ subfic r3, r0, 1
/* 80203C64 00200BA4  30 03 FF FF */ addic r0, r3, -1
/* 80203C68 00200BA8  7C 00 19 10 */ subfe r0, r0, r3
/* 80203C6C 00200BAC  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80203C70 00200BB0  40 82 00 84 */ bne lbl_80203CF4
/* 80203C74 00200BB4  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80203C78 00200BB8  41 82 00 7C */ beq lbl_80203CF4
/* 80203C7C 00200BBC  A8 1E 04 98 */ lha r0, 0x498(r30)
/* 80203C80 00200BC0  2C 00 00 00 */ cmpwi r0, 0
/* 80203C84 00200BC4  41 81 00 70 */ bgt lbl_80203CF4
/* 80203C88 00200BC8  57 E0 06 31 */ rlwinm. r0, r31, 0, 0x18, 0x18
/* 80203C8C 00200BCC  40 82 00 68 */ bne lbl_80203CF4
/* 80203C90 00200BD0  57 E0 00 43 */ rlwinm. r0, r31, 0, 1, 1
/* 80203C94 00200BD4  40 82 00 60 */ bne lbl_80203CF4
/* 80203C98 00200BD8  57 E0 04 E7 */ rlwinm. r0, r31, 0, 0x13, 0x13
/* 80203C9C 00200BDC  40 82 00 58 */ bne lbl_80203CF4
/* 80203CA0 00200BE0  57 E0 06 73 */ rlwinm. r0, r31, 0, 0x19, 0x19
/* 80203CA4 00200BE4  41 82 00 30 */ beq lbl_80203CD4
/* 80203CA8 00200BE8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80203CAC 00200BEC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80203CB0 00200BF0  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 80203CB4 00200BF4  28 00 00 00 */ cmplwi r0, 0
/* 80203CB8 00200BF8  41 82 00 10 */ beq lbl_80203CC8
/* 80203CBC 00200BFC  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 80203CC0 00200C00  54 00 07 FE */ clrlwi r0, r0, 0x1f
/* 80203CC4 00200C04  48 00 00 08 */ b lbl_80203CCC
lbl_80203CC8:
/* 80203CC8 00200C08  38 00 00 00 */ li r0, 0
lbl_80203CCC:
/* 80203CCC 00200C0C  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 80203CD0 00200C10  40 82 00 24 */ bne lbl_80203CF4
lbl_80203CD4:
/* 80203CD4 00200C14  57 E0 05 EF */ rlwinm. r0, r31, 0, 0x17, 0x17
/* 80203CD8 00200C18  40 82 00 1C */ bne lbl_80203CF4
/* 80203CDC 00200C1C  57 E0 07 39 */ rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80203CE0 00200C20  40 82 00 14 */ bne lbl_80203CF4
/* 80203CE4 00200C24  57 E0 06 F7 */ rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80203CE8 00200C28  40 82 00 0C */ bne lbl_80203CF4
/* 80203CEC 00200C2C  57 E0 06 B5 */ rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80203CF0 00200C30  41 82 00 1C */ beq lbl_80203D0C
lbl_80203CF4:
/* 80203CF4 00200C34  7F C3 F3 78 */ mr r3, r30
/* 80203CF8 00200C38  48 00 43 31 */ bl dMeterButton_c_NS_setAlphaButtonRemoAnimeMin
/* 80203CFC 00200C3C  A0 1E 04 B0 */ lhz r0, 0x4b0(r30)
/* 80203D00 00200C40  54 00 05 A8 */ rlwinm r0, r0, 0, 0x16, 0x14
/* 80203D04 00200C44  B0 1E 04 B0 */ sth r0, 0x4b0(r30)
/* 80203D08 00200C48  48 00 00 20 */ b lbl_80203D28
lbl_80203D0C:
/* 80203D0C 00200C4C  7F C3 F3 78 */ mr r3, r30
/* 80203D10 00200C50  48 00 43 B1 */ bl dMeterButton_c_NS_setAlphaButtonRemoAnimeMax
/* 80203D14 00200C54  A0 1E 04 B0 */ lhz r0, 0x4b0(r30)
/* 80203D18 00200C58  60 00 04 00 */ ori r0, r0, 0x400
/* 80203D1C 00200C5C  B0 1E 04 B0 */ sth r0, 0x4b0(r30)
/* 80203D20 00200C60  38 60 00 01 */ li r3, 1
/* 80203D24 00200C64  48 00 00 08 */ b lbl_80203D2C
lbl_80203D28:
/* 80203D28 00200C68  38 60 00 00 */ li r3, 0
lbl_80203D2C:
/* 80203D2C 00200C6C  39 61 00 20 */ addi r11, r1, 0x20
/* 80203D30 00200C70  48 15 E4 F9 */ bl _restgpr_29
/* 80203D34 00200C74  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80203D38 00200C78  7C 08 03 A6 */ mtlr r0
/* 80203D3C 00200C7C  38 21 00 20 */ addi r1, r1, 0x20
/* 80203D40 00200C80  4E 80 00 20 */ blr
