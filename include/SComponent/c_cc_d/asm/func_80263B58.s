/* 80263B58 00260A98  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80263B5C 00260A9C  7C 08 02 A6 */ mflr r0
/* 80263B60 00260AA0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80263B64 00260AA4  38 63 00 20 */ addi r3, r3, 0x20
/* 80263B68 00260AA8  38 84 00 20 */ addi r4, r4, 0x20
/* 80263B6C 00260AAC  48 00 BC 45 */ bl cM3dGTri_NS_cross
/* 80263B70 00260AB0  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 80263B74 00260AB4  30 03 FF FF */ addic r0, r3, -1
/* 80263B78 00260AB8  7C 00 19 10 */ subfe r0, r0, r3
/* 80263B7C 00260ABC  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 80263B80 00260AC0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80263B84 00260AC4  7C 08 03 A6 */ mtlr r0
/* 80263B88 00260AC8  38 21 00 10 */ addi r1, r1, 0x10
/* 80263B8C 00260ACC  4E 80 00 20 */ blr