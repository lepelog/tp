/* 800270FC 0002403C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80027100 00024040  7C 08 02 A6 */ mflr r0
/* 80027104 00024044  90 01 00 24 */ stw r0, 0x24(r1)
/* 80027108 00024048  DB E1 00 18 */ stfd f31, 0x18(r1)
/* 8002710C 0002404C  39 61 00 18 */ addi r11, r1, 0x18
/* 80027110 00024050  48 33 B0 CD */ bl _savegpr_29
/* 80027114 00024054  7C 60 1B 78 */ mr r0, r3
/* 80027118 00024058  FF E0 08 90 */ fmr f31, f1
/* 8002711C 0002405C  7C 9D 23 78 */ mr r29, r4
/* 80027120 00024060  7C BE 2B 78 */ mr r30, r5
/* 80027124 00024064  7C DF 33 78 */ mr r31, r6
/* 80027128 00024068  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002712C 0002406C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80027130 00024070  38 63 0F 38 */ addi r3, r3, 0xf38
/* 80027134 00024074  7C 04 03 78 */ mr r4, r0
/* 80027138 00024078  48 04 DA 61 */ bl GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 8002713C 0002407C  FC 20 F8 90 */ fmr f1, f31
/* 80027140 00024080  7F A4 EB 78 */ mr r4, r29
/* 80027144 00024084  7F C5 F3 78 */ mr r5, r30
/* 80027148 00024088  7F E6 FB 78 */ mr r6, r31
/* 8002714C 0002408C  38 E0 FF FF */ li r7, -1
/* 80027150 00024090  48 00 00 21 */ bl dStage_changeScene
/* 80027154 00024094  CB E1 00 18 */ lfd f31, 0x18(r1)
/* 80027158 00024098  39 61 00 18 */ addi r11, r1, 0x18
/* 8002715C 0002409C  48 33 B0 CD */ bl _restgpr_29
/* 80027160 000240A0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80027164 000240A4  7C 08 03 A6 */ mtlr r0
/* 80027168 000240A8  38 21 00 20 */ addi r1, r1, 0x20
/* 8002716C 000240AC  4E 80 00 20 */ blr
