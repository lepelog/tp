/* 80162088 0015EFC8  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8016208C 0015EFCC  7C 08 02 A6 */ mflr r0
/* 80162090 0015EFD0  90 01 00 64 */ stw r0, 0x64(r1)
/* 80162094 0015EFD4  39 61 00 60 */ addi r11, r1, 0x60
/* 80162098 0015EFD8  48 20 01 41 */ bl _savegpr_28
/* 8016209C 0015EFDC  7C 7E 1B 78 */ mr r30, r3
/* 801620A0 0015EFE0  3B E0 00 01 */ li r31, 1
/* 801620A4 0015EFE4  80 83 01 98 */ lwz r4, 0x198(r3)
/* 801620A8 0015EFE8  3C 04 00 01 */ addis r0, r4, 1
/* 801620AC 0015EFEC  28 00 FF FF */ cmplwi r0, 0xffff
/* 801620B0 0015EFF0  41 82 01 E0 */ beq lbl_80162290
/* 801620B4 0015EFF4  48 01 F4 4D */ bl dCamera_c_NS_GetForceLockOnActor
/* 801620B8 0015EFF8  90 7E 01 9C */ stw r3, 0x19c(r30)
/* 801620BC 0015EFFC  80 1E 01 9C */ lwz r0, 0x19c(r30)
/* 801620C0 0015F000  28 00 00 00 */ cmplwi r0, 0
/* 801620C4 0015F004  41 82 01 C4 */ beq lbl_80162288
/* 801620C8 0015F008  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801620CC 0015F00C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801620D0 0015F010  3B A3 56 B8 */ addi r29, r3, 0x56b8
/* 801620D4 0015F014  3B 80 00 01 */ li r28, 1
/* 801620D8 0015F018  7F A3 EB 78 */ mr r3, r29
/* 801620DC 0015F01C  4B F1 17 09 */ bl dAttention_c_NS_LockonTruth
/* 801620E0 0015F020  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801620E4 0015F024  40 82 00 14 */ bne lbl_801620F8
/* 801620E8 0015F028  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 801620EC 0015F02C  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 801620F0 0015F030  40 82 00 08 */ bne lbl_801620F8
/* 801620F4 0015F034  3B 80 00 00 */ li r28, 0
lbl_801620F8:
/* 801620F8 0015F038  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 801620FC 0015F03C  40 82 01 84 */ bne lbl_80162280
/* 80162100 0015F040  80 1E 01 A0 */ lwz r0, 0x1a0(r30)
/* 80162104 0015F044  C8 42 9C 98 */ lfd f2, lbl_80453698-_SDA2_BASE_(r2)
/* 80162108 0015F048  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8016210C 0015F04C  90 01 00 44 */ stw r0, 0x44(r1)
/* 80162110 0015F050  3C 60 43 30 */ lis r3, 0x4330
/* 80162114 0015F054  90 61 00 40 */ stw r3, 0x40(r1)
/* 80162118 0015F058  C8 01 00 40 */ lfd f0, 0x40(r1)
/* 8016211C 0015F05C  EC 20 10 28 */ fsubs f1, f0, f2
/* 80162120 0015F060  80 1E 09 E4 */ lwz r0, 0x9e4(r30)
/* 80162124 0015F064  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80162128 0015F068  90 01 00 4C */ stw r0, 0x4c(r1)
/* 8016212C 0015F06C  90 61 00 48 */ stw r3, 0x48(r1)
/* 80162130 0015F070  C8 01 00 48 */ lfd f0, 0x48(r1)
/* 80162134 0015F074  EC 00 10 28 */ fsubs f0, f0, f2
/* 80162138 0015F078  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8016213C 0015F07C  41 81 01 44 */ bgt lbl_80162280
/* 80162140 0015F080  38 61 00 30 */ addi r3, r1, 0x30
/* 80162144 0015F084  7F C4 F3 78 */ mr r4, r30
/* 80162148 0015F088  80 BE 01 9C */ lwz r5, 0x19c(r30)
/* 8016214C 0015F08C  4B F3 56 11 */ bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80162150 0015F090  38 61 00 24 */ addi r3, r1, 0x24
/* 80162154 0015F094  7F C4 F3 78 */ mr r4, r30
/* 80162158 0015F098  80 BE 01 80 */ lwz r5, 0x180(r30)
/* 8016215C 0015F09C  4B F3 56 01 */ bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80162160 0015F0A0  38 61 00 18 */ addi r3, r1, 0x18
/* 80162164 0015F0A4  38 81 00 30 */ addi r4, r1, 0x30
/* 80162168 0015F0A8  38 A1 00 24 */ addi r5, r1, 0x24
/* 8016216C 0015F0AC  48 10 49 C9 */ bl __mi__4cXyzCFRC3Vec
/* 80162170 0015F0B0  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 80162174 0015F0B4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80162178 0015F0B8  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8016217C 0015F0BC  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80162180 0015F0C0  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80162184 0015F0C4  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80162188 0015F0C8  38 61 00 0C */ addi r3, r1, 0xc
/* 8016218C 0015F0CC  48 1E 4F AD */ bl PSVECSquareMag
/* 80162190 0015F0D0  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80162194 0015F0D4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80162198 0015F0D8  40 81 00 58 */ ble lbl_801621F0
/* 8016219C 0015F0DC  FC 00 08 34 */ frsqrte f0, f1
/* 801621A0 0015F0E0  C8 82 9C C8 */ lfd f4, lbl_804536C8-_SDA2_BASE_(r2)
/* 801621A4 0015F0E4  FC 44 00 32 */ fmul f2, f4, f0
/* 801621A8 0015F0E8  C8 62 9C D0 */ lfd f3, lbl_804536D0-_SDA2_BASE_(r2)
/* 801621AC 0015F0EC  FC 00 00 32 */ fmul f0, f0, f0
/* 801621B0 0015F0F0  FC 01 00 32 */ fmul f0, f1, f0
/* 801621B4 0015F0F4  FC 03 00 28 */ fsub f0, f3, f0
/* 801621B8 0015F0F8  FC 02 00 32 */ fmul f0, f2, f0
/* 801621BC 0015F0FC  FC 44 00 32 */ fmul f2, f4, f0
/* 801621C0 0015F100  FC 00 00 32 */ fmul f0, f0, f0
/* 801621C4 0015F104  FC 01 00 32 */ fmul f0, f1, f0
/* 801621C8 0015F108  FC 03 00 28 */ fsub f0, f3, f0
/* 801621CC 0015F10C  FC 02 00 32 */ fmul f0, f2, f0
/* 801621D0 0015F110  FC 44 00 32 */ fmul f2, f4, f0
/* 801621D4 0015F114  FC 00 00 32 */ fmul f0, f0, f0
/* 801621D8 0015F118  FC 01 00 32 */ fmul f0, f1, f0
/* 801621DC 0015F11C  FC 03 00 28 */ fsub f0, f3, f0
/* 801621E0 0015F120  FC 02 00 32 */ fmul f0, f2, f0
/* 801621E4 0015F124  FC 21 00 32 */ fmul f1, f1, f0
/* 801621E8 0015F128  FC 20 08 18 */ frsp f1, f1
/* 801621EC 0015F12C  48 00 00 88 */ b lbl_80162274
lbl_801621F0:
/* 801621F0 0015F130  C8 02 9C D8 */ lfd f0, lbl_804536D8-_SDA2_BASE_(r2)
/* 801621F4 0015F134  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801621F8 0015F138  40 80 00 10 */ bge lbl_80162208
/* 801621FC 0015F13C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80162200 0015F140  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80162204 0015F144  48 00 00 70 */ b lbl_80162274
lbl_80162208:
/* 80162208 0015F148  D0 21 00 08 */ stfs f1, 8(r1)
/* 8016220C 0015F14C  80 81 00 08 */ lwz r4, 8(r1)
/* 80162210 0015F150  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80162214 0015F154  3C 00 7F 80 */ lis r0, 0x7f80
/* 80162218 0015F158  7C 03 00 00 */ cmpw r3, r0
/* 8016221C 0015F15C  41 82 00 14 */ beq lbl_80162230
/* 80162220 0015F160  40 80 00 40 */ bge lbl_80162260
/* 80162224 0015F164  2C 03 00 00 */ cmpwi r3, 0
/* 80162228 0015F168  41 82 00 20 */ beq lbl_80162248
/* 8016222C 0015F16C  48 00 00 34 */ b lbl_80162260
lbl_80162230:
/* 80162230 0015F170  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80162234 0015F174  41 82 00 0C */ beq lbl_80162240
/* 80162238 0015F178  38 00 00 01 */ li r0, 1
/* 8016223C 0015F17C  48 00 00 28 */ b lbl_80162264
lbl_80162240:
/* 80162240 0015F180  38 00 00 02 */ li r0, 2
/* 80162244 0015F184  48 00 00 20 */ b lbl_80162264
lbl_80162248:
/* 80162248 0015F188  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8016224C 0015F18C  41 82 00 0C */ beq lbl_80162258
/* 80162250 0015F190  38 00 00 05 */ li r0, 5
/* 80162254 0015F194  48 00 00 10 */ b lbl_80162264
lbl_80162258:
/* 80162258 0015F198  38 00 00 03 */ li r0, 3
/* 8016225C 0015F19C  48 00 00 08 */ b lbl_80162264
lbl_80162260:
/* 80162260 0015F1A0  38 00 00 04 */ li r0, 4
lbl_80162264:
/* 80162264 0015F1A4  2C 00 00 01 */ cmpwi r0, 1
/* 80162268 0015F1A8  40 82 00 0C */ bne lbl_80162274
/* 8016226C 0015F1AC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80162270 0015F1B0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80162274:
/* 80162274 0015F1B4  C0 1E 09 E0 */ lfs f0, 0x9e0(r30)
/* 80162278 0015F1B8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8016227C 0015F1BC  40 81 00 18 */ ble lbl_80162294
lbl_80162280:
/* 80162280 0015F1C0  3B E0 00 00 */ li r31, 0
/* 80162284 0015F1C4  48 00 00 10 */ b lbl_80162294
lbl_80162288:
/* 80162288 0015F1C8  3B E0 00 00 */ li r31, 0
/* 8016228C 0015F1CC  48 00 00 08 */ b lbl_80162294
lbl_80162290:
/* 80162290 0015F1D0  3B E0 00 00 */ li r31, 0
lbl_80162294:
/* 80162294 0015F1D4  7F E3 FB 78 */ mr r3, r31
/* 80162298 0015F1D8  39 61 00 60 */ addi r11, r1, 0x60
/* 8016229C 0015F1DC  48 1F FF 89 */ bl _restgpr_28
/* 801622A0 0015F1E0  80 01 00 64 */ lwz r0, 0x64(r1)
/* 801622A4 0015F1E4  7C 08 03 A6 */ mtlr r0
/* 801622A8 0015F1E8  38 21 00 60 */ addi r1, r1, 0x60
/* 801622AC 0015F1EC  4E 80 00 20 */ blr
