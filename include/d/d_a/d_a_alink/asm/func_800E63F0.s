/* 800E63F0 000E3330  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E63F4 000E3334  7C 08 02 A6 */ mflr r0
/* 800E63F8 000E3338  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E63FC 000E333C  39 61 00 20 */ addi r11, r1, 0x20
/* 800E6400 000E3340  48 27 BD DD */ bl _savegpr_29
/* 800E6404 000E3344  7C 7F 1B 78 */ mr r31, r3
/* 800E6408 000E3348  7C 9D 23 78 */ mr r29, r4
/* 800E640C 000E334C  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800E6410 000E3350  3B C4 D6 58 */ addi r30, r4, lbl_8038D658@l
/* 800E6414 000E3354  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800E6418 000E3358  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E641C 000E335C  41 82 00 98 */ beq lbl_800E64B4
/* 800E6420 000E3360  4B FF D9 4D */ bl checkGrabHeavyActor__9daAlink_cFv
/* 800E6424 000E3364  2C 03 00 00 */ cmpwi r3, 0
/* 800E6428 000E3368  41 82 00 28 */ beq lbl_800E6450
/* 800E642C 000E336C  7F E3 FB 78 */ mr r3, r31
/* 800E6430 000E3370  38 80 01 7B */ li r4, 0x17b
/* 800E6434 000E3374  38 A0 00 02 */ li r5, 2
/* 800E6438 000E3378  38 DE 15 F0 */ addi r6, r30, 0x15f0
/* 800E643C 000E337C  38 C6 00 C8 */ addi r6, r6, 0xc8
/* 800E6440 000E3380  4B FC 72 B1 */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800E6444 000E3384  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 800E6448 000E3388  D0 1F 34 3C */ stfs f0, 0x343c(r31)
/* 800E644C 000E338C  48 00 00 54 */ b lbl_800E64A0
lbl_800E6450:
/* 800E6450 000E3390  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800E6454 000E3394  28 00 00 50 */ cmplwi r0, 0x50
/* 800E6458 000E3398  40 82 00 28 */ bne lbl_800E6480
/* 800E645C 000E339C  7F E3 FB 78 */ mr r3, r31
/* 800E6460 000E33A0  38 80 00 51 */ li r4, 0x51
/* 800E6464 000E33A4  38 A0 00 02 */ li r5, 2
/* 800E6468 000E33A8  38 DE 15 F0 */ addi r6, r30, 0x15f0
/* 800E646C 000E33AC  38 C6 00 B4 */ addi r6, r6, 0xb4
/* 800E6470 000E33B0  4B FC 72 81 */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800E6474 000E33B4  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800E6478 000E33B8  D0 1F 34 3C */ stfs f0, 0x343c(r31)
/* 800E647C 000E33BC  48 00 00 24 */ b lbl_800E64A0
lbl_800E6480:
/* 800E6480 000E33C0  7F E3 FB 78 */ mr r3, r31
/* 800E6484 000E33C4  38 80 01 70 */ li r4, 0x170
/* 800E6488 000E33C8  38 A0 00 02 */ li r5, 2
/* 800E648C 000E33CC  38 DE 15 F0 */ addi r6, r30, 0x15f0
/* 800E6490 000E33D0  38 C6 00 3C */ addi r6, r6, 0x3c
/* 800E6494 000E33D4  4B FC 72 5D */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800E6498 000E33D8  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800E649C 000E33DC  D0 1F 34 3C */ stfs f0, 0x343c(r31)
lbl_800E64A0:
/* 800E64A0 000E33E0  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800E64A4 000E33E4  64 00 10 00 */ oris r0, r0, 0x1000
/* 800E64A8 000E33E8  90 1F 05 74 */ stw r0, 0x574(r31)
/* 800E64AC 000E33EC  38 60 00 01 */ li r3, 1
/* 800E64B0 000E33F0  48 00 01 30 */ b lbl_800E65E0
lbl_800E64B4:
/* 800E64B4 000E33F4  38 80 00 6F */ li r4, 0x6f
/* 800E64B8 000E33F8  4B FD C8 ED */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800E64BC 000E33FC  2C 03 00 00 */ cmpwi r3, 0
/* 800E64C0 000E3400  40 82 00 0C */ bne lbl_800E64CC
/* 800E64C4 000E3404  38 60 00 00 */ li r3, 0
/* 800E64C8 000E3408  48 00 01 18 */ b lbl_800E65E0
lbl_800E64CC:
/* 800E64CC 000E340C  7F E3 FB 78 */ mr r3, r31
/* 800E64D0 000E3410  4B FF D8 9D */ bl checkGrabHeavyActor__9daAlink_cFv
/* 800E64D4 000E3414  2C 03 00 00 */ cmpwi r3, 0
/* 800E64D8 000E3418  41 82 00 38 */ beq lbl_800E6510
/* 800E64DC 000E341C  7F E3 FB 78 */ mr r3, r31
/* 800E64E0 000E3420  38 80 00 B2 */ li r4, 0xb2
/* 800E64E4 000E3424  38 BE 15 F0 */ addi r5, r30, 0x15f0
/* 800E64E8 000E3428  38 A5 00 C8 */ addi r5, r5, 0xc8
/* 800E64EC 000E342C  4B FC 6C 09 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800E64F0 000E3430  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 800E64F4 000E3434  D0 1F 34 3C */ stfs f0, 0x343c(r31)
/* 800E64F8 000E3438  38 7E 15 F0 */ addi r3, r30, 0x15f0
/* 800E64FC 000E343C  C0 03 00 D8 */ lfs f0, 0xd8(r3)
/* 800E6500 000E3440  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800E6504 000E3444  38 00 00 02 */ li r0, 2
/* 800E6508 000E3448  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800E650C 000E344C  48 00 00 B0 */ b lbl_800E65BC
lbl_800E6510:
/* 800E6510 000E3450  7F E3 FB 78 */ mr r3, r31
/* 800E6514 000E3454  4B FF D8 81 */ bl checkGrabSideActor__9daAlink_cFv
/* 800E6518 000E3458  2C 03 00 00 */ cmpwi r3, 0
/* 800E651C 000E345C  41 82 00 70 */ beq lbl_800E658C
/* 800E6520 000E3460  7F E3 FB 78 */ mr r3, r31
/* 800E6524 000E3464  38 80 00 11 */ li r4, 0x11
/* 800E6528 000E3468  80 1F 27 EC */ lwz r0, 0x27ec(r31)
/* 800E652C 000E346C  28 00 00 00 */ cmplwi r0, 0
/* 800E6530 000E3470  41 82 00 10 */ beq lbl_800E6540
/* 800E6534 000E3474  38 BE 00 BC */ addi r5, r30, 0xbc
/* 800E6538 000E3478  C0 25 00 08 */ lfs f1, 8(r5)
/* 800E653C 000E347C  48 00 00 0C */ b lbl_800E6548
lbl_800E6540:
/* 800E6540 000E3480  38 BE 01 10 */ addi r5, r30, 0x110
/* 800E6544 000E3484  C0 25 00 08 */ lfs f1, 8(r5)
lbl_800E6548:
/* 800E6548 000E3488  38 BE 00 0C */ addi r5, r30, 0xc
/* 800E654C 000E348C  C0 45 00 18 */ lfs f2, 0x18(r5)
/* 800E6550 000E3490  4B FC 6A 91 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
/* 800E6554 000E3494  7F E3 FB 78 */ mr r3, r31
/* 800E6558 000E3498  38 80 00 51 */ li r4, 0x51
/* 800E655C 000E349C  38 A0 00 00 */ li r5, 0
/* 800E6560 000E34A0  38 DE 15 F0 */ addi r6, r30, 0x15f0
/* 800E6564 000E34A4  38 C6 00 B4 */ addi r6, r6, 0xb4
/* 800E6568 000E34A8  4B FC 71 89 */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800E656C 000E34AC  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800E6570 000E34B0  D0 1F 34 3C */ stfs f0, 0x343c(r31)
/* 800E6574 000E34B4  38 7E 15 F0 */ addi r3, r30, 0x15f0
/* 800E6578 000E34B8  C0 03 00 C4 */ lfs f0, 0xc4(r3)
/* 800E657C 000E34BC  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800E6580 000E34C0  38 00 00 01 */ li r0, 1
/* 800E6584 000E34C4  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800E6588 000E34C8  48 00 00 34 */ b lbl_800E65BC
lbl_800E658C:
/* 800E658C 000E34CC  7F E3 FB 78 */ mr r3, r31
/* 800E6590 000E34D0  38 80 00 B1 */ li r4, 0xb1
/* 800E6594 000E34D4  38 BE 15 F0 */ addi r5, r30, 0x15f0
/* 800E6598 000E34D8  38 A5 00 3C */ addi r5, r5, 0x3c
/* 800E659C 000E34DC  4B FC 6B 59 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800E65A0 000E34E0  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800E65A4 000E34E4  D0 1F 34 3C */ stfs f0, 0x343c(r31)
/* 800E65A8 000E34E8  38 7E 15 F0 */ addi r3, r30, 0x15f0
/* 800E65AC 000E34EC  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800E65B0 000E34F0  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800E65B4 000E34F4  38 00 00 00 */ li r0, 0
/* 800E65B8 000E34F8  B0 1F 30 0C */ sth r0, 0x300c(r31)
lbl_800E65BC:
/* 800E65BC 000E34FC  93 BF 31 98 */ stw r29, 0x3198(r31)
/* 800E65C0 000E3500  3C 60 80 42 */ lis r3, lbl_80425544@ha
/* 800E65C4 000E3504  C4 03 55 44 */ lfsu f0, lbl_80425544@l(r3)
/* 800E65C8 000E3508  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 800E65CC 000E350C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800E65D0 000E3510  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 800E65D4 000E3514  C0 03 00 08 */ lfs f0, 8(r3)
/* 800E65D8 000E3518  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 800E65DC 000E351C  38 60 00 01 */ li r3, 1
lbl_800E65E0:
/* 800E65E0 000E3520  39 61 00 20 */ addi r11, r1, 0x20
/* 800E65E4 000E3524  48 27 BC 45 */ bl _restgpr_29
/* 800E65E8 000E3528  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E65EC 000E352C  7C 08 03 A6 */ mtlr r0
/* 800E65F0 000E3530  38 21 00 20 */ addi r1, r1, 0x20
/* 800E65F4 000E3534  4E 80 00 20 */ blr