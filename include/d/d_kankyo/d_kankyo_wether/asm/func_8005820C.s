/* 8005820C 0005514C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80058210 00055150  7C 08 02 A6 */ mflr r0
/* 80058214 00055154  90 01 00 14 */ stw r0, 0x14(r1)
/* 80058218 00055158  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8005821C 0005515C  93 C1 00 08 */ stw r30, 8(r1)
/* 80058220 00055160  7C 7E 1B 79 */ or. r30, r3, r3
/* 80058224 00055164  7C 9F 23 78 */ mr r31, r4
/* 80058228 00055168  41 82 00 4C */ beq lbl_80058274
/* 8005822C 0005516C  3C 60 80 3B */ lis r3, lbl_803A9AFC@ha
/* 80058230 00055170  38 03 9A FC */ addi r0, r3, lbl_803A9AFC@l
/* 80058234 00055174  90 1E 00 00 */ stw r0, 0(r30)
/* 80058238 00055178  38 7E 00 20 */ addi r3, r30, 0x20
/*.global __dt__10VRKUMO_EFFFv*/
/* 8005823C 0005517C  3C 80 80 05 */ lis r4, __dt__10VRKUMO_EFFFv@ha
/*.global __dt__10VRKUMO_EFFFv*/
/* 80058240 00055180  38 84 6F 18 */ addi r4, r4, __dt__10VRKUMO_EFFFv@l
/* 80058244 00055184  38 A0 00 2C */ li r5, 0x2c
/* 80058248 00055188  38 C0 00 64 */ li r6, 0x64
/* 8005824C 0005518C  48 30 9A 9D */ bl func_80361CE8
/* 80058250 00055190  28 1E 00 00 */ cmplwi r30, 0
/* 80058254 00055194  41 82 00 10 */ beq lbl_80058264
/* 80058258 00055198  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 8005825C 0005519C  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80058260 000551A0  90 1E 00 00 */ stw r0, 0(r30)
lbl_80058264:
/* 80058264 000551A4  7F E0 07 35 */ extsh. r0, r31
/* 80058268 000551A8  40 81 00 0C */ ble lbl_80058274
/* 8005826C 000551AC  7F C3 F3 78 */ mr r3, r30
/* 80058270 000551B0  48 27 6A CD */ bl __dl__FPv
lbl_80058274:
/* 80058274 000551B4  7F C3 F3 78 */ mr r3, r30
/* 80058278 000551B8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8005827C 000551BC  83 C1 00 08 */ lwz r30, 8(r1)
/* 80058280 000551C0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80058284 000551C4  7C 08 03 A6 */ mtlr r0
/* 80058288 000551C8  38 21 00 10 */ addi r1, r1, 0x10
/* 8005828C 000551CC  4E 80 00 20 */ blr
