/* 800EA8D0 000E7810  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800EA8D4 000E7814  7C 08 02 A6 */ mflr r0
/* 800EA8D8 000E7818  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EA8DC 000E781C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800EA8E0 000E7820  7C 7F 1B 78 */ mr r31, r3
/* 800EA8E4 000E7824  38 7F 28 54 */ addi r3, r31, 0x2854
/* 800EA8E8 000E7828  48 07 44 15 */ bl clearData__16daPy_actorKeep_cFv
/* 800EA8EC 000E782C  38 00 00 00 */ li r0, 0
/* 800EA8F0 000E7830  98 1F 05 6A */ stb r0, 0x56a(r31)
/* 800EA8F4 000E7834  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EA8F8 000E7838  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800EA8FC 000E783C  7C 08 03 A6 */ mtlr r0
/* 800EA900 000E7840  38 21 00 10 */ addi r1, r1, 0x10
/* 800EA904 000E7844  4E 80 00 20 */ blr
