/* 802645C0 00261500  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802645C4 00261504  7C 08 02 A6 */ mflr r0
/* 802645C8 00261508  90 01 00 14 */ stw r0, 0x14(r1)
/* 802645CC 0026150C  38 63 00 20 */ addi r3, r3, 0x20
/* 802645D0 00261510  38 84 00 20 */ addi r4, r4, 0x20
/* 802645D4 00261514  48 00 79 31 */ bl cM3d_Cross_SphTri
/* 802645D8 00261518  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 802645DC 0026151C  30 03 FF FF */ addic r0, r3, -1
/* 802645E0 00261520  7C 00 19 10 */ subfe r0, r0, r3
/* 802645E4 00261524  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 802645E8 00261528  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802645EC 0026152C  7C 08 03 A6 */ mtlr r0
/* 802645F0 00261530  38 21 00 10 */ addi r1, r1, 0x10
/* 802645F4 00261534  4E 80 00 20 */ blr