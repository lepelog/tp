/* 800B9018 000B5F58  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B901C 000B5F5C  7C 08 02 A6 */ mflr r0
/* 800B9020 000B5F60  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B9024 000B5F64  39 61 00 20 */ addi r11, r1, 0x20
/* 800B9028 000B5F68  48 2A 91 B5 */ bl _savegpr_29
/* 800B902C 000B5F6C  7C 7F 1B 78 */ mr r31, r3
/* 800B9030 000B5F70  88 03 2F 8D */ lbz r0, 0x2f8d(r3)
/* 800B9034 000B5F74  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B9038 000B5F78  41 82 00 F4 */ beq lbl_800B912C
/* 800B903C 000B5F7C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 800B9040 000B5F80  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 800B9044 000B5F84  88 04 5E 24 */ lbz r0, 0x5e24(r4)
/* 800B9048 000B5F88  28 00 00 19 */ cmplwi r0, 0x19
/* 800B904C 000B5F8C  40 82 00 74 */ bne lbl_800B90C0
/* 800B9050 000B5F90  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800B9054 000B5F94  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B9058 000B5F98  41 82 00 10 */ beq lbl_800B9068
/* 800B905C 000B5F9C  38 80 00 00 */ li r4, 0
/* 800B9060 000B5FA0  48 07 4E 69 */ bl procWolfSideStepInit__9daAlink_cFi
/* 800B9064 000B5FA4  48 00 00 CC */ b lbl_800B9130
lbl_800B9068:
/* 800B9068 000B5FA8  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800B906C 000B5FAC  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800B9070 000B5FB0  7C 03 00 50 */ subf r0, r3, r0
/* 800B9074 000B5FB4  7C 03 07 34 */ extsh r3, r0
/* 800B9078 000B5FB8  4B FF A4 1D */ bl getDirectionFromAngle__9daAlink_cFs
/* 800B907C 000B5FBC  7C 7E 1B 78 */ mr r30, r3
/* 800B9080 000B5FC0  88 1F 2F B0 */ lbz r0, 0x2fb0(r31)
/* 800B9084 000B5FC4  28 00 00 00 */ cmplwi r0, 0
/* 800B9088 000B5FC8  41 82 00 28 */ beq lbl_800B90B0
/* 800B908C 000B5FCC  2C 1E 00 01 */ cmpwi r30, 1
/* 800B9090 000B5FD0  41 82 00 20 */ beq lbl_800B90B0
/* 800B9094 000B5FD4  7F E3 FB 78 */ mr r3, r31
/* 800B9098 000B5FD8  7F C4 F3 78 */ mr r4, r30
/* 800B909C 000B5FDC  48 00 00 AD */ bl checkSideRollAction__9daAlink_cFi
/* 800B90A0 000B5FE0  2C 03 00 00 */ cmpwi r3, 0
/* 800B90A4 000B5FE4  41 82 00 0C */ beq lbl_800B90B0
/* 800B90A8 000B5FE8  38 60 00 01 */ li r3, 1
/* 800B90AC 000B5FEC  48 00 00 84 */ b lbl_800B9130
lbl_800B90B0:
/* 800B90B0 000B5FF0  7F E3 FB 78 */ mr r3, r31
/* 800B90B4 000B5FF4  7F C4 F3 78 */ mr r4, r30
/* 800B90B8 000B5FF8  48 00 AC E9 */ bl procSideStepInit__9daAlink_cFi
/* 800B90BC 000B5FFC  48 00 00 74 */ b lbl_800B9130
lbl_800B90C0:
/* 800B90C0 000B6000  28 00 00 79 */ cmplwi r0, 0x79
/* 800B90C4 000B6004  40 82 00 58 */ bne lbl_800B911C
/* 800B90C8 000B6008  83 DF 27 E0 */ lwz r30, 0x27e0(r31)
/* 800B90CC 000B600C  3B A0 00 01 */ li r29, 1
/* 800B90D0 000B6010  7F C3 F3 78 */ mr r3, r30
/* 800B90D4 000B6014  4B FB A7 11 */ bl LockonTruth__12dAttention_cFv
/* 800B90D8 000B6018  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B90DC 000B601C  40 82 00 14 */ bne lbl_800B90F0
/* 800B90E0 000B6020  80 1E 03 34 */ lwz r0, 0x334(r30)
/* 800B90E4 000B6024  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800B90E8 000B6028  40 82 00 08 */ bne lbl_800B90F0
/* 800B90EC 000B602C  3B A0 00 00 */ li r29, 0
lbl_800B90F0:
/* 800B90F0 000B6030  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800B90F4 000B6034  40 82 00 1C */ bne lbl_800B9110
/* 800B90F8 000B6038  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800B90FC 000B603C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B9100 000B6040  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B9104 000B6044  40 81 00 0C */ ble lbl_800B9110
/* 800B9108 000B6048  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800B910C 000B604C  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
lbl_800B9110:
/* 800B9110 000B6050  7F E3 FB 78 */ mr r3, r31
/* 800B9114 000B6054  48 00 B8 39 */ bl procFrontRollInit__9daAlink_cFv
/* 800B9118 000B6058  48 00 00 18 */ b lbl_800B9130
lbl_800B911C:
/* 800B911C 000B605C  28 00 00 09 */ cmplwi r0, 9
/* 800B9120 000B6060  40 82 00 0C */ bne lbl_800B912C
/* 800B9124 000B6064  48 07 43 51 */ bl procWolfDashInit__9daAlink_cFv
/* 800B9128 000B6068  48 00 00 08 */ b lbl_800B9130
lbl_800B912C:
/* 800B912C 000B606C  38 60 00 00 */ li r3, 0
lbl_800B9130:
/* 800B9130 000B6070  39 61 00 20 */ addi r11, r1, 0x20
/* 800B9134 000B6074  48 2A 90 F5 */ bl _restgpr_29
/* 800B9138 000B6078  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B913C 000B607C  7C 08 03 A6 */ mtlr r0
/* 800B9140 000B6080  38 21 00 20 */ addi r1, r1, 0x20
/* 800B9144 000B6084  4E 80 00 20 */ blr
