/* 80070E90 0006DDD0  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 80070E94 0006DDD4  7C 08 02 A6 */ mflr r0
/* 80070E98 0006DDD8  90 01 00 74 */ stw r0, 0x74(r1)
/* 80070E9C 0006DDDC  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 80070EA0 0006DDE0  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 80070EA4 0006DDE4  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 80070EA8 0006DDE8  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 80070EAC 0006DDEC  DB A1 00 40 */ stfd f29, 0x40(r1)
/* 80070EB0 0006DDF0  F3 A1 00 48 */ psq_st f29, 72(r1), 0, 0
/* 80070EB4 0006DDF4  39 61 00 40 */ addi r11, r1, 0x40
/* 80070EB8 0006DDF8  48 2F 13 05 */ bl _savegpr_21
/* 80070EBC 0006DDFC  7C 77 1B 78 */ mr r23, r3
/* 80070EC0 0006DE00  7C B8 2B 78 */ mr r24, r5
/* 80070EC4 0006DE04  FF A0 08 90 */ fmr f29, f1
/* 80070EC8 0006DE08  7C D9 33 78 */ mr r25, r6
/* 80070ECC 0006DE0C  7C FA 3B 78 */ mr r26, r7
/* 80070ED0 0006DE10  7D 1B 43 78 */ mr r27, r8
/* 80070ED4 0006DE14  2C 04 00 43 */ cmpwi r4, 0x43
/* 80070ED8 0006DE18  41 82 00 5C */ beq lbl_80070F34
/* 80070EDC 0006DE1C  40 80 00 10 */ bge lbl_80070EEC
/* 80070EE0 0006DE20  2C 04 00 41 */ cmpwi r4, 0x41
/* 80070EE4 0006DE24  41 82 00 3C */ beq lbl_80070F20
/* 80070EE8 0006DE28  48 00 00 38 */ b lbl_80070F20
lbl_80070EEC:
/* 80070EEC 0006DE2C  2C 04 00 4C */ cmpwi r4, 0x4c
/* 80070EF0 0006DE30  41 82 00 08 */ beq lbl_80070EF8
/* 80070EF4 0006DE34  48 00 00 2C */ b lbl_80070F20
lbl_80070EF8:
/* 80070EF8 0006DE38  80 17 03 34 */ lwz r0, 0x334(r23)
/* 80070EFC 0006DE3C  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 80070F00 0006DE40  41 82 00 0C */ beq lbl_80070F0C
/* 80070F04 0006DE44  C0 22 8C 50 */ lfs f1, lbl_80452650-_SDA2_BASE_(r2)
/* 80070F08 0006DE48  48 00 01 88 */ b lbl_80071090
lbl_80070F0C:
/* 80070F0C 0006DE4C  83 CD 80 E0 */ lwz r30, lbl_80450660-_SDA_BASE_(r13)
/* 80070F10 0006DE50  3C 60 80 3B */ lis r3, lbl_803A9BF8@ha
/* 80070F14 0006DE54  38 03 9B F8 */ addi r0, r3, lbl_803A9BF8@l
/* 80070F18 0006DE58  7C 1D 03 78 */ mr r29, r0
/* 80070F1C 0006DE5C  48 00 00 20 */ b lbl_80070F3C
lbl_80070F20:
/* 80070F20 0006DE60  83 CD 80 E4 */ lwz r30, lbl_80450664-_SDA_BASE_(r13)
/* 80070F24 0006DE64  3C 60 80 3B */ lis r3, lbl_803A9C04@ha
/* 80070F28 0006DE68  38 03 9C 04 */ addi r0, r3, lbl_803A9C04@l
/* 80070F2C 0006DE6C  7C 1D 03 78 */ mr r29, r0
/* 80070F30 0006DE70  48 00 00 0C */ b lbl_80070F3C
lbl_80070F34:
/* 80070F34 0006DE74  83 CD 80 EC */ lwz r30, lbl_8045066C-_SDA_BASE_(r13)
/* 80070F38 0006DE78  3B AD 80 E8 */ addi r29, r13, 0x80450668 - 0x80458580 /*SDA HACK; original: lbl_80450668-_SDA_BASE_*/
lbl_80070F3C:
/* 80070F3C 0006DE7C  C3 E2 8C 50 */ lfs f31, lbl_80452650-_SDA2_BASE_(r2)
/* 80070F40 0006DE80  C3 C2 8C 90 */ lfs f30, lbl_80452690-_SDA2_BASE_(r2)
/* 80070F44 0006DE84  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80070F48 0006DE88  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80070F4C 0006DE8C  80 63 5D AC */ lwz r3, 0x5dac(r3)
/* 80070F50 0006DE90  28 03 00 00 */ cmplwi r3, 0
/* 80070F54 0006DE94  41 82 00 38 */ beq lbl_80070F8C
/* 80070F58 0006DE98  81 83 06 28 */ lwz r12, 0x628(r3)
/* 80070F5C 0006DE9C  81 8C 00 FC */ lwz r12, 0xfc(r12)
/* 80070F60 0006DEA0  7D 89 03 A6 */ mtctr r12
/* 80070F64 0006DEA4  4E 80 04 21 */ bctrl
/* 80070F68 0006DEA8  90 61 00 08 */ stw r3, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 80070F6C 0006DEAC  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 80070F70 0006DEB0  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 80070F74 0006DEB4  38 81 00 08 */ addi r4, r1, 8
/* 80070F78 0006DEB8  4B FA 88 81 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80070F7C 0006DEBC  7C 18 18 40 */ cmplw r24, r3
/* 80070F80 0006DEC0  40 82 00 0C */ bne lbl_80070F8C
/* 80070F84 0006DEC4  C0 22 8C 50 */ lfs f1, lbl_80452650-_SDA2_BASE_(r2)
/* 80070F88 0006DEC8  48 00 01 08 */ b lbl_80071090
lbl_80070F8C:
/* 80070F8C 0006DECC  3B E0 00 00 */ li r31, 0
/* 80070F90 0006DED0  3A C0 00 00 */ li r22, 0
/* 80070F94 0006DED4  48 00 00 F0 */ b lbl_80071084
lbl_80070F98:
/* 80070F98 0006DED8  7F 9D B2 14 */ add r28, r29, r22
/* 80070F9C 0006DEDC  80 98 05 5C */ lwz r4, 0x55c(r24)
/* 80070FA0 0006DEE0  80 77 00 10 */ lwz r3, 0x10(r23)
/* 80070FA4 0006DEE4  A0 1C 00 02 */ lhz r0, 2(r28)
/* 80070FA8 0006DEE8  7C 60 00 38 */ and r0, r3, r0
/* 80070FAC 0006DEEC  7C 80 00 39 */ and. r0, r4, r0
/* 80070FB0 0006DEF0  41 82 00 CC */ beq lbl_8007107C
/* 80070FB4 0006DEF4  A8 7C 00 00 */ lha r3, 0(r28)
/* 80070FB8 0006DEF8  38 03 05 44 */ addi r0, r3, 0x544
/* 80070FBC 0006DEFC  7C 18 00 AE */ lbzx r0, r24, r0
/* 80070FC0 0006DF00  1C A0 00 1C */ mulli r5, r0, 0x1c
/* 80070FC4 0006DF04  3C 80 80 3B */ lis r4, lbl_803A9C70@ha
/* 80070FC8 0006DF08  38 04 9C 70 */ addi r0, r4, lbl_803A9C70@l
/* 80070FCC 0006DF0C  7E A0 2A 14 */ add r21, r0, r5
/* 80070FD0 0006DF10  80 18 04 9C */ lwz r0, 0x49c(r24)
/* 80070FD4 0006DF14  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80070FD8 0006DF18  40 82 00 14 */ bne lbl_80070FEC
/* 80070FDC 0006DF1C  A0 98 00 FA */ lhz r4, 0xfa(r24)
/* 80070FE0 0006DF20  4B FF FA E1 */ bl check_event_condition
/* 80070FE4 0006DF24  2C 03 00 00 */ cmpwi r3, 0
/* 80070FE8 0006DF28  41 82 00 0C */ beq lbl_80070FF4
lbl_80070FEC:
/* 80070FEC 0006DF2C  C0 22 8C 50 */ lfs f1, lbl_80452650-_SDA2_BASE_(r2)
/* 80070FF0 0006DF30  48 00 00 64 */ b lbl_80071054
lbl_80070FF4:
/* 80070FF4 0006DF34  80 75 00 18 */ lwz r3, 0x18(r21)
/* 80070FF8 0006DF38  7F 24 CB 78 */ mr r4, r25
/* 80070FFC 0006DF3C  7F 45 D3 78 */ mr r5, r26
/* 80071000 0006DF40  4B FF FB 2D */ bl check_flontofplayer
/* 80071004 0006DF44  2C 03 00 00 */ cmpwi r3, 0
/* 80071008 0006DF48  41 82 00 0C */ beq lbl_80071014
/* 8007100C 0006DF4C  C0 22 8C 50 */ lfs f1, lbl_80452650-_SDA2_BASE_(r2)
/* 80071010 0006DF50  48 00 00 44 */ b lbl_80071054
lbl_80071014:
/* 80071014 0006DF54  38 77 03 1C */ addi r3, r23, 0x31c
/* 80071018 0006DF58  7F 24 CB 78 */ mr r4, r25
/* 8007101C 0006DF5C  38 B8 05 50 */ addi r5, r24, 0x550
/* 80071020 0006DF60  C0 35 00 00 */ lfs f1, 0(r21)
/* 80071024 0006DF64  C0 55 00 08 */ lfs f2, 8(r21)
/* 80071028 0006DF68  C0 75 00 0C */ lfs f3, 0xc(r21)
/* 8007102C 0006DF6C  C0 95 00 10 */ lfs f4, 0x10(r21)
/* 80071030 0006DF70  4B FF FC 71 */ bl check_distace
/* 80071034 0006DF74  2C 03 00 00 */ cmpwi r3, 0
/* 80071038 0006DF78  40 82 00 0C */ bne lbl_80071044
/* 8007103C 0006DF7C  C0 22 8C 50 */ lfs f1, lbl_80452650-_SDA2_BASE_(r2)
/* 80071040 0006DF80  48 00 00 14 */ b lbl_80071054
lbl_80071044:
/* 80071044 0006DF84  FC 20 E8 90 */ fmr f1, f29
/* 80071048 0006DF88  7F 23 CB 78 */ mr r3, r25
/* 8007104C 0006DF8C  C0 42 8C 94 */ lfs f2, lbl_80452694-_SDA2_BASE_(r2)
/* 80071050 0006DF90  4B FF FB A5 */ bl distace_weight
lbl_80071054:
/* 80071054 0006DF94  C0 55 00 14 */ lfs f2, 0x14(r21)
/* 80071058 0006DF98  C0 02 8C 50 */ lfs f0, lbl_80452650-_SDA2_BASE_(r2)
/* 8007105C 0006DF9C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80071060 0006DFA0  40 81 00 1C */ ble lbl_8007107C
/* 80071064 0006DFA4  FC 02 F0 40 */ fcmpo cr0, f2, f30
/* 80071068 0006DFA8  40 81 00 14 */ ble lbl_8007107C
/* 8007106C 0006DFAC  FF C0 10 90 */ fmr f30, f2
/* 80071070 0006DFB0  EF E1 10 24 */ fdivs f31, f1, f2
/* 80071074 0006DFB4  A8 1C 00 00 */ lha r0, 0(r28)
/* 80071078 0006DFB8  90 1B 00 00 */ stw r0, 0(r27)
lbl_8007107C:
/* 8007107C 0006DFBC  3B FF 00 01 */ addi r31, r31, 1
/* 80071080 0006DFC0  3A D6 00 04 */ addi r22, r22, 4
lbl_80071084:
/* 80071084 0006DFC4  7C 1F F0 00 */ cmpw r31, r30
/* 80071088 0006DFC8  41 80 FF 10 */ blt lbl_80070F98
/* 8007108C 0006DFCC  FC 20 F8 90 */ fmr f1, f31
lbl_80071090:
/* 80071090 0006DFD0  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 80071094 0006DFD4  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 80071098 0006DFD8  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 8007109C 0006DFDC  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 800710A0 0006DFE0  E3 A1 00 48 */ psq_l f29, 72(r1), 0, 0
/* 800710A4 0006DFE4  CB A1 00 40 */ lfd f29, 0x40(r1)
/* 800710A8 0006DFE8  39 61 00 40 */ addi r11, r1, 0x40
/* 800710AC 0006DFEC  48 2F 11 5D */ bl _restgpr_21
/* 800710B0 0006DFF0  80 01 00 74 */ lwz r0, 0x74(r1)
/* 800710B4 0006DFF4  7C 08 03 A6 */ mtlr r0
/* 800710B8 0006DFF8  38 21 00 70 */ addi r1, r1, 0x70
/* 800710BC 0006DFFC  4E 80 00 20 */ blr
