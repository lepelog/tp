/* 800ED310 000EA250  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800ED314 000EA254  7C 08 02 A6 */ mflr r0
/* 800ED318 000EA258  90 01 00 14 */ stw r0, 0x14(r1)
/* 800ED31C 000EA25C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800ED320 000EA260  93 C1 00 08 */ stw r30, 8(r1)
/* 800ED324 000EA264  7C 7E 1B 78 */ mr r30, r3
/* 800ED328 000EA268  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 800ED32C 000EA26C  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 800ED330 000EA270  83 E4 5D B8 */ lwz r31, 0x5db8(r4)
/* 800ED334 000EA274  28 1F 00 00 */ cmplwi r31, 0
/* 800ED338 000EA278  41 82 01 68 */ beq lbl_800ED4A0
/* 800ED33C 000EA27C  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800ED340 000EA280  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800ED344 000EA284  7D 89 03 A6 */ mtctr r12
/* 800ED348 000EA288  4E 80 04 21 */ bctrl
/* 800ED34C 000EA28C  28 03 00 00 */ cmplwi r3, 0
/* 800ED350 000EA290  40 82 00 20 */ bne lbl_800ED370
/* 800ED354 000EA294  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800ED358 000EA298  28 00 01 3D */ cmplwi r0, 0x13d
/* 800ED35C 000EA29C  40 82 01 44 */ bne lbl_800ED4A0
/* 800ED360 000EA2A0  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800ED364 000EA2A4  28 00 00 00 */ cmplwi r0, 0
/* 800ED368 000EA2A8  40 82 00 08 */ bne lbl_800ED370
/* 800ED36C 000EA2AC  48 00 01 34 */ b lbl_800ED4A0
lbl_800ED370:
/* 800ED370 000EA2B0  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800ED374 000EA2B4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800ED378 000EA2B8  41 82 00 6C */ beq lbl_800ED3E4
/* 800ED37C 000EA2BC  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800ED380 000EA2C0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800ED384 000EA2C4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800ED388 000EA2C8  A0 1E 30 BC */ lhz r0, 0x30bc(r30)
/* 800ED38C 000EA2CC  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800ED390 000EA2D0  7C 63 02 14 */ add r3, r3, r0
/* 800ED394 000EA2D4  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800ED398 000EA2D8  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800ED39C 000EA2DC  48 25 91 15 */ bl PSMTXCopy
/* 800ED3A0 000EA2E0  C0 22 93 6C */ lfs f1, lbl_80452D6C-_SDA2_BASE_(r2)
/* 800ED3A4 000EA2E4  C0 42 94 C0 */ lfs f2, lbl_80452EC0-_SDA2_BASE_(r2)
/* 800ED3A8 000EA2E8  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800ED3AC 000EA2EC  4B F1 F9 F1 */ bl transM__14mDoMtx_stack_cFfff
/* 800ED3B0 000EA2F0  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800ED3B4 000EA2F4  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800ED3B8 000EA2F8  38 80 00 00 */ li r4, 0
/* 800ED3BC 000EA2FC  38 A0 80 00 */ li r5, -32768
/* 800ED3C0 000EA300  38 C0 40 00 */ li r6, 0x4000
/* 800ED3C4 000EA304  4B F1 EE DD */ bl mDoMtx_ZXYrotM
/* 800ED3C8 000EA308  80 7F 05 70 */ lwz r3, 0x570(r31)
/* 800ED3CC 000EA30C  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800ED3D0 000EA310  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800ED3D4 000EA314  38 83 04 50 */ addi r4, r3, 0x450
/* 800ED3D8 000EA318  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800ED3DC 000EA31C  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800ED3E0 000EA320  48 25 90 D1 */ bl PSMTXCopy
lbl_800ED3E4:
/* 800ED3E4 000EA324  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800ED3E8 000EA328  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800ED3EC 000EA32C  41 82 00 64 */ beq lbl_800ED450
/* 800ED3F0 000EA330  80 7E 06 50 */ lwz r3, 0x650(r30)
/* 800ED3F4 000EA334  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800ED3F8 000EA338  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800ED3FC 000EA33C  A0 1E 30 BE */ lhz r0, 0x30be(r30)
/* 800ED400 000EA340  1C 00 00 30 */ mulli r0, r0, 0x30
/* 800ED404 000EA344  7C 63 02 14 */ add r3, r3, r0
/* 800ED408 000EA348  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800ED40C 000EA34C  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800ED410 000EA350  48 25 90 A1 */ bl PSMTXCopy
/* 800ED414 000EA354  C0 22 93 6C */ lfs f1, lbl_80452D6C-_SDA2_BASE_(r2)
/* 800ED418 000EA358  C0 42 94 B4 */ lfs f2, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800ED41C 000EA35C  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800ED420 000EA360  4B F1 F9 7D */ bl transM__14mDoMtx_stack_cFfff
/* 800ED424 000EA364  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800ED428 000EA368  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800ED42C 000EA36C  38 80 C0 00 */ li r4, -16384
/* 800ED430 000EA370  4B F1 F0 9D */ bl mDoMtx_ZrotM
/* 800ED434 000EA374  80 7F 05 70 */ lwz r3, 0x570(r31)
/* 800ED438 000EA378  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800ED43C 000EA37C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800ED440 000EA380  38 83 04 B0 */ addi r4, r3, 0x4b0
/* 800ED444 000EA384  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800ED448 000EA388  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800ED44C 000EA38C  48 25 90 65 */ bl PSMTXCopy
lbl_800ED450:
/* 800ED450 000EA390  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800ED454 000EA394  54 00 07 BF */ clrlwi. r0, r0, 0x1e
/* 800ED458 000EA398  41 82 00 0C */ beq lbl_800ED464
/* 800ED45C 000EA39C  80 7F 05 70 */ lwz r3, 0x570(r31)
/* 800ED460 000EA3A0  48 23 A7 F9 */ bl calcWeightEnvelopeMtx__8J3DModelFv
lbl_800ED464:
/* 800ED464 000EA3A4  7F C3 F3 78 */ mr r3, r30
/* 800ED468 000EA3A8  4B FF F9 A9 */ bl getReinHandType__9daAlink_cCFv
/* 800ED46C 000EA3AC  7C 64 1B 79 */ or. r4, r3, r3
/* 800ED470 000EA3B0  40 82 00 18 */ bne lbl_800ED488
/* 800ED474 000EA3B4  7F E3 FB 78 */ mr r3, r31
/* 800ED478 000EA3B8  39 9F 18 C8 */ addi r12, r31, 0x18c8
/* 800ED47C 000EA3BC  48 27 4C 09 */ bl func_80362084
/* 800ED480 000EA3C0  60 00 00 00 */ nop
/* 800ED484 000EA3C4  48 00 00 1C */ b lbl_800ED4A0
lbl_800ED488:
/* 800ED488 000EA3C8  2C 04 FF FF */ cmpwi r4, -1
/* 800ED48C 000EA3CC  41 82 00 14 */ beq lbl_800ED4A0
/* 800ED490 000EA3D0  7F E3 FB 78 */ mr r3, r31
/* 800ED494 000EA3D4  39 9F 18 BC */ addi r12, r31, 0x18bc
/* 800ED498 000EA3D8  48 27 4B ED */ bl func_80362084
/* 800ED49C 000EA3DC  60 00 00 00 */ nop
lbl_800ED4A0:
/* 800ED4A0 000EA3E0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800ED4A4 000EA3E4  83 C1 00 08 */ lwz r30, 8(r1)
/* 800ED4A8 000EA3E8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800ED4AC 000EA3EC  7C 08 03 A6 */ mtlr r0
/* 800ED4B0 000EA3F0  38 21 00 10 */ addi r1, r1, 0x10
/* 800ED4B4 000EA3F4  4E 80 00 20 */ blr
