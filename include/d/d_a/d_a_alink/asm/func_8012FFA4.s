/* 8012FFA4 0012CEE4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8012FFA8 0012CEE8  7C 08 02 A6 */ mflr r0
/* 8012FFAC 0012CEEC  90 01 00 34 */ stw r0, 0x34(r1)
/* 8012FFB0 0012CEF0  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8012FFB4 0012CEF4  93 C1 00 28 */ stw r30, 0x28(r1)
/* 8012FFB8 0012CEF8  7C 7F 1B 78 */ mr r31, r3
/* 8012FFBC 0012CEFC  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 8012FFC0 0012CF00  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 8012FFC4 0012CF04  90 01 00 18 */ stw r0, 0x18(r1)
/* 8012FFC8 0012CF08  38 81 00 08 */ addi r4, r1, 8
/* 8012FFCC 0012CF0C  4B F8 20 0D */ bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 8012FFD0 0012CF10  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012FFD4 0012CF14  41 82 00 D0 */ beq lbl_801300A4
/* 8012FFD8 0012CF18  38 61 00 08 */ addi r3, r1, 8
/* 8012FFDC 0012CF1C  48 13 71 4D */ bl atan2sX_Z__4cXyzCFv
/* 8012FFE0 0012CF20  7C 7E 1B 78 */ mr r30, r3
/* 8012FFE4 0012CF24  38 7F 04 DE */ addi r3, r31, 0x4de
/* 8012FFE8 0012CF28  7F C4 F3 78 */ mr r4, r30
/* 8012FFEC 0012CF2C  38 A0 00 04 */ li r5, 4
/* 8012FFF0 0012CF30  38 C0 10 00 */ li r6, 0x1000
/* 8012FFF4 0012CF34  38 E0 04 00 */ li r7, 0x400
/* 8012FFF8 0012CF38  48 14 05 49 */ bl cLib_addCalcAngleS__FPsssss
/* 8012FFFC 0012CF3C  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 80130000 0012CF40  A8 9F 04 DE */ lha r4, 0x4de(r31)
/* 80130004 0012CF44  3C 84 00 01 */ addis r4, r4, 1
/* 80130008 0012CF48  38 04 80 00 */ addi r0, r4, -32768
/* 8013000C 0012CF4C  7C 04 07 34 */ extsh r4, r0
/* 80130010 0012CF50  38 A0 00 04 */ li r5, 4
/* 80130014 0012CF54  38 C0 10 00 */ li r6, 0x1000
/* 80130018 0012CF58  38 E0 04 00 */ li r7, 0x400
/* 8013001C 0012CF5C  48 14 05 25 */ bl cLib_addCalcAngleS__FPsssss
/* 80130020 0012CF60  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80130024 0012CF64  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80130028 0012CF68  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 8013002C 0012CF6C  7C 1E 00 50 */ subf r0, r30, r0
/* 80130030 0012CF70  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80130034 0012CF74  7C 63 02 14 */ add r3, r3, r0
/* 80130038 0012CF78  C0 A3 00 04 */ lfs f5, 4(r3)
/* 8013003C 0012CF7C  C0 9F 33 98 */ lfs f4, 0x3398(r31)
/* 80130040 0012CF80  3C 60 80 39 */ lis r3, lbl_8038F3F0@ha
/* 80130044 0012CF84  38 63 F3 F0 */ addi r3, r3, lbl_8038F3F0@l
/* 80130048 0012CF88  C0 63 00 58 */ lfs f3, 0x58(r3)
/* 8013004C 0012CF8C  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80130050 0012CF90  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 80130054 0012CF94  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80130058 0012CF98  EC 02 00 28 */ fsubs f0, f2, f0
/* 8013005C 0012CF9C  EC 01 00 32 */ fmuls f0, f1, f0
/* 80130060 0012CFA0  EC 02 00 2A */ fadds f0, f2, f0
/* 80130064 0012CFA4  EC 03 00 32 */ fmuls f0, f3, f0
/* 80130068 0012CFA8  EC 00 01 72 */ fmuls f0, f0, f5
/* 8013006C 0012CFAC  EC 04 00 2A */ fadds f0, f4, f0
/* 80130070 0012CFB0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 80130074 0012CFB4  C0 1F 33 98 */ lfs f0, 0x3398(r31)
/* 80130078 0012CFB8  C0 3F 05 94 */ lfs f1, 0x594(r31)
/* 8013007C 0012CFBC  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 80130080 0012CFC0  40 81 00 08 */ ble lbl_80130088
/* 80130084 0012CFC4  D0 3F 33 98 */ stfs f1, 0x3398(r31)
lbl_80130088:
/* 80130088 0012CFC8  38 00 00 78 */ li r0, 0x78
/* 8013008C 0012CFCC  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 80130090 0012CFD0  7F E3 FB 78 */ mr r3, r31
/* 80130094 0012CFD4  3C 80 00 03 */ lis r4, 0x00030018@ha
/* 80130098 0012CFD8  38 84 00 18 */ addi r4, r4, 0x00030018@l
/* 8013009C 0012CFDC  4B F8 F1 31 */ bl seStartMapInfo__9daAlink_cFUlLevel
/* 801300A0 0012CFE0  48 00 00 0C */ b lbl_801300AC
lbl_801300A4:
/* 801300A4 0012CFE4  7F E3 FB 78 */ mr r3, r31
/* 801300A8 0012CFE8  48 00 00 2D */ bl procWolfSlideLandInit__9daAlink_cFv
lbl_801300AC:
/* 801300AC 0012CFEC  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 801300B0 0012CFF0  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 801300B4 0012CFF4  90 01 00 18 */ stw r0, 0x18(r1)
/* 801300B8 0012CFF8  38 60 00 01 */ li r3, 1
/* 801300BC 0012CFFC  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 801300C0 0012D000  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 801300C4 0012D004  80 01 00 34 */ lwz r0, 0x34(r1)
/* 801300C8 0012D008  7C 08 03 A6 */ mtlr r0
/* 801300CC 0012D00C  38 21 00 30 */ addi r1, r1, 0x30
/* 801300D0 0012D010  4E 80 00 20 */ blr
