/* 800FEB90 000FBAD0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800FEB94 000FBAD4  7C 08 02 A6 */ mflr r0
/* 800FEB98 000FBAD8  90 01 00 34 */ stw r0, 0x34(r1)
/* 800FEB9C 000FBADC  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800FEBA0 000FBAE0  93 C1 00 28 */ stw r30, 0x28(r1)
/* 800FEBA4 000FBAE4  7C 7E 1B 78 */ mr r30, r3
/* 800FEBA8 000FBAE8  7C BF 2B 78 */ mr r31, r5
/* 800FEBAC 000FBAEC  4B FA 35 ED */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FEBB0 000FBAF0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FEBB4 000FBAF4  41 82 00 A0 */ beq lbl_800FEC54
/* 800FEBB8 000FBAF8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FEBBC 000FBAFC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FEBC0 000FBB00  90 01 00 24 */ stw r0, 0x24(r1)
/* 800FEBC4 000FBB04  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FEBC8 000FBB08  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FEBCC 000FBB0C  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800FEBD0 000FBB10  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FEBD4 000FBB14  38 A1 00 14 */ addi r5, r1, 0x14
/* 800FEBD8 000FBB18  4B F7 5B 6D */ bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FEBDC 000FBB1C  38 61 00 14 */ addi r3, r1, 0x14
/* 800FEBE0 000FBB20  48 16 85 49 */ bl atan2sX_Z__4cXyzCFv
/* 800FEBE4 000FBB24  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800FEBE8 000FBB28  48 17 22 3D */ bl cLib_distanceAngleS__Fss
/* 800FEBEC 000FBB2C  2C 03 54 9F */ cmpwi r3, 0x549f
/* 800FEBF0 000FBB30  41 80 00 24 */ blt lbl_800FEC14
/* 800FEBF4 000FBB34  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800FEBF8 000FBB38  54 00 03 DF */ rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FEBFC 000FBB3C  41 82 00 4C */ beq lbl_800FEC48
/* 800FEC00 000FBB40  7F C3 F3 78 */ mr r3, r30
/* 800FEC04 000FBB44  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FEC08 000FBB48  4B FF F4 51 */ bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FEC0C 000FBB4C  2C 03 00 00 */ cmpwi r3, 0
/* 800FEC10 000FBB50  40 82 00 38 */ bne lbl_800FEC48
lbl_800FEC14:
/* 800FEC14 000FBB54  38 61 00 08 */ addi r3, r1, 8
/* 800FEC18 000FBB58  38 9E 1B 78 */ addi r4, r30, 0x1b78
/* 800FEC1C 000FBB5C  7F E5 FB 78 */ mr r5, r31
/* 800FEC20 000FBB60  48 16 7F 15 */ bl __mi__4cXyzCFRC3Vec
/* 800FEC24 000FBB64  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800FEC28 000FBB68  38 81 00 08 */ addi r4, r1, 8
/* 800FEC2C 000FBB6C  7C 65 1B 78 */ mr r5, r3
/* 800FEC30 000FBB70  48 24 84 61 */ bl PSVECAdd
/* 800FEC34 000FBB74  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FEC38 000FBB78  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FEC3C 000FBB7C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800FEC40 000FBB80  38 60 00 01 */ li r3, 1
/* 800FEC44 000FBB84  48 00 00 14 */ b lbl_800FEC58
lbl_800FEC48:
/* 800FEC48 000FBB88  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FEC4C 000FBB8C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FEC50 000FBB90  90 01 00 24 */ stw r0, 0x24(r1)
lbl_800FEC54:
/* 800FEC54 000FBB94  38 60 00 00 */ li r3, 0
lbl_800FEC58:
/* 800FEC58 000FBB98  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800FEC5C 000FBB9C  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 800FEC60 000FBBA0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800FEC64 000FBBA4  7C 08 03 A6 */ mtlr r0
/* 800FEC68 000FBBA8  38 21 00 30 */ addi r1, r1, 0x30
/* 800FEC6C 000FBBAC  4E 80 00 20 */ blr
