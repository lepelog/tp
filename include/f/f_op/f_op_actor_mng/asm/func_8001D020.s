/* 8001D020 00019F60  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8001D024 00019F64  7C 08 02 A6 */ mflr r0
/* 8001D028 00019F68  90 01 00 64 */ stw r0, 0x64(r1)
/* 8001D02C 00019F6C  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 8001D030 00019F70  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 8001D034 00019F74  39 61 00 50 */ addi r11, r1, 0x50
/* 8001D038 00019F78  48 34 51 9D */ bl _savegpr_27
/* 8001D03C 00019F7C  7C 7B 1B 78 */ mr r27, r3
/* 8001D040 00019F80  7C 9C 23 78 */ mr r28, r4
/* 8001D044 00019F84  7C DD 33 78 */ mr r29, r6
/* 8001D048 00019F88  FF E0 08 90 */ fmr f31, f1
/* 8001D04C 00019F8C  7C FE 3B 78 */ mr r30, r7
/* 8001D050 00019F90  7D 1F 43 78 */ mr r31, r8
/* 8001D054 00019F94  C0 45 00 08 */ lfs f2, 8(r5)
/* 8001D058 00019F98  C0 22 82 48 */ lfs f1, lbl_80451C48-_SDA2_BASE_(r2)
/* 8001D05C 00019F9C  C0 05 00 04 */ lfs f0, 4(r5)
/* 8001D060 00019FA0  EC 21 00 2A */ fadds f1, f1, f0
/* 8001D064 00019FA4  C0 05 00 00 */ lfs f0, 0(r5)
/* 8001D068 00019FA8  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8001D06C 00019FAC  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 8001D070 00019FB0  D0 41 00 2C */ stfs f2, 0x2c(r1)
/* 8001D074 00019FB4  38 61 00 24 */ addi r3, r1, 0x24
/* 8001D078 00019FB8  48 00 0C 45 */ bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8001D07C 00019FBC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8001D080 00019FC0  41 82 00 6C */ beq lbl_8001D0EC
/* 8001D084 00019FC4  C0 0D 87 50 */ lfs f0, lbl_80450CD0-_SDA_BASE_(r13)
/* 8001D088 00019FC8  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8001D08C 00019FCC  D3 E1 00 18 */ stfs f31, 0x18(r1)
/* 8001D090 00019FD0  D3 E1 00 1C */ stfs f31, 0x1c(r1)
/* 8001D094 00019FD4  D3 E1 00 20 */ stfs f31, 0x20(r1)
/* 8001D098 00019FD8  38 01 00 18 */ addi r0, r1, 0x18
/* 8001D09C 00019FDC  90 01 00 08 */ stw r0, 8(r1)
/* 8001D0A0 00019FE0  38 60 00 00 */ li r3, 0
/* 8001D0A4 00019FE4  90 61 00 0C */ stw r3, 0xc(r1)
/* 8001D0A8 00019FE8  38 00 FF FF */ li r0, -1
/* 8001D0AC 00019FEC  90 01 00 10 */ stw r0, 0x10(r1)
/* 8001D0B0 00019FF0  90 61 00 14 */ stw r3, 0x14(r1)
/* 8001D0B4 00019FF4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001D0B8 00019FF8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8001D0BC 00019FFC  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 8001D0C0 0001A000  80 9B 00 00 */ lwz r4, 0(r27)
/* 8001D0C4 0001A004  7F 85 E3 78 */ mr r5, r28
/* 8001D0C8 0001A008  3C C0 80 3F */ lis r6, lbl_803F1CC4@ha
/* 8001D0CC 0001A00C  38 C6 1C C4 */ addi r6, r6, lbl_803F1CC4@l
/* 8001D0D0 0001A010  38 C6 00 14 */ addi r6, r6, 0x14
/* 8001D0D4 0001A014  38 E1 00 24 */ addi r7, r1, 0x24
/* 8001D0D8 0001A018  7F C8 F3 78 */ mr r8, r30
/* 8001D0DC 0001A01C  7F E9 FB 78 */ mr r9, r31
/* 8001D0E0 0001A020  7F AA EB 78 */ mr r10, r29
/* 8001D0E4 0001A024  48 03 06 E1 */ bl setSimpleFoot__13dPa_control_cFUlPUlR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_ciPC5csXyzPC4cXyzP18dPa_levelEcallBackScPC4cXyz
/* 8001D0E8 0001A028  90 7B 00 00 */ stw r3, 0(r27)
lbl_8001D0EC:
/* 8001D0EC 0001A02C  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 8001D0F0 0001A030  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 8001D0F4 0001A034  39 61 00 50 */ addi r11, r1, 0x50
/* 8001D0F8 0001A038  48 34 51 29 */ bl _restgpr_27
/* 8001D0FC 0001A03C  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8001D100 0001A040  7C 08 03 A6 */ mtlr r0
/* 8001D104 0001A044  38 21 00 60 */ addi r1, r1, 0x60
/* 8001D108 0001A048  4E 80 00 20 */ blr
