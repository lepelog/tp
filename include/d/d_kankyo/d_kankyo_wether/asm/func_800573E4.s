/* 800573E4 00054324  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800573E8 00054328  7C 08 02 A6 */ mflr r0
/* 800573EC 0005432C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800573F0 00054330  7C 64 1B 78 */ mr r4, r3
/* 800573F4 00054334  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 800573F8 00054338  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 800573FC 0005433C  80 63 0F 28 */ lwz r3, 0xf28(r3)
/* 80057400 00054340  4B FF F6 F9 */ bl dKyw_setDrawPacketListIndScreen__FP9J3DPacketi
/* 80057404 00054344  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80057408 00054348  7C 08 03 A6 */ mtlr r0
/* 8005740C 0005434C  38 21 00 10 */ addi r1, r1, 0x10
/* 80057410 00054350  4E 80 00 20 */ blr
