/* 800FE058 000FAF98  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800FE05C 000FAF9C  7C 08 02 A6 */ mflr r0
/* 800FE060 000FAFA0  90 01 00 24 */ stw r0, 0x24(r1)
/* 800FE064 000FAFA4  39 61 00 20 */ addi r11, r1, 0x20
/* 800FE068 000FAFA8  48 26 41 69 */ bl _savegpr_26
/* 800FE06C 000FAFAC  7C 9A 23 78 */ mr r26, r4
/* 800FE070 000FAFB0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FE074 000FAFB4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FE078 000FAFB8  3B 63 0F 38 */ addi r27, r3, 0xf38
/* 800FE07C 000FAFBC  7F 63 DB 78 */ mr r3, r27
/* 800FE080 000FAFC0  4B F7 65 A9 */ bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 800FE084 000FAFC4  7C 7F 1B 78 */ mr r31, r3
/* 800FE088 000FAFC8  3B C0 00 00 */ li r30, 0
/* 800FE08C 000FAFCC  7F DD F3 78 */ mr r29, r30
/* 800FE090 000FAFD0  7F DC F3 78 */ mr r28, r30
/* 800FE094 000FAFD4  7F 63 DB 78 */ mr r3, r27
/* 800FE098 000FAFD8  7F 44 D3 78 */ mr r4, r26
/* 800FE09C 000FAFDC  4B F7 6D 65 */ bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800FE0A0 000FAFE0  2C 03 00 01 */ cmpwi r3, 1
/* 800FE0A4 000FAFE4  40 82 00 28 */ bne lbl_800FE0CC
/* 800FE0A8 000FAFE8  7F 43 D3 78 */ mr r3, r26
/* 800FE0AC 000FAFEC  4B F7 7D B1 */ bl dBgS_GetNY__FRC13cBgS_PolyInfo
/* 800FE0B0 000FAFF0  FC 00 0A 10 */ fabs f0, f1
/* 800FE0B4 000FAFF4  FC 20 00 18 */ frsp f1, f0
/* 800FE0B8 000FAFF8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800FE0BC 000FAFFC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FE0C0 000FB000  4C 40 13 82 */ cror 2, 0, 2
/* 800FE0C4 000FB004  40 82 00 08 */ bne lbl_800FE0CC
/* 800FE0C8 000FB008  3B 80 00 01 */ li r28, 1
lbl_800FE0CC:
/* 800FE0CC 000FB00C  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 800FE0D0 000FB010  41 82 00 10 */ beq lbl_800FE0E0
/* 800FE0D4 000FB014  28 1F 00 00 */ cmplwi r31, 0
/* 800FE0D8 000FB018  41 82 00 08 */ beq lbl_800FE0E0
/* 800FE0DC 000FB01C  3B A0 00 01 */ li r29, 1
lbl_800FE0E0:
/* 800FE0E0 000FB020  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800FE0E4 000FB024  41 82 00 14 */ beq lbl_800FE0F8
/* 800FE0E8 000FB028  88 1F 00 14 */ lbz r0, 0x14(r31)
/* 800FE0EC 000FB02C  28 00 00 00 */ cmplwi r0, 0
/* 800FE0F0 000FB030  41 82 00 08 */ beq lbl_800FE0F8
/* 800FE0F4 000FB034  3B C0 00 01 */ li r30, 1
lbl_800FE0F8:
/* 800FE0F8 000FB038  57 C3 06 3E */ clrlwi r3, r30, 0x18
/* 800FE0FC 000FB03C  39 61 00 20 */ addi r11, r1, 0x20
/* 800FE100 000FB040  48 26 41 1D */ bl _restgpr_26
/* 800FE104 000FB044  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800FE108 000FB048  7C 08 03 A6 */ mtlr r0
/* 800FE10C 000FB04C  38 21 00 20 */ addi r1, r1, 0x20
/* 800FE110 000FB050  4E 80 00 20 */ blr
