/* 800CF1B8 000CC0F8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800CF1BC 000CC0FC  7C 08 02 A6 */ mflr r0
/* 800CF1C0 000CC100  90 01 00 24 */ stw r0, 0x24(r1)
/* 800CF1C4 000CC104  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800CF1C8 000CC108  7C 7F 1B 78 */ mr r31, r3
/* 800CF1CC 000CC10C  88 03 2F 8D */ lbz r0, 0x2f8d(r3)
/* 800CF1D0 000CC110  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800CF1D4 000CC114  40 82 00 14 */ bne lbl_800CF1E8
/* 800CF1D8 000CC118  38 80 00 08 */ li r4, 8
/* 800CF1DC 000CC11C  4B FE 33 F1 */ bl itemTriggerCheck__9daAlink_cFUc
/* 800CF1E0 000CC120  2C 03 00 00 */ cmpwi r3, 0
/* 800CF1E4 000CC124  41 82 00 60 */ beq lbl_800CF244
lbl_800CF1E8:
/* 800CF1E8 000CC128  38 00 00 00 */ li r0, 0
/* 800CF1EC 000CC12C  90 01 00 08 */ stw r0, 8(r1)
/*.global daAlink_searchPeepObj*/
/* 800CF1F0 000CC130  3C 60 80 0D */ lis r3, daAlink_searchPeepObj__FP10fopAc_ac_cPv@ha
/*.global daAlink_searchPeepObj*/
/* 800CF1F4 000CC134  38 63 ED 48 */ addi r3, r3, daAlink_searchPeepObj__FP10fopAc_ac_cPv@l
/* 800CF1F8 000CC138  38 81 00 08 */ addi r4, r1, 8
/* 800CF1FC 000CC13C  4B F4 A5 C1 */ bl fopAcIt_Executor__FPFPvPv_iPv
/* 800CF200 000CC140  80 61 00 08 */ lwz r3, 8(r1)
/* 800CF204 000CC144  28 03 00 00 */ cmplwi r3, 0
/* 800CF208 000CC148  41 82 00 0C */ beq lbl_800CF214
/* 800CF20C 000CC14C  88 03 05 6D */ lbz r0, 0x56d(r3)
/* 800CF210 000CC150  98 1F 2F AD */ stb r0, 0x2fad(r31)
lbl_800CF214:
/* 800CF214 000CC154  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800CF218 000CC158  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800CF21C 000CC15C  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 800CF220 000CC160  7F E4 FB 78 */ mr r4, r31
/* 800CF224 000CC164  38 A0 00 00 */ li r5, 0
/* 800CF228 000CC168  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800CF22C 000CC16C  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800CF230 000CC170  4B F7 3F 3D */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 800CF234 000CC174  2C 03 00 00 */ cmpwi r3, 0
/* 800CF238 000CC178  41 82 00 0C */ beq lbl_800CF244
/* 800CF23C 000CC17C  7F E3 FB 78 */ mr r3, r31
/* 800CF240 000CC180  4B FE EB 31 */ bl startPeepChange__9daAlink_cFv
lbl_800CF244:
/* 800CF244 000CC184  38 60 00 01 */ li r3, 1
/* 800CF248 000CC188  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800CF24C 000CC18C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800CF250 000CC190  7C 08 03 A6 */ mtlr r0
/* 800CF254 000CC194  38 21 00 20 */ addi r1, r1, 0x20
/* 800CF258 000CC198  4E 80 00 20 */ blr