/* 800F7010 000F3F50  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F7014 000F3F54  7C 08 02 A6 */ mflr r0
/* 800F7018 000F3F58  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F701C 000F3F5C  39 61 00 20 */ addi r11, r1, 0x20
/* 800F7020 000F3F60  48 26 B1 BD */ bl _savegpr_29
/* 800F7024 000F3F64  7C 7D 1B 78 */ mr r29, r3
/* 800F7028 000F3F68  4B FC 02 BD */ bl checkItemActorPointer__9daAlink_cFv
/* 800F702C 000F3F6C  2C 03 00 00 */ cmpwi r3, 0
/* 800F7030 000F3F70  40 82 00 0C */ bne lbl_800F703C
/* 800F7034 000F3F74  38 60 00 01 */ li r3, 1
/* 800F7038 000F3F78  48 00 00 A0 */ b lbl_800F70D8
lbl_800F703C:
/* 800F703C 000F3F7C  38 60 00 00 */ li r3, 0
/* 800F7040 000F3F80  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800F7044 000F3F84  28 00 00 40 */ cmplwi r0, 0x40
/* 800F7048 000F3F88  41 82 00 0C */ beq lbl_800F7054
/* 800F704C 000F3F8C  28 00 01 02 */ cmplwi r0, 0x102
/* 800F7050 000F3F90  40 82 00 14 */ bne lbl_800F7064
lbl_800F7054:
/* 800F7054 000F3F94  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800F7058 000F3F98  28 00 00 54 */ cmplwi r0, 0x54
/* 800F705C 000F3F9C  40 82 00 08 */ bne lbl_800F7064
/* 800F7060 000F3FA0  38 60 00 01 */ li r3, 1
lbl_800F7064:
/* 800F7064 000F3FA4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F7068 000F3FA8  41 82 00 10 */ beq lbl_800F7078
/* 800F706C 000F3FAC  7F A3 EB 78 */ mr r3, r29
/* 800F7070 000F3FB0  38 80 00 12 */ li r4, 0x12
/* 800F7074 000F3FB4  4B FB C1 DD */ bl setDoStatus__9daAlink_cFUc
lbl_800F7078:
/* 800F7078 000F3FB8  AB FD 04 E6 */ lha r31, 0x4e6(r29)
/* 800F707C 000F3FBC  AB DD 04 DE */ lha r30, 0x4de(r29)
/* 800F7080 000F3FC0  7F A3 EB 78 */ mr r3, r29
/* 800F7084 000F3FC4  4B FF D7 55 */ bl canoeCommon__9daAlink_cFv
/* 800F7088 000F3FC8  2C 03 00 00 */ cmpwi r3, 0
/* 800F708C 000F3FCC  41 82 00 0C */ beq lbl_800F7098
/* 800F7090 000F3FD0  38 60 00 01 */ li r3, 1
/* 800F7094 000F3FD4  48 00 00 44 */ b lbl_800F70D8
lbl_800F7098:
/* 800F7098 000F3FD8  B3 FD 04 E6 */ sth r31, 0x4e6(r29)
/* 800F709C 000F3FDC  7F A3 EB 78 */ mr r3, r29
/* 800F70A0 000F3FE0  4B FF D8 85 */ bl checkNextAction__9daAlink_cFiCanoe
/* 800F70A4 000F3FE4  2C 03 00 00 */ cmpwi r3, 0
/* 800F70A8 000F3FE8  40 82 00 24 */ bne lbl_800F70CC
/* 800F70AC 000F3FEC  7F A3 EB 78 */ mr r3, r29
/* 800F70B0 000F3FF0  7F C4 F3 78 */ mr r4, r30
/* 800F70B4 000F3FF4  4B FF 7E 7D */ bl setRideSubjectAngle__9daAlink_cFs
/* 800F70B8 000F3FF8  2C 03 00 00 */ cmpwi r3, 0
/* 800F70BC 000F3FFC  41 82 00 18 */ beq lbl_800F70D4
/* 800F70C0 000F4000  7F A3 EB 78 */ mr r3, r29
/* 800F70C4 000F4004  4B FE 9D A1 */ bl setBoomerangSight__9daAlink_cFv
/* 800F70C8 000F4008  48 00 00 0C */ b lbl_800F70D4
lbl_800F70CC:
/* 800F70CC 000F400C  38 00 00 00 */ li r0, 0
/* 800F70D0 000F4010  98 1D 20 68 */ stb r0, 0x2068(r29)
lbl_800F70D4:
/* 800F70D4 000F4014  38 60 00 01 */ li r3, 1
lbl_800F70D8:
/* 800F70D8 000F4018  39 61 00 20 */ addi r11, r1, 0x20
/* 800F70DC 000F401C  48 26 B1 4D */ bl _restgpr_29
/* 800F70E0 000F4020  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F70E4 000F4024  7C 08 03 A6 */ mtlr r0
/* 800F70E8 000F4028  38 21 00 20 */ addi r1, r1, 0x20
/* 800F70EC 000F402C  4E 80 00 20 */ blr
