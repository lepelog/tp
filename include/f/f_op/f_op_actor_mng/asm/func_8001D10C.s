/* 8001D10C 0001A04C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8001D110 0001A050  7C 08 02 A6 */ mflr r0
/* 8001D114 0001A054  90 01 00 64 */ stw r0, 0x64(r1)
/* 8001D118 0001A058  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 8001D11C 0001A05C  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 8001D120 0001A060  39 61 00 50 */ addi r11, r1, 0x50
/* 8001D124 0001A064  48 34 50 B1 */ bl _savegpr_27
/* 8001D128 0001A068  7C 7B 1B 78 */ mr r27, r3
/* 8001D12C 0001A06C  7C 9C 23 78 */ mr r28, r4
/* 8001D130 0001A070  FF E0 10 90 */ fmr f31, f2
/* 8001D134 0001A074  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 8001D138 0001A078  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 8001D13C 0001A07C  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 8001D140 0001A080  3B A0 00 00 */ li r29, 0
/* 8001D144 0001A084  3B E0 00 00 */ li r31, 0
/* 8001D148 0001A088  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001D14C 0001A08C  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
lbl_8001D150:
/* 8001D150 0001A090  80 7E 5D 3C */ lwz r3, 0x5d3c(r30)
/* 8001D154 0001A094  38 00 00 FF */ li r0, 0xff
/* 8001D158 0001A098  90 01 00 08 */ stw r0, 8(r1)
/* 8001D15C 0001A09C  38 80 00 00 */ li r4, 0
/* 8001D160 0001A0A0  90 81 00 0C */ stw r4, 0xc(r1)
/* 8001D164 0001A0A4  38 00 FF FF */ li r0, -1
/* 8001D168 0001A0A8  90 01 00 10 */ stw r0, 0x10(r1)
/* 8001D16C 0001A0AC  90 81 00 14 */ stw r4, 0x14(r1)
/* 8001D170 0001A0B0  90 81 00 18 */ stw r4, 0x18(r1)
/* 8001D174 0001A0B4  90 81 00 1C */ stw r4, 0x1c(r1)
/* 8001D178 0001A0B8  80 9B 00 00 */ lwz r4, 0(r27)
/* 8001D17C 0001A0BC  38 A0 00 00 */ li r5, 0
/* 8001D180 0001A0C0  38 C2 82 50  addi r6, r2, 0x80451C50 - 0x80459A00 SDA HACK; original: lbl_80451C50-_SDA2_BASE_*/
/* 8001D180 0001A0C0  38 C2 82 50 */ la r6, lbl_80451C50(r2)
/* 8001D184 0001A0C4  7C C6 FA 2E */ lhzx r6, r6, r31
/* 8001D188 0001A0C8  7F 87 E3 78 */ mr r7, r28
/* 8001D18C 0001A0CC  39 00 00 00 */ li r8, 0
/* 8001D190 0001A0D0  39 20 00 00 */ li r9, 0
/* 8001D194 0001A0D4  39 41 00 20 */ addi r10, r1, 0x20
/* 8001D198 0001A0D8  C0 22 82 38 */ lfs f1, lbl_80451C38(r2)
/* 8001D19C 0001A0DC  48 03 03 31 */ bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf_X1_
/* 8001D1A0 0001A0E0  90 7B 00 00 */ stw r3, 0(r27)
/* 8001D1A4 0001A0E4  80 7E 5D 3C */ lwz r3, 0x5d3c(r30)
/* 8001D1A8 0001A0E8  38 63 02 10 */ addi r3, r3, 0x210
/* 8001D1AC 0001A0EC  80 9B 00 00 */ lwz r4, 0(r27)
/* 8001D1B0 0001A0F0  48 02 E7 69 */ bl get__Q213dPa_control_c7level_cFUlEmitter
/* 8001D1B4 0001A0F4  28 03 00 00 */ cmplwi r3, 0
/* 8001D1B8 0001A0F8  41 82 00 08 */ beq lbl_8001D1C0
/* 8001D1BC 0001A0FC  D3 E3 00 28 */ stfs f31, 0x28(r3)
lbl_8001D1C0:
/* 8001D1C0 0001A100  3B BD 00 01 */ addi r29, r29, 1
/* 8001D1C4 0001A104  2C 1D 00 02 */ cmpwi r29, 2
/* 8001D1C8 0001A108  3B 7B 00 04 */ addi r27, r27, 4
/* 8001D1CC 0001A10C  3B FF 00 02 */ addi r31, r31, 2
/* 8001D1D0 0001A110  41 80 FF 80 */ blt lbl_8001D150
/* 8001D1D4 0001A114  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 8001D1D8 0001A118  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 8001D1DC 0001A11C  39 61 00 50 */ addi r11, r1, 0x50
/* 8001D1E0 0001A120  48 34 50 41 */ bl _restgpr_27
/* 8001D1E4 0001A124  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8001D1E8 0001A128  7C 08 03 A6 */ mtlr r0
/* 8001D1EC 0001A12C  38 21 00 60 */ addi r1, r1, 0x60
/* 8001D1F0 0001A130  4E 80 00 20 */ blr