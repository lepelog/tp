/* 800B9340 000B6280  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B9344 000B6284  7C 08 02 A6 */ mflr r0
/* 800B9348 000B6288  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B934C 000B628C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B9350 000B6290  93 C1 00 08 */ stw r30, 8(r1)
/* 800B9354 000B6294  7C 7E 1B 78 */ mr r30, r3
/* 800B9358 000B6298  3B E0 00 00 */ li r31, 0
/* 800B935C 000B629C  48 01 7B 3D */ bl checkSwordEquipAnime__9daAlink_cCFv
/* 800B9360 000B62A0  2C 03 00 00 */ cmpwi r3, 0
/* 800B9364 000B62A4  40 82 00 14 */ bne lbl_800B9378
/* 800B9368 000B62A8  7F C3 F3 78 */ mr r3, r30
/* 800B936C 000B62AC  4B FF FF 8D */ bl checkItemEquipAnime__9daAlink_cCFv
/* 800B9370 000B62B0  2C 03 00 00 */ cmpwi r3, 0
/* 800B9374 000B62B4  41 82 00 08 */ beq lbl_800B937C
lbl_800B9378:
/* 800B9378 000B62B8  3B E0 00 01 */ li r31, 1
lbl_800B937C:
/* 800B937C 000B62BC  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800B9380 000B62C0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B9384 000B62C4  83 C1 00 08 */ lwz r30, 8(r1)
/* 800B9388 000B62C8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B938C 000B62CC  7C 08 03 A6 */ mtlr r0
/* 800B9390 000B62D0  38 21 00 10 */ addi r1, r1, 0x10
/* 800B9394 000B62D4  4E 80 00 20 */ blr
