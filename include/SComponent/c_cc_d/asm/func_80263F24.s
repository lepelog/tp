/* 80263F24 00260E64  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80263F28 00260E68  7C 08 02 A6 */ mflr r0
/* 80263F2C 00260E6C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80263F30 00260E70  C0 02 B6 20 */ lfs f0, lbl_80455020-_SDA2_BASE_(r2)
/* 80263F34 00260E74  D0 05 00 00 */ stfs f0, 0(r5)
/* 80263F38 00260E78  28 04 00 00 */ cmplwi r4, 0
/* 80263F3C 00260E7C  41 82 00 08 */ beq lbl_80263F44
/* 80263F40 00260E80  38 84 00 20 */ addi r4, r4, 0x20
lbl_80263F44:
/* 80263F44 00260E84  38 63 00 20 */ addi r3, r3, 0x20
/* 80263F48 00260E88  38 A1 00 08 */ addi r5, r1, 8
/* 80263F4C 00260E8C  48 00 94 89 */ bl cM3d_Cross_CpsCyl
/* 80263F50 00260E90  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80263F54 00260E94  41 82 00 0C */ beq lbl_80263F60
/* 80263F58 00260E98  38 60 00 01 */ li r3, 1
/* 80263F5C 00260E9C  48 00 00 08 */ b lbl_80263F64
lbl_80263F60:
/* 80263F60 00260EA0  38 60 00 00 */ li r3, 0
lbl_80263F64:
/* 80263F64 00260EA4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80263F68 00260EA8  7C 08 03 A6 */ mtlr r0
/* 80263F6C 00260EAC  38 21 00 20 */ addi r1, r1, 0x20
/* 80263F70 00260EB0  4E 80 00 20 */ blr