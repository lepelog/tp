/* 800120A0 0000EFE0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800120A4 0000EFE4  7C 08 02 A6 */ mflr r0
/* 800120A8 0000EFE8  90 01 00 24 */ stw r0, 0x24(r1)
/* 800120AC 0000EFEC  39 61 00 20 */ addi r11, r1, 0x20
/* 800120B0 0000EFF0  48 35 01 2D */ bl _savegpr_29
/* 800120B4 0000EFF4  7C 7D 1B 78 */ mr r29, r3
/* 800120B8 0000EFF8  7C 9E 23 78 */ mr r30, r4
/* 800120BC 0000EFFC  7C BF 2B 78 */ mr r31, r5
/* 800120C0 0000F000  4B FF DB 01 */ bl frameUpdate__13mDoExt_morf_cFv
/* 800120C4 0000F004  80 7D 00 48 */ lwz r3, 0x48(r29)
/* 800120C8 0000F008  28 03 00 00 */ cmplwi r3, 0
/* 800120CC 0000F00C  41 82 00 38 */ beq lbl_80012104
/* 800120D0 0000F010  7F C4 F3 78 */ mr r4, r30
/* 800120D4 0000F014  7F E5 FB 78 */ mr r5, r31
/* 800120D8 0000F018  81 83 00 00 */ lwz r12, 0(r3)
/* 800120DC 0000F01C  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 800120E0 0000F020  7D 89 03 A6 */ mtctr r12
/* 800120E4 0000F024  4E 80 04 21 */ bctrl
/* 800120E8 0000F028  80 1D 00 4C */ lwz r0, 0x4c(r29)
/* 800120EC 0000F02C  28 00 00 00 */ cmplwi r0, 0
/* 800120F0 0000F030  41 82 00 14 */ beq lbl_80012104
/* 800120F4 0000F034  80 7D 00 48 */ lwz r3, 0x48(r29)
/* 800120F8 0000F038  C0 3D 00 1C */ lfs f1, 0x1c(r29)
/* 800120FC 0000F03C  C0 5D 00 18 */ lfs f2, 0x18(r29)
/* 80012100 0000F040  48 2A E5 D1 */ bl updateAnime__10Z2CreatureFff
lbl_80012104:
/* 80012104 0000F044  38 60 00 01 */ li r3, 1
/* 80012108 0000F048  88 1D 00 11 */ lbz r0, 0x11(r29)
/* 8001210C 0000F04C  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80012110 0000F050  40 82 00 18 */ bne lbl_80012128
/* 80012114 0000F054  C0 22 81 1C */ lfs f1, lbl_80451B1C-_SDA2_BASE_(r2)
/* 80012118 0000F058  C0 1D 00 18 */ lfs f0, 0x18(r29)
/* 8001211C 0000F05C  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80012120 0000F060  41 82 00 08 */ beq lbl_80012128
/* 80012124 0000F064  38 60 00 00 */ li r3, 0
lbl_80012128:
/* 80012128 0000F068  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 8001212C 0000F06C  39 61 00 20 */ addi r11, r1, 0x20
/* 80012130 0000F070  48 35 00 F9 */ bl _restgpr_29
/* 80012134 0000F074  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80012138 0000F078  7C 08 03 A6 */ mtlr r0
/* 8001213C 0000F07C  38 21 00 20 */ addi r1, r1, 0x20
/* 80012140 0000F080  4E 80 00 20 */ blr