/* 80101308 000FE248  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8010130C 000FE24C  7C 08 02 A6 */ mflr r0
/* 80101310 000FE250  90 01 00 14 */ stw r0, 0x14(r1)
/* 80101314 000FE254  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80101318 000FE258  93 C1 00 08 */ stw r30, 8(r1)
/* 8010131C 000FE25C  7C 7E 1B 78 */ mr r30, r3
/* 80101320 000FE260  4B FF F4 51 */ bl commonRoofHangProc__9daAlink_cFv
/* 80101324 000FE264  2C 03 00 00 */ cmpwi r3, 0
/* 80101328 000FE268  41 82 00 0C */ beq lbl_80101334
/* 8010132C 000FE26C  38 60 00 01 */ li r3, 1
/* 80101330 000FE270  48 00 00 70 */ b lbl_801013A0
lbl_80101334:
/* 80101334 000FE274  38 00 00 05 */ li r0, 5
/* 80101338 000FE278  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8010133C 000FE27C  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80101340 000FE280  7F E3 FB 78 */ mr r3, r31
/* 80101344 000FE284  48 05 D1 89 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80101348 000FE288  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010134C 000FE28C  41 82 00 10 */ beq lbl_8010135C
/* 80101350 000FE290  7F C3 F3 78 */ mr r3, r30
/* 80101354 000FE294  4B FF F5 99 */ bl checkNextActionRoofHang__9daAlink_cFv
/* 80101358 000FE298  48 00 00 44 */ b lbl_8010139C
lbl_8010135C:
/* 8010135C 000FE29C  7F C3 F3 78 */ mr r3, r30
/* 80101360 000FE2A0  4B FF F2 91 */ bl getRoofHangSMoveAnmSpeed__9daAlink_cCFv
/* 80101364 000FE2A4  7F C3 F3 78 */ mr r3, r30
/* 80101368 000FE2A8  7F E4 FB 78 */ mr r4, r31
/* 8010136C 000FE2AC  48 00 09 89 */ bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 80101370 000FE2B0  7F C3 F3 78 */ mr r3, r30
/* 80101374 000FE2B4  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 80101378 000FE2B8  4B FF F2 9D */ bl setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo
/* 8010137C 000FE2BC  7F C3 F3 78 */ mr r3, r30
/* 80101380 000FE2C0  4B FF F2 E9 */ bl checkRoofHangMovePos__9daAlink_cFv
/* 80101384 000FE2C4  2C 03 00 00 */ cmpwi r3, 0
/* 80101388 000FE2C8  40 82 00 14 */ bne lbl_8010139C
/* 8010138C 000FE2CC  7F C3 F3 78 */ mr r3, r30
/* 80101390 000FE2D0  38 80 00 00 */ li r4, 0
/* 80101394 000FE2D4  4B FF F8 21 */ bl procRoofHangWaitInit__9daAlink_cFi
/* 80101398 000FE2D8  48 00 00 08 */ b lbl_801013A0
lbl_8010139C:
/* 8010139C 000FE2DC  38 60 00 01 */ li r3, 1
lbl_801013A0:
/* 801013A0 000FE2E0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801013A4 000FE2E4  83 C1 00 08 */ lwz r30, 8(r1)
/* 801013A8 000FE2E8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801013AC 000FE2EC  7C 08 03 A6 */ mtlr r0
/* 801013B0 000FE2F0  38 21 00 10 */ addi r1, r1, 0x10
/* 801013B4 000FE2F4  4E 80 00 20 */ blr
