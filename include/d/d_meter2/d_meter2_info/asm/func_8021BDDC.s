/* 8021BDDC 00218D1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8021BDE0 00218D20  7C 08 02 A6 */ mflr r0
/* 8021BDE4 00218D24  90 01 00 14 */ stw r0, 0x14(r1)
/* 8021BDE8 00218D28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8021BDEC 00218D2C  7C 7F 1B 78 */ mr r31, r3
/* 8021BDF0 00218D30  3C 80 80 3C */ lis r4, lbl_803BFA1C@ha
/* 8021BDF4 00218D34  38 04 FA 1C */ addi r0, r4, lbl_803BFA1C@l
/* 8021BDF8 00218D38  90 03 00 00 */ stw r0, 0(r3)
/* 8021BDFC 00218D3C  48 00 00 6D */ bl init__13dMeter2Info_cFv
/* 8021BE00 00218D40  38 00 00 00 */ li r0, 0
/* 8021BE04 00218D44  90 1F 00 90 */ stw r0, 0x90(r31)
/* 8021BE08 00218D48  7F E3 FB 78 */ mr r3, r31
/* 8021BE0C 00218D4C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8021BE10 00218D50  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8021BE14 00218D54  7C 08 03 A6 */ mtlr r0
/* 8021BE18 00218D58  38 21 00 10 */ addi r1, r1, 0x10
/* 8021BE1C 00218D5C  4E 80 00 20 */ blr