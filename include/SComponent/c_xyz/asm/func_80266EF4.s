/* 80266EF4 00263E34  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80266EF8 00263E38  7C 08 02 A6 */ mflr r0
/* 80266EFC 00263E3C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80266F00 00263E40  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80266F04 00263E44  93 C1 00 08 */ stw r30, 8(r1)
/* 80266F08 00263E48  7C 7E 1B 78 */ mr r30, r3
/* 80266F0C 00263E4C  7C 9F 23 78 */ mr r31, r4
/* 80266F10 00263E50  7F E3 FB 78 */ mr r3, r31
/* 80266F14 00263E54  48 0E 01 E1 */ bl PSVECNormalize
/* 80266F18 00263E58  C0 1F 00 00 */ lfs f0, 0(r31)
/* 80266F1C 00263E5C  D0 1E 00 00 */ stfs f0, 0(r30)
/* 80266F20 00263E60  C0 1F 00 04 */ lfs f0, 4(r31)
/* 80266F24 00263E64  D0 1E 00 04 */ stfs f0, 4(r30)
/* 80266F28 00263E68  C0 1F 00 08 */ lfs f0, 8(r31)
/* 80266F2C 00263E6C  D0 1E 00 08 */ stfs f0, 8(r30)
/* 80266F30 00263E70  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80266F34 00263E74  83 C1 00 08 */ lwz r30, 8(r1)
/* 80266F38 00263E78  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80266F3C 00263E7C  7C 08 03 A6 */ mtlr r0
/* 80266F40 00263E80  38 21 00 10 */ addi r1, r1, 0x10
/* 80266F44 00263E84  4E 80 00 20 */ blr