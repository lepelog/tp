/* 800F6D10 000F3C50  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F6D14 000F3C54  7C 08 02 A6 */ mflr r0
/* 800F6D18 000F3C58  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F6D1C 000F3C5C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F6D20 000F3C60  7C 7F 1B 78 */ mr r31, r3
/* 800F6D24 000F3C64  38 80 00 99 */ li r4, 0x99
/* 800F6D28 000F3C68  4B FC C0 7D */ bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F6D2C 000F3C6C  2C 03 00 00 */ cmpwi r3, 0
/* 800F6D30 000F3C70  40 82 00 0C */ bne lbl_800F6D3C
/* 800F6D34 000F3C74  38 60 00 00 */ li r3, 0
/* 800F6D38 000F3C78  48 00 00 18 */ b lbl_800F6D50
lbl_800F6D3C:
/* 800F6D3C 000F3C7C  7F E3 FB 78 */ mr r3, r31
/* 800F6D40 000F3C80  4B FF D8 5D */ bl setSyncCanoePos__9daAlink_cFv
/* 800F6D44 000F3C84  7F E3 FB 78 */ mr r3, r31
/* 800F6D48 000F3C88  4B FE 7E 45 */ bl setBowOrSlingStatus__9daAlink_cFv
/* 800F6D4C 000F3C8C  38 60 00 01 */ li r3, 1
lbl_800F6D50:
/* 800F6D50 000F3C90  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F6D54 000F3C94  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F6D58 000F3C98  7C 08 03 A6 */ mtlr r0
/* 800F6D5C 000F3C9C  38 21 00 10 */ addi r1, r1, 0x10
/* 800F6D60 000F3CA0  4E 80 00 20 */ blr