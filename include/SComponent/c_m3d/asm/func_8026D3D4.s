/* 8026D3D4 0026A314  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 8026D3D8 0026A318  7C 08 02 A6 */ mflr r0
/* 8026D3DC 0026A31C  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 8026D3E0 0026A320  39 61 00 A0 */ addi r11, r1, 0xa0
/* 8026D3E4 0026A324  48 0F 4D F5 */ bl _savegpr_28
/* 8026D3E8 0026A328  7C 7C 1B 78 */ mr r28, r3
/* 8026D3EC 0026A32C  7C 9D 23 78 */ mr r29, r4
/* 8026D3F0 0026A330  7C BE 2B 78 */ mr r30, r5
/* 8026D3F4 0026A334  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D3F8 0026A338  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D3FC 0026A33C  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D400 0026A340  7F A3 EB 78 */ mr r3, r29
/* 8026D404 0026A344  38 9C 00 0C */ addi r4, r28, 0xc
/* 8026D408 0026A348  4B FF FC A9 */ bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026D40C 0026A34C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026D410 0026A350  41 82 00 30 */ beq lbl_8026D440
/* 8026D414 0026A354  C0 1C 00 0C */ lfs f0, 0xc(r28)
/* 8026D418 0026A358  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8026D41C 0026A35C  C0 1C 00 10 */ lfs f0, 0x10(r28)
/* 8026D420 0026A360  D0 1E 00 04 */ stfs f0, 4(r30)
/* 8026D424 0026A364  C0 1C 00 14 */ lfs f0, 0x14(r28)
/* 8026D428 0026A368  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8026D42C 0026A36C  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D430 0026A370  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D434 0026A374  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D438 0026A378  38 60 00 01 */ li r3, 1
/* 8026D43C 0026A37C  48 00 06 8C */ b lbl_8026DAC8
lbl_8026D440:
/* 8026D440 0026A380  7F A3 EB 78 */ mr r3, r29
/* 8026D444 0026A384  7F 84 E3 78 */ mr r4, r28
/* 8026D448 0026A388  4B FF FC 69 */ bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026D44C 0026A38C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026D450 0026A390  41 82 00 30 */ beq lbl_8026D480
/* 8026D454 0026A394  C0 1C 00 00 */ lfs f0, 0(r28)
/* 8026D458 0026A398  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8026D45C 0026A39C  C0 1C 00 04 */ lfs f0, 4(r28)
/* 8026D460 0026A3A0  D0 1E 00 04 */ stfs f0, 4(r30)
/* 8026D464 0026A3A4  C0 1C 00 08 */ lfs f0, 8(r28)
/* 8026D468 0026A3A8  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8026D46C 0026A3AC  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D470 0026A3B0  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D474 0026A3B4  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D478 0026A3B8  38 60 00 01 */ li r3, 1
/* 8026D47C 0026A3BC  48 00 06 4C */ b lbl_8026DAC8
lbl_8026D480:
/* 8026D480 0026A3C0  C0 5D 00 00 */ lfs f2, 0(r29)
/* 8026D484 0026A3C4  D0 41 00 68 */ stfs f2, 0x68(r1)
/* 8026D488 0026A3C8  C0 3D 00 04 */ lfs f1, 4(r29)
/* 8026D48C 0026A3CC  D0 21 00 6C */ stfs f1, 0x6c(r1)
/* 8026D490 0026A3D0  C0 1D 00 08 */ lfs f0, 8(r29)
/* 8026D494 0026A3D4  D0 01 00 70 */ stfs f0, 0x70(r1)
/* 8026D498 0026A3D8  3B E1 00 74 */ addi r31, r1, 0x74
/* 8026D49C 0026A3DC  D0 41 00 74 */ stfs f2, 0x74(r1)
/* 8026D4A0 0026A3E0  D0 21 00 78 */ stfs f1, 0x78(r1)
/* 8026D4A4 0026A3E4  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 8026D4A8 0026A3E8  C0 1D 00 10 */ lfs f0, 0x10(r29)
/* 8026D4AC 0026A3EC  EC 01 00 2A */ fadds f0, f1, f0
/* 8026D4B0 0026A3F0  D0 01 00 78 */ stfs f0, 0x78(r1)
/* 8026D4B4 0026A3F4  7F 83 E3 78 */ mr r3, r28
/* 8026D4B8 0026A3F8  7F E4 FB 78 */ mr r4, r31
/* 8026D4BC 0026A3FC  38 A1 00 48 */ addi r5, r1, 0x48
/* 8026D4C0 0026A400  38 C1 00 14 */ addi r6, r1, 0x14
/* 8026D4C4 0026A404  4B FF B2 4D */ bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8026D4C8 0026A408  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026D4CC 0026A40C  41 82 00 68 */ beq lbl_8026D534
/* 8026D4D0 0026A410  7F E3 FB 78 */ mr r3, r31
/* 8026D4D4 0026A414  38 81 00 48 */ addi r4, r1, 0x48
/* 8026D4D8 0026A418  48 0D 9E ED */ bl PSVECDistance
/* 8026D4DC 0026A41C  C0 1C 00 1C */ lfs f0, 0x1c(r28)
/* 8026D4E0 0026A420  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D4E4 0026A424  40 80 00 50 */ bge lbl_8026D534
/* 8026D4E8 0026A428  7F E3 FB 78 */ mr r3, r31
/* 8026D4EC 0026A42C  38 81 00 48 */ addi r4, r1, 0x48
/* 8026D4F0 0026A430  7F C5 F3 78 */ mr r5, r30
/* 8026D4F4 0026A434  48 0D 9B 9D */ bl PSVECAdd
/* 8026D4F8 0026A438  7F C3 F3 78 */ mr r3, r30
/* 8026D4FC 0026A43C  7F C4 F3 78 */ mr r4, r30
/* 8026D500 0026A440  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D504 0026A444  48 0D 9B D5 */ bl PSVECScale
/* 8026D508 0026A448  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8026D50C 0026A44C  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8026D510 0026A450  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8026D514 0026A454  D0 1E 00 04 */ stfs f0, 4(r30)
/* 8026D518 0026A458  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 8026D51C 0026A45C  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8026D520 0026A460  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D524 0026A464  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D528 0026A468  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D52C 0026A46C  38 60 00 01 */ li r3, 1
/* 8026D530 0026A470  48 00 05 98 */ b lbl_8026DAC8
lbl_8026D534:
/* 8026D534 0026A474  7F 83 E3 78 */ mr r3, r28
/* 8026D538 0026A478  38 81 00 68 */ addi r4, r1, 0x68
/* 8026D53C 0026A47C  38 A1 00 48 */ addi r5, r1, 0x48
/* 8026D540 0026A480  38 C1 00 14 */ addi r6, r1, 0x14
/* 8026D544 0026A484  4B FF B1 CD */ bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8026D548 0026A488  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026D54C 0026A48C  41 82 00 50 */ beq lbl_8026D59C
/* 8026D550 0026A490  38 61 00 68 */ addi r3, r1, 0x68
/* 8026D554 0026A494  38 81 00 48 */ addi r4, r1, 0x48
/* 8026D558 0026A498  48 0D 9E 6D */ bl PSVECDistance
/* 8026D55C 0026A49C  C0 1C 00 1C */ lfs f0, 0x1c(r28)
/* 8026D560 0026A4A0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D564 0026A4A4  40 80 00 38 */ bge lbl_8026D59C
/* 8026D568 0026A4A8  38 61 00 68 */ addi r3, r1, 0x68
/* 8026D56C 0026A4AC  38 81 00 48 */ addi r4, r1, 0x48
/* 8026D570 0026A4B0  7F C5 F3 78 */ mr r5, r30
/* 8026D574 0026A4B4  48 0D 9B 1D */ bl PSVECAdd
/* 8026D578 0026A4B8  7F C3 F3 78 */ mr r3, r30
/* 8026D57C 0026A4BC  7F C4 F3 78 */ mr r4, r30
/* 8026D580 0026A4C0  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D584 0026A4C4  48 0D 9B 55 */ bl PSVECScale
/* 8026D588 0026A4C8  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D58C 0026A4CC  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D590 0026A4D0  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D594 0026A4D4  38 60 00 01 */ li r3, 1
/* 8026D598 0026A4D8  48 00 05 30 */ b lbl_8026DAC8
lbl_8026D59C:
/* 8026D59C 0026A4DC  7F 83 E3 78 */ mr r3, r28
/* 8026D5A0 0026A4E0  38 81 00 68 */ addi r4, r1, 0x68
/* 8026D5A4 0026A4E4  38 A1 00 10 */ addi r5, r1, 0x10
/* 8026D5A8 0026A4E8  38 C1 00 0C */ addi r6, r1, 0xc
/* 8026D5AC 0026A4EC  4B FF B6 B1 */ bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026D5B0 0026A4F0  2C 03 00 01 */ cmpwi r3, 1
/* 8026D5B4 0026A4F4  40 82 00 58 */ bne lbl_8026D60C
/* 8026D5B8 0026A4F8  3C 60 80 3A */ lis r3, lbl_803A7904@ha
/* 8026D5BC 0026A4FC  38 03 79 04 */ addi r0, r3, lbl_803A7904@l
/* 8026D5C0 0026A500  90 01 00 64 */ stw r0, 0x64(r1)
/* 8026D5C4 0026A504  38 61 00 54 */ addi r3, r1, 0x54
/* 8026D5C8 0026A508  C0 3C 00 1C */ lfs f1, 0x1c(r28)
/* 8026D5CC 0026A50C  48 00 21 3D */ bl SetR__8cM3dGSphFf
/* 8026D5D0 0026A510  38 61 00 54 */ addi r3, r1, 0x54
/* 8026D5D4 0026A514  7F 84 E3 78 */ mr r4, r28
/* 8026D5D8 0026A518  48 00 20 71 */ bl SetC__8cM3dGSphFRC4cXyz
/* 8026D5DC 0026A51C  7F A3 EB 78 */ mr r3, r29
/* 8026D5E0 0026A520  38 81 00 54 */ addi r4, r1, 0x54
/* 8026D5E4 0026A524  7F C5 F3 78 */ mr r5, r30
/* 8026D5E8 0026A528  38 C1 00 08 */ addi r6, r1, 8
/* 8026D5EC 0026A52C  4B FF E4 5D */ bl cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphP3VecPf
/* 8026D5F0 0026A530  3C 80 80 3A */ lis r4, lbl_803A7904@ha
/* 8026D5F4 0026A534  38 04 79 04 */ addi r0, r4, lbl_803A7904@l
/* 8026D5F8 0026A538  90 01 00 64 */ stw r0, 0x64(r1)
/* 8026D5FC 0026A53C  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D600 0026A540  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D604 0026A544  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D608 0026A548  48 00 04 C0 */ b lbl_8026DAC8
lbl_8026D60C:
/* 8026D60C 0026A54C  2C 03 00 02 */ cmpwi r3, 2
/* 8026D610 0026A550  40 82 00 B4 */ bne lbl_8026D6C4
/* 8026D614 0026A554  C0 21 00 10 */ lfs f1, 0x10(r1)
/* 8026D618 0026A558  C0 42 B7 18 */ lfs f2, lbl_80455118-_SDA2_BASE_(r2)
/* 8026D61C 0026A55C  FC 01 10 40 */ fcmpo cr0, f1, f2
/* 8026D620 0026A560  4C 41 13 82 */ cror 2, 1, 2
/* 8026D624 0026A564  40 82 04 94 */ bne lbl_8026DAB8
/* 8026D628 0026A568  C0 02 B7 38 */ lfs f0, lbl_80455138-_SDA2_BASE_(r2)
/* 8026D62C 0026A56C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D630 0026A570  4C 40 13 82 */ cror 2, 0, 2
/* 8026D634 0026A574  40 82 04 84 */ bne lbl_8026DAB8
/* 8026D638 0026A578  C0 61 00 0C */ lfs f3, 0xc(r1)
/* 8026D63C 0026A57C  FC 03 10 40 */ fcmpo cr0, f3, f2
/* 8026D640 0026A580  4C 41 13 82 */ cror 2, 1, 2
/* 8026D644 0026A584  40 82 04 74 */ bne lbl_8026DAB8
/* 8026D648 0026A588  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 8026D64C 0026A58C  4C 40 13 82 */ cror 2, 0, 2
/* 8026D650 0026A590  40 82 04 68 */ bne lbl_8026DAB8
/* 8026D654 0026A594  7F 83 E3 78 */ mr r3, r28
/* 8026D658 0026A598  38 81 00 3C */ addi r4, r1, 0x3c
/* 8026D65C 0026A59C  48 00 1C F5 */ bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D660 0026A5A0  38 61 00 68 */ addi r3, r1, 0x68
/* 8026D664 0026A5A4  38 81 00 30 */ addi r4, r1, 0x30
/* 8026D668 0026A5A8  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8026D66C 0026A5AC  48 00 1C E5 */ bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D670 0026A5B0  38 61 00 3C */ addi r3, r1, 0x3c
/* 8026D674 0026A5B4  38 81 00 30 */ addi r4, r1, 0x30
/* 8026D678 0026A5B8  48 0D 9D 4D */ bl PSVECDistance
/* 8026D67C 0026A5BC  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D680 0026A5C0  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D684 0026A5C4  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D688 0026A5C8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D68C 0026A5CC  40 80 04 2C */ bge lbl_8026DAB8
/* 8026D690 0026A5D0  38 61 00 3C */ addi r3, r1, 0x3c
/* 8026D694 0026A5D4  38 81 00 30 */ addi r4, r1, 0x30
/* 8026D698 0026A5D8  7F C5 F3 78 */ mr r5, r30
/* 8026D69C 0026A5DC  48 0D 99 F5 */ bl PSVECAdd
/* 8026D6A0 0026A5E0  7F C3 F3 78 */ mr r3, r30
/* 8026D6A4 0026A5E4  7F C4 F3 78 */ mr r4, r30
/* 8026D6A8 0026A5E8  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D6AC 0026A5EC  48 0D 9A 2D */ bl PSVECScale
/* 8026D6B0 0026A5F0  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026D6B4 0026A5F4  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026D6B8 0026A5F8  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D6BC 0026A5FC  38 60 00 01 */ li r3, 1
/* 8026D6C0 0026A600  48 00 04 08 */ b lbl_8026DAC8
lbl_8026D6C4:
/* 8026D6C4 0026A604  2C 03 00 03 */ cmpwi r3, 3
/* 8026D6C8 0026A608  40 82 03 F0 */ bne lbl_8026DAB8
/* 8026D6CC 0026A60C  C0 21 00 10 */ lfs f1, 0x10(r1)
/* 8026D6D0 0026A610  C0 62 B7 18 */ lfs f3, lbl_80455118-_SDA2_BASE_(r2)
/* 8026D6D4 0026A614  FC 01 18 40 */ fcmpo cr0, f1, f3
/* 8026D6D8 0026A618  40 80 01 2C */ bge lbl_8026D804
/* 8026D6DC 0026A61C  C0 1C 00 00 */ lfs f0, 0(r28)
/* 8026D6E0 0026A620  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8026D6E4 0026A624  C0 1C 00 04 */ lfs f0, 4(r28)
/* 8026D6E8 0026A628  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8026D6EC 0026A62C  C0 1C 00 08 */ lfs f0, 8(r28)
/* 8026D6F0 0026A630  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 8026D6F4 0026A634  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8026D6F8 0026A638  FC 01 18 40 */ fcmpo cr0, f1, f3
/* 8026D6FC 0026A63C  40 80 00 78 */ bge lbl_8026D774
/* 8026D700 0026A640  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 8026D704 0026A644  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D708 0026A648  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 8026D70C 0026A64C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D710 0026A650  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8026D714 0026A654  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D718 0026A658  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D71C 0026A65C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D720 0026A660  48 0D 9C A5 */ bl PSVECDistance
/* 8026D724 0026A664  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D728 0026A668  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D72C 0026A66C  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D730 0026A670  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D734 0026A674  40 80 00 2C */ bge lbl_8026D760
/* 8026D738 0026A678  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D73C 0026A67C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D740 0026A680  7F C5 F3 78 */ mr r5, r30
/* 8026D744 0026A684  48 0D 99 4D */ bl PSVECAdd
/* 8026D748 0026A688  7F C3 F3 78 */ mr r3, r30
/* 8026D74C 0026A68C  7F C4 F3 78 */ mr r4, r30
/* 8026D750 0026A690  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D754 0026A694  48 0D 99 85 */ bl PSVECScale
/* 8026D758 0026A698  38 60 00 01 */ li r3, 1
/* 8026D75C 0026A69C  48 00 00 08 */ b lbl_8026D764
lbl_8026D760:
/* 8026D760 0026A6A0  38 60 00 00 */ li r3, 0
lbl_8026D764:
/* 8026D764 0026A6A4  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D768 0026A6A8  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D76C 0026A6AC  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D770 0026A6B0  48 00 03 58 */ b lbl_8026DAC8
lbl_8026D774:
/* 8026D774 0026A6B4  C0 02 B7 38 */ lfs f0, lbl_80455138-_SDA2_BASE_(r2)
/* 8026D778 0026A6B8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D77C 0026A6BC  40 81 00 78 */ ble lbl_8026D7F4
/* 8026D780 0026A6C0  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8026D784 0026A6C4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D788 0026A6C8  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8026D78C 0026A6CC  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D790 0026A6D0  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 8026D794 0026A6D4  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D798 0026A6D8  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D79C 0026A6DC  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D7A0 0026A6E0  48 0D 9C 25 */ bl PSVECDistance
/* 8026D7A4 0026A6E4  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D7A8 0026A6E8  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D7AC 0026A6EC  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D7B0 0026A6F0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D7B4 0026A6F4  40 80 00 2C */ bge lbl_8026D7E0
/* 8026D7B8 0026A6F8  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D7BC 0026A6FC  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D7C0 0026A700  7F C5 F3 78 */ mr r5, r30
/* 8026D7C4 0026A704  48 0D 98 CD */ bl PSVECAdd
/* 8026D7C8 0026A708  7F C3 F3 78 */ mr r3, r30
/* 8026D7CC 0026A70C  7F C4 F3 78 */ mr r4, r30
/* 8026D7D0 0026A710  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D7D4 0026A714  48 0D 99 05 */ bl PSVECScale
/* 8026D7D8 0026A718  38 60 00 01 */ li r3, 1
/* 8026D7DC 0026A71C  48 00 00 08 */ b lbl_8026D7E4
lbl_8026D7E0:
/* 8026D7E0 0026A720  38 60 00 00 */ li r3, 0
lbl_8026D7E4:
/* 8026D7E4 0026A724  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D7E8 0026A728  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D7EC 0026A72C  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D7F0 0026A730  48 00 02 D8 */ b lbl_8026DAC8
lbl_8026D7F4:
/* 8026D7F4 0026A734  38 61 00 68 */ addi r3, r1, 0x68
/* 8026D7F8 0026A738  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D7FC 0026A73C  48 00 1B 55 */ bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D800 0026A740  48 00 02 50 */ b lbl_8026DA50
lbl_8026D804:
/* 8026D804 0026A744  C0 42 B7 38 */ lfs f2, lbl_80455138-_SDA2_BASE_(r2)
/* 8026D808 0026A748  FC 01 10 40 */ fcmpo cr0, f1, f2
/* 8026D80C 0026A74C  40 81 01 28 */ ble lbl_8026D934
/* 8026D810 0026A750  C0 1C 00 0C */ lfs f0, 0xc(r28)
/* 8026D814 0026A754  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8026D818 0026A758  C0 1C 00 10 */ lfs f0, 0x10(r28)
/* 8026D81C 0026A75C  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8026D820 0026A760  C0 1C 00 14 */ lfs f0, 0x14(r28)
/* 8026D824 0026A764  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 8026D828 0026A768  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8026D82C 0026A76C  FC 01 18 40 */ fcmpo cr0, f1, f3
/* 8026D830 0026A770  40 80 00 78 */ bge lbl_8026D8A8
/* 8026D834 0026A774  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 8026D838 0026A778  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D83C 0026A77C  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 8026D840 0026A780  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D844 0026A784  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8026D848 0026A788  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D84C 0026A78C  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D850 0026A790  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D854 0026A794  48 0D 9B 71 */ bl PSVECDistance
/* 8026D858 0026A798  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D85C 0026A79C  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D860 0026A7A0  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D864 0026A7A4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D868 0026A7A8  40 80 00 2C */ bge lbl_8026D894
/* 8026D86C 0026A7AC  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D870 0026A7B0  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D874 0026A7B4  7F C5 F3 78 */ mr r5, r30
/* 8026D878 0026A7B8  48 0D 98 19 */ bl PSVECAdd
/* 8026D87C 0026A7BC  7F C3 F3 78 */ mr r3, r30
/* 8026D880 0026A7C0  7F C4 F3 78 */ mr r4, r30
/* 8026D884 0026A7C4  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D888 0026A7C8  48 0D 98 51 */ bl PSVECScale
/* 8026D88C 0026A7CC  38 60 00 01 */ li r3, 1
/* 8026D890 0026A7D0  48 00 00 08 */ b lbl_8026D898
lbl_8026D894:
/* 8026D894 0026A7D4  38 60 00 00 */ li r3, 0
lbl_8026D898:
/* 8026D898 0026A7D8  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D89C 0026A7DC  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D8A0 0026A7E0  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D8A4 0026A7E4  48 00 02 24 */ b lbl_8026DAC8
lbl_8026D8A8:
/* 8026D8A8 0026A7E8  FC 01 10 40 */ fcmpo cr0, f1, f2
/* 8026D8AC 0026A7EC  40 81 00 78 */ ble lbl_8026D924
/* 8026D8B0 0026A7F0  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8026D8B4 0026A7F4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D8B8 0026A7F8  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8026D8BC 0026A7FC  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D8C0 0026A800  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 8026D8C4 0026A804  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D8C8 0026A808  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D8CC 0026A80C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D8D0 0026A810  48 0D 9A F5 */ bl PSVECDistance
/* 8026D8D4 0026A814  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D8D8 0026A818  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D8DC 0026A81C  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D8E0 0026A820  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D8E4 0026A824  40 80 00 2C */ bge lbl_8026D910
/* 8026D8E8 0026A828  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D8EC 0026A82C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D8F0 0026A830  7F C5 F3 78 */ mr r5, r30
/* 8026D8F4 0026A834  48 0D 97 9D */ bl PSVECAdd
/* 8026D8F8 0026A838  7F C3 F3 78 */ mr r3, r30
/* 8026D8FC 0026A83C  7F C4 F3 78 */ mr r4, r30
/* 8026D900 0026A840  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D904 0026A844  48 0D 97 D5 */ bl PSVECScale
/* 8026D908 0026A848  38 60 00 01 */ li r3, 1
/* 8026D90C 0026A84C  48 00 00 08 */ b lbl_8026D914
lbl_8026D910:
/* 8026D910 0026A850  38 60 00 00 */ li r3, 0
lbl_8026D914:
/* 8026D914 0026A854  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D918 0026A858  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D91C 0026A85C  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D920 0026A860  48 00 01 A8 */ b lbl_8026DAC8
lbl_8026D924:
/* 8026D924 0026A864  38 61 00 68 */ addi r3, r1, 0x68
/* 8026D928 0026A868  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D92C 0026A86C  48 00 1A 25 */ bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D930 0026A870  48 00 01 20 */ b lbl_8026DA50
lbl_8026D934:
/* 8026D934 0026A874  7F 83 E3 78 */ mr r3, r28
/* 8026D938 0026A878  38 81 00 24 */ addi r4, r1, 0x24
/* 8026D93C 0026A87C  48 00 1A 15 */ bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D940 0026A880  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8026D944 0026A884  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026D948 0026A888  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D94C 0026A88C  40 80 00 78 */ bge lbl_8026D9C4
/* 8026D950 0026A890  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 8026D954 0026A894  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D958 0026A898  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 8026D95C 0026A89C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D960 0026A8A0  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8026D964 0026A8A4  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D968 0026A8A8  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D96C 0026A8AC  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D970 0026A8B0  48 0D 9A 55 */ bl PSVECDistance
/* 8026D974 0026A8B4  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D978 0026A8B8  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D97C 0026A8BC  EC 02 00 2A */ fadds f0, f2, f0
/* 8026D980 0026A8C0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D984 0026A8C4  40 80 00 2C */ bge lbl_8026D9B0
/* 8026D988 0026A8C8  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D98C 0026A8CC  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D990 0026A8D0  7F C5 F3 78 */ mr r5, r30
/* 8026D994 0026A8D4  48 0D 96 FD */ bl PSVECAdd
/* 8026D998 0026A8D8  7F C3 F3 78 */ mr r3, r30
/* 8026D99C 0026A8DC  7F C4 F3 78 */ mr r4, r30
/* 8026D9A0 0026A8E0  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026D9A4 0026A8E4  48 0D 97 35 */ bl PSVECScale
/* 8026D9A8 0026A8E8  38 60 00 01 */ li r3, 1
/* 8026D9AC 0026A8EC  48 00 00 08 */ b lbl_8026D9B4
lbl_8026D9B0:
/* 8026D9B0 0026A8F0  38 60 00 00 */ li r3, 0
lbl_8026D9B4:
/* 8026D9B4 0026A8F4  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026D9B8 0026A8F8  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026D9BC 0026A8FC  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026D9C0 0026A900  48 00 01 08 */ b lbl_8026DAC8
lbl_8026D9C4:
/* 8026D9C4 0026A904  C0 02 B7 38 */ lfs f0, lbl_80455138-_SDA2_BASE_(r2)
/* 8026D9C8 0026A908  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026D9CC 0026A90C  40 81 00 78 */ ble lbl_8026DA44
/* 8026D9D0 0026A910  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8026D9D4 0026A914  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026D9D8 0026A918  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8026D9DC 0026A91C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8026D9E0 0026A920  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 8026D9E4 0026A924  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026D9E8 0026A928  38 61 00 24 */ addi r3, r1, 0x24
/* 8026D9EC 0026A92C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026D9F0 0026A930  48 0D 99 D5 */ bl PSVECDistance
/* 8026D9F4 0026A934  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026D9F8 0026A938  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026D9FC 0026A93C  EC 02 00 2A */ fadds f0, f2, f0
/* 8026DA00 0026A940  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DA04 0026A944  40 80 00 2C */ bge lbl_8026DA30
/* 8026DA08 0026A948  38 61 00 24 */ addi r3, r1, 0x24
/* 8026DA0C 0026A94C  38 81 00 18 */ addi r4, r1, 0x18
/* 8026DA10 0026A950  7F C5 F3 78 */ mr r5, r30
/* 8026DA14 0026A954  48 0D 96 7D */ bl PSVECAdd
/* 8026DA18 0026A958  7F C3 F3 78 */ mr r3, r30
/* 8026DA1C 0026A95C  7F C4 F3 78 */ mr r4, r30
/* 8026DA20 0026A960  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026DA24 0026A964  48 0D 96 B5 */ bl PSVECScale
/* 8026DA28 0026A968  38 60 00 01 */ li r3, 1
/* 8026DA2C 0026A96C  48 00 00 08 */ b lbl_8026DA34
lbl_8026DA30:
/* 8026DA30 0026A970  38 60 00 00 */ li r3, 0
lbl_8026DA34:
/* 8026DA34 0026A974  3C 80 80 3A */ lis r4, lbl_803A78F8@ha
/* 8026DA38 0026A978  38 04 78 F8 */ addi r0, r4, lbl_803A78F8@l
/* 8026DA3C 0026A97C  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026DA40 0026A980  48 00 00 88 */ b lbl_8026DAC8
lbl_8026DA44:
/* 8026DA44 0026A984  38 61 00 68 */ addi r3, r1, 0x68
/* 8026DA48 0026A988  38 81 00 18 */ addi r4, r1, 0x18
/* 8026DA4C 0026A98C  48 00 19 05 */ bl CalcPos__8cM3dGLinCFP3Vecf
lbl_8026DA50:
/* 8026DA50 0026A990  38 61 00 24 */ addi r3, r1, 0x24
/* 8026DA54 0026A994  38 81 00 18 */ addi r4, r1, 0x18
/* 8026DA58 0026A998  48 0D 99 6D */ bl PSVECDistance
/* 8026DA5C 0026A99C  C0 5C 00 1C */ lfs f2, 0x1c(r28)
/* 8026DA60 0026A9A0  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026DA64 0026A9A4  EC 02 00 2A */ fadds f0, f2, f0
/* 8026DA68 0026A9A8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DA6C 0026A9AC  40 80 00 38 */ bge lbl_8026DAA4
/* 8026DA70 0026A9B0  38 61 00 24 */ addi r3, r1, 0x24
/* 8026DA74 0026A9B4  38 81 00 18 */ addi r4, r1, 0x18
/* 8026DA78 0026A9B8  7F C5 F3 78 */ mr r5, r30
/* 8026DA7C 0026A9BC  48 0D 96 15 */ bl PSVECAdd
/* 8026DA80 0026A9C0  7F C3 F3 78 */ mr r3, r30
/* 8026DA84 0026A9C4  7F C4 F3 78 */ mr r4, r30
/* 8026DA88 0026A9C8  C0 22 B7 C4 */ lfs f1, lbl_804551C4-_SDA2_BASE_(r2)
/* 8026DA8C 0026A9CC  48 0D 96 4D */ bl PSVECScale
/* 8026DA90 0026A9D0  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DA94 0026A9D4  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DA98 0026A9D8  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026DA9C 0026A9DC  38 60 00 01 */ li r3, 1
/* 8026DAA0 0026A9E0  48 00 00 28 */ b lbl_8026DAC8
lbl_8026DAA4:
/* 8026DAA4 0026A9E4  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DAA8 0026A9E8  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DAAC 0026A9EC  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026DAB0 0026A9F0  38 60 00 00 */ li r3, 0
/* 8026DAB4 0026A9F4  48 00 00 14 */ b lbl_8026DAC8
lbl_8026DAB8:
/* 8026DAB8 0026A9F8  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DABC 0026A9FC  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DAC0 0026AA00  90 01 00 80 */ stw r0, 0x80(r1)
/* 8026DAC4 0026AA04  38 60 00 00 */ li r3, 0
lbl_8026DAC8:
/* 8026DAC8 0026AA08  39 61 00 A0 */ addi r11, r1, 0xa0
/* 8026DACC 0026AA0C  48 0F 47 59 */ bl _restgpr_28
/* 8026DAD0 0026AA10  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 8026DAD4 0026AA14  7C 08 03 A6 */ mtlr r0
/* 8026DAD8 0026AA18  38 21 00 A0 */ addi r1, r1, 0xa0
/* 8026DADC 0026AA1C  4E 80 00 20 */ blr