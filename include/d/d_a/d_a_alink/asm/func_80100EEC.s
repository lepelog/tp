/* 80100EEC 000FDE2C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 80100EF0 000FDE30  7C 08 02 A6 */ mflr r0
/* 80100EF4 000FDE34  90 01 00 64 */ stw r0, 0x64(r1)
/* 80100EF8 000FDE38  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 80100EFC 000FDE3C  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 80100F00 000FDE40  39 61 00 50 */ addi r11, r1, 0x50
/* 80100F04 000FDE44  48 26 12 D5 */ bl _savegpr_28
/* 80100F08 000FDE48  7C 7E 1B 78 */ mr r30, r3
/* 80100F0C 000FDE4C  4B FF F8 65 */ bl daAlink_c_NS_commonRoofHangProc
/* 80100F10 000FDE50  2C 03 00 00 */ cmpwi r3, 0
/* 80100F14 000FDE54  41 82 00 0C */ beq lbl_80100F20
/* 80100F18 000FDE58  38 60 00 01 */ li r3, 1
/* 80100F1C 000FDE5C  48 00 02 E0 */ b lbl_801011FC
lbl_80100F20:
/* 80100F20 000FDE60  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80100F24 000FDE64  7F E3 FB 78 */ mr r3, r31
/* 80100F28 000FDE68  C0 22 94 94 */ lfs f1, lbl_80452E94-_SDA2_BASE_(r2)
/* 80100F2C 000FDE6C  48 22 75 01 */ bl J3DFrameCtrl_NS_checkPass
/* 80100F30 000FDE70  2C 03 00 00 */ cmpwi r3, 0
/* 80100F34 000FDE74  40 82 00 18 */ bne lbl_80100F4C
/* 80100F38 000FDE78  7F E3 FB 78 */ mr r3, r31
/* 80100F3C 000FDE7C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80100F40 000FDE80  48 22 74 ED */ bl J3DFrameCtrl_NS_checkPass
/* 80100F44 000FDE84  2C 03 00 00 */ cmpwi r3, 0
/* 80100F48 000FDE88  41 82 00 10 */ beq lbl_80100F58
lbl_80100F4C:
/* 80100F4C 000FDE8C  7F C3 F3 78 */ mr r3, r30
/* 80100F50 000FDE90  4B FF F9 9D */ bl daAlink_c_NS_checkNextActionRoofHang
/* 80100F54 000FDE94  48 00 02 A4 */ b lbl_801011F8
lbl_80100F58:
/* 80100F58 000FDE98  83 BE 27 E0 */ lwz r29, 0x27e0(r30)
/* 80100F5C 000FDE9C  3B 80 00 01 */ li r28, 1
/* 80100F60 000FDEA0  7F A3 EB 78 */ mr r3, r29
/* 80100F64 000FDEA4  4B F7 28 81 */ bl dAttention_c_NS_LockonTruth
/* 80100F68 000FDEA8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80100F6C 000FDEAC  40 82 00 14 */ bne lbl_80100F80
/* 80100F70 000FDEB0  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80100F74 000FDEB4  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80100F78 000FDEB8  40 82 00 08 */ bne lbl_80100F80
/* 80100F7C 000FDEBC  3B 80 00 00 */ li r28, 0
lbl_80100F80:
/* 80100F80 000FDEC0  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 80100F84 000FDEC4  40 82 00 4C */ bne lbl_80100FD0
/* 80100F88 000FDEC8  38 7E 04 DE */ addi r3, r30, 0x4de
/* 80100F8C 000FDECC  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 80100F90 000FDED0  3C A0 80 39 */ lis r5, lbl_8038EBFC@ha
/* 80100F94 000FDED4  38 E5 EB FC */ addi r7, r5, lbl_8038EBFC@l
/* 80100F98 000FDED8  A8 A7 00 14 */ lha r5, 0x14(r7)
/* 80100F9C 000FDEDC  A8 C7 00 16 */ lha r6, 0x16(r7)
/* 80100FA0 000FDEE0  A8 E7 00 18 */ lha r7, 0x18(r7)
/* 80100FA4 000FDEE4  48 16 F5 9D */ bl cLib_addCalcAngleS
/* 80100FA8 000FDEE8  88 1E 2F 98 */ lbz r0, 0x2f98(r30)
/* 80100FAC 000FDEEC  28 00 00 00 */ cmplwi r0, 0
/* 80100FB0 000FDEF0  40 82 00 10 */ bne lbl_80100FC0
/* 80100FB4 000FDEF4  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 80100FB8 000FDEF8  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 80100FBC 000FDEFC  48 00 00 14 */ b lbl_80100FD0
lbl_80100FC0:
/* 80100FC0 000FDF00  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 80100FC4 000FDF04  3C 63 00 01 */ addis r3, r3, 1
/* 80100FC8 000FDF08  38 03 80 00 */ addi r0, r3, -32768
/* 80100FCC 000FDF0C  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
lbl_80100FD0:
/* 80100FD0 000FDF10  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80100FD4 000FDF14  C0 02 94 94 */ lfs f0, lbl_80452E94-_SDA2_BASE_(r2)
/* 80100FD8 000FDF18  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80100FDC 000FDF1C  4C 41 13 82 */ cror 2, 1, 2
/* 80100FE0 000FDF20  40 82 00 0C */ bne lbl_80100FEC
/* 80100FE4 000FDF24  EC 41 00 28 */ fsubs f2, f1, f0
/* 80100FE8 000FDF28  48 00 00 08 */ b lbl_80100FF0
lbl_80100FEC:
/* 80100FEC 000FDF2C  FC 40 08 90 */ fmr f2, f1
lbl_80100FF0:
/* 80100FF0 000FDF30  C0 22 95 B0 */ lfs f1, lbl_80452FB0-_SDA2_BASE_(r2)
/* 80100FF4 000FDF34  C0 02 93 AC */ lfs f0, lbl_80452DAC-_SDA2_BASE_(r2)
/* 80100FF8 000FDF38  EC 00 00 B2 */ fmuls f0, f0, f2
/* 80100FFC 000FDF3C  EC 21 00 32 */ fmuls f1, f1, f0
/* 80101000 000FDF40  48 16 65 E5 */ bl cM_rad2s__Ff
/* 80101004 000FDF44  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 80101008 000FDF48  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8010100C 000FDF4C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80101010 000FDF50  7C 63 04 2E */ lfsx f3, r3, r0
/* 80101014 000FDF54  3C 60 80 39 */ lis r3, lbl_8038EBFC@ha
/* 80101018 000FDF58  38 63 EB FC */ addi r3, r3, lbl_8038EBFC@l
/* 8010101C 000FDF5C  C0 43 00 30 */ lfs f2, 0x30(r3)
/* 80101020 000FDF60  C0 3E 33 A8 */ lfs f1, 0x33a8(r30)
/* 80101024 000FDF64  C0 03 00 34 */ lfs f0, 0x34(r3)
/* 80101028 000FDF68  EC 00 10 28 */ fsubs f0, f0, f2
/* 8010102C 000FDF6C  EC 01 00 32 */ fmuls f0, f1, f0
/* 80101030 000FDF70  EC 02 00 2A */ fadds f0, f2, f0
/* 80101034 000FDF74  EC 00 00 F2 */ fmuls f0, f0, f3
/* 80101038 000FDF78  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8010103C 000FDF7C  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 80101040 000FDF80  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80101044 000FDF84  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80101048 000FDF88  40 80 00 08 */ bge lbl_80101050
/* 8010104C 000FDF8C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_80101050:
/* 80101050 000FDF90  7F C3 F3 78 */ mr r3, r30
/* 80101054 000FDF94  4B FF F5 79 */ bl daAlink_c_NS_getRoofHangFMoveAnmSpeed
/* 80101058 000FDF98  FF E0 08 90 */ fmr f31, f1
/* 8010105C 000FDF9C  C0 3F 00 0C */ lfs f1, 0xc(r31)
/* 80101060 000FDFA0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80101064 000FDFA4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80101068 000FDFA8  40 80 00 0C */ bge lbl_80101074
/* 8010106C 000FDFAC  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80101070 000FDFB0  EF FF 00 32 */ fmuls f31, f31, f0
lbl_80101074:
/* 80101074 000FDFB4  7F C3 F3 78 */ mr r3, r30
/* 80101078 000FDFB8  7F E4 FB 78 */ mr r4, r31
/* 8010107C 000FDFBC  FC 20 F8 90 */ fmr f1, f31
/* 80101080 000FDFC0  48 00 0C 75 */ bl daAlink_c_NS_setWaterInAnmRate
/* 80101084 000FDFC4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80101088 000FDFC8  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8010108C 000FDFCC  40 81 01 44 */ ble lbl_801011D0
/* 80101090 000FDFD0  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 80101094 000FDFD4  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80101098 000FDFD8  41 82 01 38 */ beq lbl_801011D0
/* 8010109C 000FDFDC  C0 9E 04 D8 */ lfs f4, 0x4d8(r30)
/* 801010A0 000FDFE0  C0 42 95 A4 */ lfs f2, lbl_80452FA4-_SDA2_BASE_(r2)
/* 801010A4 000FDFE4  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 801010A8 000FDFE8  C0 02 92 C4 */ lfs f0, lbl_80452CC4-_SDA2_BASE_(r2)
/* 801010AC 000FDFEC  EC 01 00 28 */ fsubs f0, f1, f0
/* 801010B0 000FDFF0  EC 62 00 2A */ fadds f3, f2, f0
/* 801010B4 000FDFF4  C0 5E 04 D0 */ lfs f2, 0x4d0(r30)
/* 801010B8 000FDFF8  D0 41 00 14 */ stfs f2, 0x14(r1)
/* 801010BC 000FDFFC  D0 61 00 18 */ stfs f3, 0x18(r1)
/* 801010C0 000FE000  D0 81 00 1C */ stfs f4, 0x1c(r1)
/* 801010C4 000FE004  C0 22 92 9C */ lfs f1, lbl_80452C9C-_SDA2_BASE_(r2)
/* 801010C8 000FE008  C0 1E 18 E4 */ lfs f0, 0x18e4(r30)
/* 801010CC 000FE00C  EC A1 00 2A */ fadds f5, f1, f0
/* 801010D0 000FE010  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 801010D4 000FE014  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 801010D8 000FE018  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 801010DC 000FE01C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 801010E0 000FE020  7C 64 02 14 */ add r3, r4, r0
/* 801010E4 000FE024  C0 23 00 04 */ lfs f1, 4(r3)
/* 801010E8 000FE028  7C 04 04 2E */ lfsx f0, r4, r0
/* 801010EC 000FE02C  EC 05 00 32 */ fmuls f0, f5, f0
/* 801010F0 000FE030  EC 02 00 2A */ fadds f0, f2, f0
/* 801010F4 000FE034  D0 01 00 08 */ stfs f0, 8(r1)
/* 801010F8 000FE038  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 801010FC 000FE03C  EC 05 00 72 */ fmuls f0, f5, f1
/* 80101100 000FE040  EC 04 00 2A */ fadds f0, f4, f0
/* 80101104 000FE044  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80101108 000FE048  7F C3 F3 78 */ mr r3, r30
/* 8010110C 000FE04C  38 81 00 14 */ addi r4, r1, 0x14
/* 80101110 000FE050  38 A1 00 08 */ addi r5, r1, 8
/* 80101114 000FE054  4B FA 10 85 */ bl daAlink_c_NS_commonLineCheck
/* 80101118 000FE058  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010111C 000FE05C  41 82 00 B4 */ beq lbl_801011D0
/* 80101120 000FE060  7F C3 F3 78 */ mr r3, r30
/* 80101124 000FE064  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 80101128 000FE068  4B FF CF 31 */ bl daAlink_c_NS_checkClimbCode
/* 8010112C 000FE06C  2C 03 00 00 */ cmpwi r3, 0
/* 80101130 000FE070  41 82 00 A0 */ beq lbl_801011D0
/* 80101134 000FE074  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 80101138 000FE078  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 8010113C 000FE07C  90 01 00 30 */ stw r0, 0x30(r1)
/* 80101140 000FE080  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80101144 000FE084  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80101148 000FE088  38 63 0F 38 */ addi r3, r3, 0xf38
/* 8010114C 000FE08C  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 80101150 000FE090  38 A1 00 20 */ addi r5, r1, 0x20
/* 80101154 000FE094  4B F7 35 F1 */ bl cBgS_NS_GetTriPla
/* 80101158 000FE098  38 61 00 20 */ addi r3, r1, 0x20
/* 8010115C 000FE09C  48 16 5F CD */ bl cXyz_NS_atan2sX_Z
/* 80101160 000FE0A0  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 80101164 000FE0A4  48 16 FC C1 */ bl cLib_distanceAngleS
/* 80101168 000FE0A8  2C 03 60 00 */ cmpwi r3, 0x6000
/* 8010116C 000FE0AC  40 81 00 58 */ ble lbl_801011C4
/* 80101170 000FE0B0  C0 42 94 64 */ lfs f2, lbl_80452E64-_SDA2_BASE_(r2)
/* 80101174 000FE0B4  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80101178 000FE0B8  EC 22 00 32 */ fmuls f1, f2, f0
/* 8010117C 000FE0BC  C0 1E 1B 78 */ lfs f0, 0x1b78(r30)
/* 80101180 000FE0C0  EC 01 00 2A */ fadds f0, f1, f0
/* 80101184 000FE0C4  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 80101188 000FE0C8  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 8010118C 000FE0CC  EC 22 00 32 */ fmuls f1, f2, f0
/* 80101190 000FE0D0  C0 1E 1B 80 */ lfs f0, 0x1b80(r30)
/* 80101194 000FE0D4  EC 01 00 2A */ fadds f0, f1, f0
/* 80101198 000FE0D8  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
/* 8010119C 000FE0DC  7F C3 F3 78 */ mr r3, r30
/* 801011A0 000FE0E0  38 80 00 01 */ li r4, 1
/* 801011A4 000FE0E4  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 801011A8 000FE0E8  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 801011AC 000FE0EC  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 801011B0 000FE0F0  4B FC 58 99 */ bl daAlink_c_NS_procFallInit
/* 801011B4 000FE0F4  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 801011B8 000FE0F8  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 801011BC 000FE0FC  90 01 00 30 */ stw r0, 0x30(r1)
/* 801011C0 000FE100  48 00 00 3C */ b lbl_801011FC
lbl_801011C4:
/* 801011C4 000FE104  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 801011C8 000FE108  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 801011CC 000FE10C  90 01 00 30 */ stw r0, 0x30(r1)
lbl_801011D0:
/* 801011D0 000FE110  7F C3 F3 78 */ mr r3, r30
/* 801011D4 000FE114  38 9E 1E 2C */ addi r4, r30, 0x1e2c
/* 801011D8 000FE118  4B FF F4 3D */ bl daAlink_c_NS_setRoofHangHandOnSE
/* 801011DC 000FE11C  7F C3 F3 78 */ mr r3, r30
/* 801011E0 000FE120  4B FF F4 89 */ bl daAlink_c_NS_checkRoofHangMovePos
/* 801011E4 000FE124  2C 03 00 00 */ cmpwi r3, 0
/* 801011E8 000FE128  40 82 00 10 */ bne lbl_801011F8
/* 801011EC 000FE12C  7F C3 F3 78 */ mr r3, r30
/* 801011F0 000FE130  38 80 00 00 */ li r4, 0
/* 801011F4 000FE134  4B FF F9 C1 */ bl daAlink_c_NS_procRoofHangWaitInit
lbl_801011F8:
/* 801011F8 000FE138  38 60 00 01 */ li r3, 1
lbl_801011FC:
/* 801011FC 000FE13C  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 80101200 000FE140  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 80101204 000FE144  39 61 00 50 */ addi r11, r1, 0x50
/* 80101208 000FE148  48 26 10 1D */ bl _restgpr_28
/* 8010120C 000FE14C  80 01 00 64 */ lwz r0, 0x64(r1)
/* 80101210 000FE150  7C 08 03 A6 */ mtlr r0
/* 80101214 000FE154  38 21 00 60 */ addi r1, r1, 0x60
/* 80101218 000FE158  4E 80 00 20 */ blr
