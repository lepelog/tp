/* 802C551C 002C245C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802C5520 002C2460  7C 08 02 A6 */ mflr r0
/* 802C5524 002C2464  90 01 00 34 */ stw r0, 0x34(r1)
/* 802C5528 002C2468  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 802C552C 002C246C  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 802C5530 002C2470  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802C5534 002C2474  93 C1 00 18 */ stw r30, 0x18(r1)
/* 802C5538 002C2478  7C 7F 1B 78 */ mr r31, r3
/* 802C553C 002C247C  FF E0 08 90 */ fmr f31, f1
/* 802C5540 002C2480  3B C0 00 00 */ li r30, 0
/* 802C5544 002C2484  C0 02 C3 20 */ lfs f0, lbl_80455D20-_SDA2_BASE_(r2)
/* 802C5548 002C2488  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 802C554C 002C248C  41 80 01 4C */ blt lbl_802C5698
/* 802C5550 002C2490  C0 02 C3 24 */ lfs f0, lbl_80455D24-_SDA2_BASE_(r2)
/* 802C5554 002C2494  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 802C5558 002C2498  40 80 00 A4 */ bge lbl_802C55FC
/* 802C555C 002C249C  3C 80 00 06 */ lis r4, 0x0006004E@ha
/* 802C5560 002C24A0  38 04 00 4E */ addi r0, r4, 0x0006004E@l
/* 802C5564 002C24A4  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C5568 002C24A8  38 81 00 0C */ addi r4, r1, 0xc
/* 802C556C 002C24AC  38 A0 00 00 */ li r5, 0
/* 802C5570 002C24B0  38 C0 FF FF */ li r6, -1
/* 802C5574 002C24B4  81 83 00 10 */ lwz r12, 0x10(r3)
/* 802C5578 002C24B8  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 802C557C 002C24BC  7D 89 03 A6 */ mtctr r12
/* 802C5580 002C24C0  4E 80 04 21 */ bctrl
/* 802C5584 002C24C4  7C 7E 1B 79 */ or. r30, r3, r3
/* 802C5588 002C24C8  41 82 01 10 */ beq lbl_802C5698
/* 802C558C 002C24CC  80 1E 00 00 */ lwz r0, 0(r30)
/* 802C5590 002C24D0  28 00 00 00 */ cmplwi r0, 0
/* 802C5594 002C24D4  41 82 01 04 */ beq lbl_802C5698
/* 802C5598 002C24D8  FC 20 F8 90 */ fmr f1, f31
/* 802C559C 002C24DC  C0 42 C2 A0 */ lfs f2, lbl_80455CA0-_SDA2_BASE_(r2)
/* 802C55A0 002C24E0  C0 62 C3 24 */ lfs f3, lbl_80455D24-_SDA2_BASE_(r2)
/* 802C55A4 002C24E4  C0 82 C3 08 */ lfs f4, lbl_80455D08-_SDA2_BASE_(r2)
/* 802C55A8 002C24E8  C0 A2 C3 28 */ lfs f5, lbl_80455D28-_SDA2_BASE_(r2)
/* 802C55AC 002C24EC  C0 C2 C3 2C */ lfs f6, lbl_80455D2C-_SDA2_BASE_(r2)
/* 802C55B0 002C24F0  38 60 00 01 */ li r3, 1
/* 802C55B4 002C24F4  4B FE 41 41 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C55B8 002C24F8  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C55BC 002C24FC  38 63 00 48 */ addi r3, r3, 0x48
/* 802C55C0 002C2500  38 80 00 00 */ li r4, 0
/* 802C55C4 002C2504  4B FD D8 49 */ bl movePitch__18JAISoundParamsMoveFfUl
/* 802C55C8 002C2508  FC 20 F8 90 */ fmr f1, f31
/* 802C55CC 002C250C  C0 42 C2 A0 */ lfs f2, lbl_80455CA0-_SDA2_BASE_(r2)
/* 802C55D0 002C2510  C0 62 C3 24 */ lfs f3, lbl_80455D24-_SDA2_BASE_(r2)
/* 802C55D4 002C2514  C0 82 C2 EC */ lfs f4, lbl_80455CEC-_SDA2_BASE_(r2)
/* 802C55D8 002C2518  C0 A2 C2 D0 */ lfs f5, lbl_80455CD0-_SDA2_BASE_(r2)
/* 802C55DC 002C251C  C0 C2 C2 98 */ lfs f6, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C55E0 002C2520  38 60 00 01 */ li r3, 1
/* 802C55E4 002C2524  4B FE 41 11 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C55E8 002C2528  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C55EC 002C252C  38 63 00 48 */ addi r3, r3, 0x48
/* 802C55F0 002C2530  38 80 00 00 */ li r4, 0
/* 802C55F4 002C2534  4B FD D7 C1 */ bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C55F8 002C2538  48 00 00 A0 */ b lbl_802C5698
lbl_802C55FC:
/* 802C55FC 002C253C  3C 80 00 06 */ lis r4, 0x0006004F@ha
/* 802C5600 002C2540  38 04 00 4F */ addi r0, r4, 0x0006004F@l
/* 802C5604 002C2544  90 01 00 08 */ stw r0, 8(r1)
/* 802C5608 002C2548  38 81 00 08 */ addi r4, r1, 8
/* 802C560C 002C254C  38 A0 00 00 */ li r5, 0
/* 802C5610 002C2550  38 C0 FF FF */ li r6, -1
/* 802C5614 002C2554  81 83 00 10 */ lwz r12, 0x10(r3)
/* 802C5618 002C2558  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 802C561C 002C255C  7D 89 03 A6 */ mtctr r12
/* 802C5620 002C2560  4E 80 04 21 */ bctrl
/* 802C5624 002C2564  7C 7E 1B 79 */ or. r30, r3, r3
/* 802C5628 002C2568  41 82 00 70 */ beq lbl_802C5698
/* 802C562C 002C256C  80 1E 00 00 */ lwz r0, 0(r30)
/* 802C5630 002C2570  28 00 00 00 */ cmplwi r0, 0
/* 802C5634 002C2574  41 82 00 64 */ beq lbl_802C5698
/* 802C5638 002C2578  FC 20 F8 90 */ fmr f1, f31
/* 802C563C 002C257C  C0 42 C3 24 */ lfs f2, lbl_80455D24-_SDA2_BASE_(r2)
/* 802C5640 002C2580  C0 62 C3 30 */ lfs f3, lbl_80455D30-_SDA2_BASE_(r2)
/* 802C5644 002C2584  C0 82 C3 08 */ lfs f4, lbl_80455D08-_SDA2_BASE_(r2)
/* 802C5648 002C2588  C0 A2 C3 28 */ lfs f5, lbl_80455D28-_SDA2_BASE_(r2)
/* 802C564C 002C258C  C0 C2 C3 2C */ lfs f6, lbl_80455D2C-_SDA2_BASE_(r2)
/* 802C5650 002C2590  38 60 00 01 */ li r3, 1
/* 802C5654 002C2594  4B FE 40 A1 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5658 002C2598  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C565C 002C259C  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5660 002C25A0  38 80 00 00 */ li r4, 0
/* 802C5664 002C25A4  4B FD D7 A9 */ bl movePitch__18JAISoundParamsMoveFfUl
/* 802C5668 002C25A8  FC 20 F8 90 */ fmr f1, f31
/* 802C566C 002C25AC  C0 42 C3 24 */ lfs f2, lbl_80455D24-_SDA2_BASE_(r2)
/* 802C5670 002C25B0  C0 62 C3 30 */ lfs f3, lbl_80455D30-_SDA2_BASE_(r2)
/* 802C5674 002C25B4  C0 82 C2 EC */ lfs f4, lbl_80455CEC-_SDA2_BASE_(r2)
/* 802C5678 002C25B8  C0 A2 C2 F0 */ lfs f5, lbl_80455CF0-_SDA2_BASE_(r2)
/* 802C567C 002C25BC  C0 C2 C2 98 */ lfs f6, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C5680 002C25C0  38 60 00 01 */ li r3, 1
/* 802C5684 002C25C4  4B FE 40 71 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5688 002C25C8  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C568C 002C25CC  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5690 002C25D0  38 80 00 00 */ li r4, 0
/* 802C5694 002C25D4  4B FD D7 21 */ bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C5698:
/* 802C5698 002C25D8  D3 FF 00 20 */ stfs f31, 0x20(r31)
/* 802C569C 002C25DC  7F C3 F3 78 */ mr r3, r30
/* 802C56A0 002C25E0  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 802C56A4 002C25E4  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 802C56A8 002C25E8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802C56AC 002C25EC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802C56B0 002C25F0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802C56B4 002C25F4  7C 08 03 A6 */ mtlr r0
/* 802C56B8 002C25F8  38 21 00 30 */ addi r1, r1, 0x30
/* 802C56BC 002C25FC  4E 80 00 20 */ blr