/* 800EF0E8 000EC028  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800EF0EC 000EC02C  7C 08 02 A6 */ mflr r0
/* 800EF0F0 000EC030  90 01 00 24 */ stw r0, 0x24(r1)
/* 800EF0F4 000EC034  39 61 00 20 */ addi r11, r1, 0x20
/* 800EF0F8 000EC038  48 27 30 E5 */ bl _savegpr_29
/* 800EF0FC 000EC03C  7C 7D 1B 78 */ mr r29, r3
/* 800EF100 000EC040  7C DE 33 78 */ mr r30, r6
/* 800EF104 000EC044  4B FB 30 95 */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800EF108 000EC048  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EF10C 000EC04C  40 82 00 0C */ bne lbl_800EF118
/* 800EF110 000EC050  38 60 00 00 */ li r3, 0
/* 800EF114 000EC054  48 00 00 6C */ b lbl_800EF180
lbl_800EF118:
/* 800EF118 000EC058  38 7D 1B 5C */ addi r3, r29, 0x1b5c
/* 800EF11C 000EC05C  4B F8 6B F1 */ bl dBgS_CheckBWallPoly
/* 800EF120 000EC060  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EF124 000EC064  41 82 00 0C */ beq lbl_800EF130
/* 800EF128 000EC068  38 60 00 01 */ li r3, 1
/* 800EF12C 000EC06C  48 00 00 54 */ b lbl_800EF180
lbl_800EF130:
/* 800EF130 000EC070  C0 22 94 D4 */ lfs f1, lbl_80452ED4-_SDA2_BASE_(r2)
/* 800EF134 000EC074  3C 60 80 39 */ lis r3, lbl_8038F3F0@ha
/* 800EF138 000EC078  38 63 F3 F0 */ addi r3, r3, lbl_8038F3F0@l
/* 800EF13C 000EC07C  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 800EF140 000EC080  EC 01 00 32 */ fmuls f0, f1, f0
/* 800EF144 000EC084  FC 00 00 1E */ fctiwz f0, f0
/* 800EF148 000EC088  D8 01 00 08 */ stfd f0, 8(r1)
/* 800EF14C 000EC08C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EF150 000EC090  7F A3 EB 78 */ mr r3, r29
/* 800EF154 000EC094  38 9D 1B 5C */ addi r4, r29, 0x1b5c
/* 800EF158 000EC098  7F C5 F3 78 */ mr r5, r30
/* 800EF15C 000EC09C  4B FC 0F 3D */ bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800EF160 000EC0A0  7C 63 07 34 */ extsh r3, r3
/* 800EF164 000EC0A4  7F E0 07 34 */ extsh r0, r31
/* 800EF168 000EC0A8  7C 80 00 D0 */ neg r4, r0
/* 800EF16C 000EC0AC  7C 80 1A 78 */ xor r0, r4, r3
/* 800EF170 000EC0B0  7C 03 0E 70 */ srawi r3, r0, 1
/* 800EF174 000EC0B4  7C 00 20 38 */ and r0, r0, r4
/* 800EF178 000EC0B8  7C 00 18 50 */ subf r0, r0, r3
/* 800EF17C 000EC0BC  54 03 0F FE */ srwi r3, r0, 0x1f
lbl_800EF180:
/* 800EF180 000EC0C0  39 61 00 20 */ addi r11, r1, 0x20
/* 800EF184 000EC0C4  48 27 30 A5 */ bl _restgpr_29
/* 800EF188 000EC0C8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800EF18C 000EC0CC  7C 08 03 A6 */ mtlr r0
/* 800EF190 000EC0D0  38 21 00 20 */ addi r1, r1, 0x20
/* 800EF194 000EC0D4  4E 80 00 20 */ blr
