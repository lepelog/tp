/* 800AFB74 000ACAB4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800AFB78 000ACAB8  7C 08 02 A6 */ mflr r0
/* 800AFB7C 000ACABC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800AFB80 000ACAC0  A0 03 21 42 */ lhz r0, 0x2142(r3)
/* 800AFB84 000ACAC4  28 00 FF FF */ cmplwi r0, 0xffff
/* 800AFB88 000ACAC8  41 82 00 38 */ beq lbl_800AFBC0
/* 800AFB8C 000ACACC  3C 80 00 01 */ lis r4, 0x0000FFFF@ha
/* 800AFB90 000ACAD0  38 04 FF FF */ addi r0, r4, 0x0000FFFF@l
/* 800AFB94 000ACAD4  B0 03 21 42 */ sth r0, 0x2142(r3)
/* 800AFB98 000ACAD8  A0 03 21 40 */ lhz r0, 0x2140(r3)
/* 800AFB9C 000ACADC  7C 04 03 78 */ mr r4, r0
/* 800AFBA0 000ACAE0  28 00 FF FF */ cmplwi r0, 0xffff
/* 800AFBA4 000ACAE4  40 82 00 08 */ bne lbl_800AFBAC
/* 800AFBA8 000ACAE8  38 80 00 DF */ li r4, 0xdf
lbl_800AFBAC:
/* 800AFBAC 000ACAEC  3C A0 00 01 */ lis r5, 0x0000FFFF@ha
/* 800AFBB0 000ACAF0  38 C5 FF FF */ addi r6, r5, 0x0000FFFF@l
/* 800AFBB4 000ACAF4  B0 C3 21 40 */ sth r6, 0x2140(r3)
/* 800AFBB8 000ACAF8  38 A0 00 00 */ li r5, 0
/* 800AFBBC 000ACAFC  4B FF F8 F5 */ bl setFaceBck__9daAlink_cFUsiUs
lbl_800AFBC0:
/* 800AFBC0 000ACB00  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800AFBC4 000ACB04  7C 08 03 A6 */ mtlr r0
/* 800AFBC8 000ACB08  38 21 00 10 */ addi r1, r1, 0x10
/* 800AFBCC 000ACB0C  4E 80 00 20 */ blr
