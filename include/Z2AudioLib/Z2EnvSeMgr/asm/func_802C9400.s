/* 802C9400 002C6340  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802C9404 002C6344  7C 08 02 A6 */ mflr r0
/* 802C9408 002C6348  90 01 00 24 */ stw r0, 0x24(r1)
/* 802C940C 002C634C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802C9410 002C6350  93 C1 00 18 */ stw r30, 0x18(r1)
/* 802C9414 002C6354  7C 7E 1B 78 */ mr r30, r3
/* 802C9418 002C6358  38 7E 02 E8 */ addi r3, r30, 0x2e8
/* 802C941C 002C635C  4B FE 05 85 */ bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C9420 002C6360  C0 42 C4 50 */ lfs f2, lbl_80455E50-_SDA2_BASE_(r2)
/* 802C9424 002C6364  C0 02 C4 54 */ lfs f0, lbl_80455E54-_SDA2_BASE_(r2)
/* 802C9428 002C6368  EC 00 00 72 */ fmuls f0, f0, f1
/* 802C942C 002C636C  EC 42 00 2A */ fadds f2, f2, f0
/* 802C9430 002C6370  C0 62 C3 A4 */ lfs f3, lbl_80455DA4-_SDA2_BASE_(r2)
/* 802C9434 002C6374  C0 02 C3 84 */ lfs f0, lbl_80455D84-_SDA2_BASE_(r2)
/* 802C9438 002C6378  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C943C 002C637C  EC A3 00 2A */ fadds f5, f3, f0
/* 802C9440 002C6380  C0 82 C3 60 */ lfs f4, lbl_80455D60-_SDA2_BASE_(r2)
/* 802C9444 002C6384  C0 02 C3 C8 */ lfs f0, lbl_80455DC8-_SDA2_BASE_(r2)
/* 802C9448 002C6388  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C944C 002C638C  EC 00 01 32 */ fmuls f0, f0, f4
/* 802C9450 002C6390  EC 64 00 28 */ fsubs f3, f4, f0
/* 802C9454 002C6394  3C 60 00 09 */ lis r3, 0x00090022@ha
/* 802C9458 002C6398  38 03 00 22 */ addi r0, r3, 0x00090022@l
/* 802C945C 002C639C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9460 002C63A0  38 7E 02 40 */ addi r3, r30, 0x240
/* 802C9464 002C63A4  38 81 00 0C */ addi r4, r1, 0xc
/* 802C9468 002C63A8  C0 22 C4 5C */ lfs f1, lbl_80455E5C-_SDA2_BASE_(r2)
/* 802C946C 002C63AC  38 A0 00 00 */ li r5, 0
/* 802C9470 002C63B0  4B FF C6 45 */ bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C9474 002C63B4  7C 7F 1B 78 */ mr r31, r3
/* 802C9478 002C63B8  38 7E 02 F8 */ addi r3, r30, 0x2f8
/* 802C947C 002C63BC  4B FE 05 25 */ bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C9480 002C63C0  FC C0 08 90 */ fmr f6, f1
/* 802C9484 002C63C4  3C 60 00 09 */ lis r3, 0x00090023@ha
/* 802C9488 002C63C8  38 03 00 23 */ addi r0, r3, 0x00090023@l
/* 802C948C 002C63CC  90 01 00 08 */ stw r0, 8(r1)
/* 802C9490 002C63D0  38 7E 02 74 */ addi r3, r30, 0x274
/* 802C9494 002C63D4  38 81 00 08 */ addi r4, r1, 8
/* 802C9498 002C63D8  C0 22 C4 5C */ lfs f1, lbl_80455E5C-_SDA2_BASE_(r2)
/* 802C949C 002C63DC  C0 42 C4 50 */ lfs f2, lbl_80455E50-_SDA2_BASE_(r2)
/* 802C94A0 002C63E0  C0 02 C4 54 */ lfs f0, lbl_80455E54-_SDA2_BASE_(r2)
/* 802C94A4 002C63E4  EC 00 01 B2 */ fmuls f0, f0, f6
/* 802C94A8 002C63E8  EC 42 00 2A */ fadds f2, f2, f0
/* 802C94AC 002C63EC  C0 82 C3 60 */ lfs f4, lbl_80455D60-_SDA2_BASE_(r2)
/* 802C94B0 002C63F0  C0 02 C3 C8 */ lfs f0, lbl_80455DC8-_SDA2_BASE_(r2)
/* 802C94B4 002C63F4  EC 06 00 32 */ fmuls f0, f6, f0
/* 802C94B8 002C63F8  EC 00 01 32 */ fmuls f0, f0, f4
/* 802C94BC 002C63FC  EC 64 00 2A */ fadds f3, f4, f0
/* 802C94C0 002C6400  C0 A2 C3 A4 */ lfs f5, lbl_80455DA4-_SDA2_BASE_(r2)
/* 802C94C4 002C6404  C0 02 C3 84 */ lfs f0, lbl_80455D84-_SDA2_BASE_(r2)
/* 802C94C8 002C6408  EC 06 00 32 */ fmuls f0, f6, f0
/* 802C94CC 002C640C  EC A5 00 2A */ fadds f5, f5, f0
/* 802C94D0 002C6410  38 A0 00 00 */ li r5, 0
/* 802C94D4 002C6414  4B FF C5 E1 */ bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C94D8 002C6418  38 80 00 00 */ li r4, 0
/* 802C94DC 002C641C  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 802C94E0 002C6420  41 82 00 10 */ beq lbl_802C94F0
/* 802C94E4 002C6424  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802C94E8 002C6428  41 82 00 08 */ beq lbl_802C94F0
/* 802C94EC 002C642C  38 80 00 01 */ li r4, 1
lbl_802C94F0:
/* 802C94F0 002C6430  7C 83 23 78 */ mr r3, r4
/* 802C94F4 002C6434  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802C94F8 002C6438  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802C94FC 002C643C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802C9500 002C6440  7C 08 03 A6 */ mtlr r0
/* 802C9504 002C6444  38 21 00 20 */ addi r1, r1, 0x20
/* 802C9508 002C6448  4E 80 00 20 */ blr
