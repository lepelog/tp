/* 8002839C 000252DC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800283A0 000252E0  7C 08 02 A6 */ mflr r0
/* 800283A4 000252E4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800283A8 000252E8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800283AC 000252EC  93 C1 00 08 */ stw r30, 8(r1)
/* 800283B0 000252F0  7C 7E 1B 78 */ mr r30, r3
/* 800283B4 000252F4  3C 60 80 3A */ lis r3, lbl_803A6D94@ha
/* 800283B8 000252F8  38 03 6D 94 */ addi r0, r3, lbl_803A6D94@l
/* 800283BC 000252FC  90 1E 00 00 */ stw r0, 0(r30)
/* 800283C0 00025300  3C 60 80 3A */ lis r3, lbl_803A6AAC@ha
/* 800283C4 00025304  38 03 6A AC */ addi r0, r3, lbl_803A6AAC@l
/* 800283C8 00025308  90 1E 00 00 */ stw r0, 0(r30)
/* 800283CC 0002530C  3B FE 00 6C */ addi r31, r30, 0x6c
/* 800283D0 00025310  7F E3 FB 78 */ mr r3, r31
/* 800283D4 00025314  3C 80 80 3A */ lis r4, lbl_803A1EC8@ha
/* 800283D8 00025318  38 84 1E C8 */ addi r4, r4, lbl_803A1EC8@l
/* 800283DC 0002531C  48 2F D2 E9 */ bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 800283E0 00025320  38 7F 00 74 */ addi r3, r31, 0x74
/*.global J3DLightObj*/
/* 800283E4 00025324  3C 80 80 02 */ lis r4, __ct__11J3DLightObjFv@ha
/*.global J3DLightObj*/
/* 800283E8 00025328  38 84 8C 0C */ addi r4, r4, __ct__11J3DLightObjFv@l
/* 800283EC 0002532C  38 A0 00 00 */ li r5, 0
/* 800283F0 00025330  38 C0 00 74 */ li r6, 0x74
/* 800283F4 00025334  38 E0 00 06 */ li r7, 6
/* 800283F8 00025338  48 33 99 69 */ bl __construct_array
/* 800283FC 0002533C  7F C3 F3 78 */ mr r3, r30
/* 80028400 00025340  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80028404 00025344  83 C1 00 08 */ lwz r30, 8(r1)
/* 80028408 00025348  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002840C 0002534C  7C 08 03 A6 */ mtlr r0
/* 80028410 00025350  38 21 00 10 */ addi r1, r1, 0x10
/* 80028414 00025354  4E 80 00 20 */ blr