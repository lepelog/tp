/* 80108600 00105540  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80108604 00105544  7C 08 02 A6 */ mflr r0
/* 80108608 00105548  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010860C 0010554C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80108610 00105550  93 C1 00 08 */ stw r30, 8(r1)
/* 80108614 00105554  7C 7E 1B 78 */ mr r30, r3
/* 80108618 00105558  3B E0 00 00 */ li r31, 0
/* 8010861C 0010555C  A0 63 2F DC */ lhz r3, 0x2fdc(r3)
/* 80108620 00105560  48 05 65 99 */ bl checkHookshotItem__9daPy_py_cFi
/* 80108624 00105564  2C 03 00 00 */ cmpwi r3, 0
/* 80108628 00105568  41 82 00 24 */ beq lbl_8010864C
/* 8010862C 0010556C  A8 1E 30 1A */ lha r0, 0x301a(r30)
/* 80108630 00105570  2C 00 00 04 */ cmpwi r0, 4
/* 80108634 00105574  41 82 00 14 */ beq lbl_80108648
/* 80108638 00105578  2C 00 00 05 */ cmpwi r0, 5
/* 8010863C 0010557C  41 82 00 0C */ beq lbl_80108648
/* 80108640 00105580  2C 00 00 06 */ cmpwi r0, 6
/* 80108644 00105584  40 82 00 08 */ bne lbl_8010864C
lbl_80108648:
/* 80108648 00105588  3B E0 00 01 */ li r31, 1
lbl_8010864C:
/* 8010864C 0010558C  7F E3 FB 78 */ mr r3, r31
/* 80108650 00105590  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80108654 00105594  83 C1 00 08 */ lwz r30, 8(r1)
/* 80108658 00105598  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8010865C 0010559C  7C 08 03 A6 */ mtlr r0
/* 80108660 001055A0  38 21 00 10 */ addi r1, r1, 0x10
/* 80108664 001055A4  4E 80 00 20 */ blr