/* 800B74B4 000B43F4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B74B8 000B43F8  7C 08 02 A6 */ mflr r0
/* 800B74BC 000B43FC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B74C0 000B4400  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B74C4 000B4404  7C 7F 1B 78 */ mr r31, r3
/* 800B74C8 000B4408  A0 83 2F DC */ lhz r4, 0x2fdc(r3)
/* 800B74CC 000B440C  48 02 72 B5 */ bl checkBowAndSlingItem__9daAlink_cFi
/* 800B74D0 000B4410  2C 03 00 00 */ cmpwi r3, 0
/* 800B74D4 000B4414  41 82 00 10 */ beq lbl_800B74E4
/* 800B74D8 000B4418  7F E3 FB 78 */ mr r3, r31
/* 800B74DC 000B441C  48 02 82 BD */ bl checkUpperItemAction__9daAlink_cFvBowFly
/* 800B74E0 000B4420  48 00 00 2C */ b lbl_800B750C
lbl_800B74E4:
/* 800B74E4 000B4424  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800B74E8 000B4428  28 00 00 40 */ cmplwi r0, 0x40
/* 800B74EC 000B442C  40 82 00 10 */ bne lbl_800B74FC
/* 800B74F0 000B4430  7F E3 FB 78 */ mr r3, r31
/* 800B74F4 000B4434  48 02 96 65 */ bl checkUpperItemAction__9daAlink_cFvBoomerangFly
/* 800B74F8 000B4438  48 00 00 14 */ b lbl_800B750C
lbl_800B74FC:
/* 800B74FC 000B443C  28 00 00 46 */ cmplwi r0, 0x46
/* 800B7500 000B4440  40 82 00 0C */ bne lbl_800B750C
/* 800B7504 000B4444  7F E3 FB 78 */ mr r3, r31
/* 800B7508 000B4448  48 02 A6 AD */ bl checkUpperItemAction__9daAlink_cFvCopyRodFly
lbl_800B750C:
/* 800B750C 000B444C  7F E3 FB 78 */ mr r3, r31
/* 800B7510 000B4450  48 03 CA F9 */ bl checkCanoeJumpRide__9daAlink_cFv
/* 800B7514 000B4454  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B7518 000B4458  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B751C 000B445C  7C 08 03 A6 */ mtlr r0
/* 800B7520 000B4460  38 21 00 10 */ addi r1, r1, 0x10
/* 800B7524 000B4464  4E 80 00 20 */ blr
