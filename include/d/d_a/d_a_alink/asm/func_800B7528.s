/* 800B7528 000B4468  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B752C 000B446C  7C 08 02 A6 */ mflr r0
/* 800B7530 000B4470  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B7534 000B4474  39 61 00 20 */ addi r11, r1, 0x20
/* 800B7538 000B4478  48 2A AC A5 */ bl _savegpr_29
/* 800B753C 000B447C  7C 7D 1B 78 */ mr r29, r3
/* 800B7540 000B4480  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800B7544 000B4484  28 00 00 92 */ cmplwi r0, 0x92
/* 800B7548 000B4488  41 82 00 8C */ beq lbl_800B75D4
/* 800B754C 000B448C  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800B7550 000B4490  28 00 00 FF */ cmplwi r0, 0xff
/* 800B7554 000B4494  41 82 00 80 */ beq lbl_800B75D4
/* 800B7558 000B4498  48 00 1D E9 */ bl checkEquipAnime__9daAlink_cCFv
/* 800B755C 000B449C  2C 03 00 00 */ cmpwi r3, 0
/* 800B7560 000B44A0  40 82 00 74 */ bne lbl_800B75D4
/* 800B7564 000B44A4  3B C0 00 00 */ li r30, 0
/* 800B7568 000B44A8  48 00 00 60 */ b lbl_800B75C8
lbl_800B756C:
/* 800B756C 000B44AC  57 C3 06 3E */ clrlwi r3, r30, 0x18
/* 800B7570 000B44B0  38 03 00 01 */ addi r0, r3, 1
/* 800B7574 000B44B4  54 04 0F FE */ srwi r4, r0, 0x1f
/* 800B7578 000B44B8  54 00 07 FE */ clrlwi r0, r0, 0x1f
/* 800B757C 000B44BC  7C 00 22 78 */ xor r0, r0, r4
/* 800B7580 000B44C0  7C 04 00 50 */ subf r0, r4, r0
/* 800B7584 000B44C4  54 1F 06 3E */ clrlwi r31, r0, 0x18
/* 800B7588 000B44C8  4B F7 69 95 */ bl dComIfGp_getSelectItem
/* 800B758C 000B44CC  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 800B7590 000B44D0  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800B7594 000B44D4  7C 00 18 00 */ cmpw r0, r3
/* 800B7598 000B44D8  40 82 00 2C */ bne lbl_800B75C4
/* 800B759C 000B44DC  7F E3 FB 78 */ mr r3, r31
/* 800B75A0 000B44E0  4B F7 69 7D */ bl dComIfGp_getSelectItem
/* 800B75A4 000B44E4  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 800B75A8 000B44E8  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800B75AC 000B44EC  7C 00 18 00 */ cmpw r0, r3
/* 800B75B0 000B44F0  40 82 00 10 */ bne lbl_800B75C0
/* 800B75B4 000B44F4  88 1D 2F 9C */ lbz r0, 0x2f9c(r29)
/* 800B75B8 000B44F8  7C 00 F8 40 */ cmplw r0, r31
/* 800B75BC 000B44FC  41 82 00 08 */ beq lbl_800B75C4
lbl_800B75C0:
/* 800B75C0 000B4500  9B DD 2F 9C */ stb r30, 0x2f9c(r29)
lbl_800B75C4:
/* 800B75C4 000B4504  3B DE 00 01 */ addi r30, r30, 1
lbl_800B75C8:
/* 800B75C8 000B4508  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 800B75CC 000B450C  28 00 00 02 */ cmplwi r0, 2
/* 800B75D0 000B4510  41 80 FF 9C */ blt lbl_800B756C
lbl_800B75D4:
/* 800B75D4 000B4514  39 61 00 20 */ addi r11, r1, 0x20
/* 800B75D8 000B4518  48 2A AC 51 */ bl _restgpr_29
/* 800B75DC 000B451C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B75E0 000B4520  7C 08 03 A6 */ mtlr r0
/* 800B75E4 000B4524  38 21 00 20 */ addi r1, r1, 0x20
/* 800B75E8 000B4528  4E 80 00 20 */ blr
