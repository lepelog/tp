/* 800BFE48 000BCD88  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800BFE4C 000BCD8C  7C 08 02 A6 */ mflr r0
/* 800BFE50 000BCD90  90 01 00 24 */ stw r0, 0x24(r1)
/* 800BFE54 000BCD94  39 61 00 20 */ addi r11, r1, 0x20
/* 800BFE58 000BCD98  48 2A 23 81 */ bl _savegpr_28
/* 800BFE5C 000BCD9C  7C 9C 23 78 */ mr r28, r4
/* 800BFE60 000BCDA0  7C BD 2B 78 */ mr r29, r5
/* 800BFE64 000BCDA4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800BFE68 000BCDA8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800BFE6C 000BCDAC  83 E3 5C AC */ lwz r31, 0x5cac(r3)
/* 800BFE70 000BCDB0  7F A3 EB 78 */ mr r3, r29
/* 800BFE74 000BCDB4  38 80 00 20 */ li r4, 0x20
/* 800BFE78 000BCDB8  48 20 EE 75 */ bl __nwa__FUli
/* 800BFE7C 000BCDBC  7C 7E 1B 78 */ mr r30, r3
/* 800BFE80 000BCDC0  7F E3 FB 78 */ mr r3, r31
/* 800BFE84 000BCDC4  7F C4 F3 78 */ mr r4, r30
/* 800BFE88 000BCDC8  7F A5 EB 78 */ mr r5, r29
/* 800BFE8C 000BCDCC  57 86 04 3E */ clrlwi r6, r28, 0x10
/* 800BFE90 000BCDD0  48 21 60 3D */ bl readIdxResource__10JKRArchiveFPvUlUl
/* 800BFE94 000BCDD4  3C 60 42 4D */ lis r3, 0x424D5752@ha
/* 800BFE98 000BCDD8  38 63 57 52 */ addi r3, r3, 0x424D5752@l
/* 800BFE9C 000BCDDC  80 DF 00 48 */ lwz r6, 0x48(r31)
/* 800BFEA0 000BCDE0  57 85 04 3E */ clrlwi r5, r28, 0x10
/* 800BFEA4 000BCDE4  80 9F 00 44 */ lwz r4, 0x44(r31)
/* 800BFEA8 000BCDE8  80 04 00 00 */ lwz r0, 0(r4)
/* 800BFEAC 000BCDEC  7C 09 03 A6 */ mtctr r0
/* 800BFEB0 000BCDF0  2C 00 00 00 */ cmpwi r0, 0
/* 800BFEB4 000BCDF4  40 81 00 30 */ ble lbl_800BFEE4
lbl_800BFEB8:
/* 800BFEB8 000BCDF8  80 86 00 0C */ lwz r4, 0xc(r6)
/* 800BFEBC 000BCDFC  7C 05 20 40 */ cmplw r5, r4
/* 800BFEC0 000BCE00  41 80 00 1C */ blt lbl_800BFEDC
/* 800BFEC4 000BCE04  A0 06 00 0A */ lhz r0, 0xa(r6)
/* 800BFEC8 000BCE08  7C 04 02 14 */ add r0, r4, r0
/* 800BFECC 000BCE0C  7C 05 00 40 */ cmplw r5, r0
/* 800BFED0 000BCE10  40 80 00 0C */ bge lbl_800BFEDC
/* 800BFED4 000BCE14  80 66 00 00 */ lwz r3, 0(r6)
/* 800BFED8 000BCE18  48 00 00 0C */ b lbl_800BFEE4
lbl_800BFEDC:
/* 800BFEDC 000BCE1C  38 C6 00 10 */ addi r6, r6, 0x10
/* 800BFEE0 000BCE20  42 00 FF D8 */ bdnz lbl_800BFEB8
lbl_800BFEE4:
/* 800BFEE4 000BCE24  7F C4 F3 78 */ mr r4, r30
/* 800BFEE8 000BCE28  4B F7 AF 2D */ bl loaderBasicBmd__11dRes_info_cFUlPv
/* 800BFEEC 000BCE2C  39 61 00 20 */ addi r11, r1, 0x20
/* 800BFEF0 000BCE30  48 2A 23 35 */ bl _restgpr_28
/* 800BFEF4 000BCE34  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800BFEF8 000BCE38  7C 08 03 A6 */ mtlr r0
/* 800BFEFC 000BCE3C  38 21 00 20 */ addi r1, r1, 0x20
/* 800BFF00 000BCE40  4E 80 00 20 */ blr
