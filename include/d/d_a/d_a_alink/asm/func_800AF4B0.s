/* 800AF4B0 000AC3F0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800AF4B4 000AC3F4  7C 08 02 A6 */ mflr r0
/* 800AF4B8 000AC3F8  90 01 00 24 */ stw r0, 0x24(r1)
/* 800AF4BC 000AC3FC  39 61 00 20 */ addi r11, r1, 0x20
/* 800AF4C0 000AC400  48 2B 2D 1D */ bl _savegpr_29
/* 800AF4C4 000AC404  7C 7F 1B 78 */ mr r31, r3
/* 800AF4C8 000AC408  B0 81 00 08 */ sth r4, 8(r1)
/* 800AF4CC 000AC40C  7C BD 2B 78 */ mr r29, r5
/* 800AF4D0 000AC410  B0 C1 00 0A */ sth r6, 0xa(r1)
/* 800AF4D4 000AC414  80 03 05 70 */ lwz r0, 0x570(r3)
/* 800AF4D8 000AC418  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800AF4DC 000AC41C  40 82 00 1C */ bne lbl_800AF4F8
/* 800AF4E0 000AC420  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800AF4E4 000AC424  28 00 01 48 */ cmplwi r0, 0x148
/* 800AF4E8 000AC428  41 82 00 10 */ beq lbl_800AF4F8
/* 800AF4EC 000AC42C  38 00 01 57 */ li r0, 0x157
/* 800AF4F0 000AC430  B0 01 00 08 */ sth r0, 8(r1)
/* 800AF4F4 000AC434  48 00 00 90 */ b lbl_800AF584
lbl_800AF4F8:
/* 800AF4F8 000AC438  A0 01 00 08 */ lhz r0, 8(r1)
/* 800AF4FC 000AC43C  28 00 00 00 */ cmplwi r0, 0
/* 800AF500 000AC440  40 82 00 74 */ bne lbl_800AF574
/* 800AF504 000AC444  80 7F 27 E0 */ lwz r3, 0x27e0(r31)
/* 800AF508 000AC448  38 80 00 00 */ li r4, 0
/* 800AF50C 000AC44C  4B FC 40 31 */ bl LockonTarget__12dAttention_cFl
/* 800AF510 000AC450  7C 7E 1B 78 */ mr r30, r3
/* 800AF514 000AC454  7F E3 FB 78 */ mr r3, r31
/* 800AF518 000AC458  48 00 3F E9 */ bl checkAttentionState__9daAlink_cFv
/* 800AF51C 000AC45C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800AF520 000AC460  40 82 00 3C */ bne lbl_800AF55C
/* 800AF524 000AC464  7F E3 FB 78 */ mr r3, r31
/* 800AF528 000AC468  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800AF52C 000AC46C  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800AF530 000AC470  7D 89 03 A6 */ mtctr r12
/* 800AF534 000AC474  4E 80 04 21 */ bctrl
/* 800AF538 000AC478  28 03 00 00 */ cmplwi r3, 0
/* 800AF53C 000AC47C  41 82 00 14 */ beq lbl_800AF550
/* 800AF540 000AC480  7F C3 F3 78 */ mr r3, r30
/* 800AF544 000AC484  48 02 D0 05 */ bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800AF548 000AC488  2C 03 00 00 */ cmpwi r3, 0
/* 800AF54C 000AC48C  40 82 00 10 */ bne lbl_800AF55C
lbl_800AF550:
/* 800AF550 000AC490  80 1F 05 88 */ lwz r0, 0x588(r31)
/* 800AF554 000AC494  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800AF558 000AC498  41 82 00 10 */ beq lbl_800AF568
lbl_800AF55C:
/* 800AF55C 000AC49C  38 00 00 E8 */ li r0, 0xe8
/* 800AF560 000AC4A0  B0 01 00 08 */ sth r0, 8(r1)
/* 800AF564 000AC4A4  48 00 00 20 */ b lbl_800AF584
lbl_800AF568:
/* 800AF568 000AC4A8  38 00 00 DF */ li r0, 0xdf
/* 800AF56C 000AC4AC  B0 01 00 08 */ sth r0, 8(r1)
/* 800AF570 000AC4B0  48 00 00 14 */ b lbl_800AF584
lbl_800AF574:
/* 800AF574 000AC4B4  7F E3 FB 78 */ mr r3, r31
/* 800AF578 000AC4B8  38 81 00 0A */ addi r4, r1, 0xa
/* 800AF57C 000AC4BC  38 A1 00 08 */ addi r5, r1, 8
/* 800AF580 000AC4C0  4B FF 47 65 */ bl setIdxMask__9daAlink_cFPUsPUs
lbl_800AF584:
/* 800AF584 000AC4C4  A0 A1 00 0A */ lhz r5, 0xa(r1)
/* 800AF588 000AC4C8  28 05 FF FF */ cmplwi r5, 0xffff
/* 800AF58C 000AC4CC  41 82 00 18 */ beq lbl_800AF5A4
/* 800AF590 000AC4D0  38 7F 21 40 */ addi r3, r31, 0x2140
/* 800AF594 000AC4D4  A0 81 00 08 */ lhz r4, 8(r1)
/* 800AF598 000AC4D8  48 0A FB 81 */ bl loadData__14daPy_anmHeap_cFUsDemoRID
/* 800AF59C 000AC4DC  7C 7E 1B 78 */ mr r30, r3
/* 800AF5A0 000AC4E0  48 00 00 30 */ b lbl_800AF5D0
lbl_800AF5A4:
/* 800AF5A4 000AC4E4  2C 1D 00 00 */ cmpwi r29, 0
/* 800AF5A8 000AC4E8  41 82 00 18 */ beq lbl_800AF5C0
/* 800AF5AC 000AC4EC  38 7F 21 40 */ addi r3, r31, 0x2140
/* 800AF5B0 000AC4F0  A0 81 00 08 */ lhz r4, 8(r1)
/* 800AF5B4 000AC4F4  48 0A FB 1D */ bl loadData__14daPy_anmHeap_cFUsPriIdx
/* 800AF5B8 000AC4F8  7C 7E 1B 78 */ mr r30, r3
/* 800AF5BC 000AC4FC  48 00 00 14 */ b lbl_800AF5D0
lbl_800AF5C0:
/* 800AF5C0 000AC500  38 7F 21 40 */ addi r3, r31, 0x2140
/* 800AF5C4 000AC504  A0 81 00 08 */ lhz r4, 8(r1)
/* 800AF5C8 000AC508  48 0A FA A1 */ bl loadData__14daPy_anmHeap_cFUsIdx
/* 800AF5CC 000AC50C  7C 7E 1B 78 */ mr r30, r3
lbl_800AF5D0:
/* 800AF5D0 000AC510  28 1E 00 00 */ cmplwi r30, 0
/* 800AF5D4 000AC514  41 82 00 30 */ beq lbl_800AF604
/* 800AF5D8 000AC518  38 7F 21 64 */ addi r3, r31, 0x2164
/* 800AF5DC 000AC51C  7F C4 F3 78 */ mr r4, r30
/* 800AF5E0 000AC520  38 A0 00 00 */ li r5, 0
/* 800AF5E4 000AC524  88 DE 00 04 */ lbz r6, 4(r30)
/* 800AF5E8 000AC528  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AF5EC 000AC52C  38 E0 00 00 */ li r7, 0
/* 800AF5F0 000AC530  39 00 FF FF */ li r8, -1
/* 800AF5F4 000AC534  39 20 00 01 */ li r9, 1
/* 800AF5F8 000AC538  4B F5 E1 E5 */ bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800AF5FC 000AC53C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AF600 000AC540  D0 1E 00 08 */ stfs f0, 8(r30)
lbl_800AF604:
/* 800AF604 000AC544  39 61 00 20 */ addi r11, r1, 0x20
/* 800AF608 000AC548  48 2B 2C 21 */ bl _restgpr_29
/* 800AF60C 000AC54C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800AF610 000AC550  7C 08 03 A6 */ mtlr r0
/* 800AF614 000AC554  38 21 00 20 */ addi r1, r1, 0x20
/* 800AF618 000AC558  4E 80 00 20 */ blr
