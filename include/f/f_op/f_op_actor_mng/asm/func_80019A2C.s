/* 80019A2C 0001696C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80019A30 00016970  7C 08 02 A6 */ mflr r0
/* 80019A34 00016974  90 01 00 24 */ stw r0, 0x24(r1)
/* 80019A38 00016978  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80019A3C 0001697C  B0 61 00 08 */ sth r3, 8(r1)
/* 80019A40 00016980  7C 9F 23 78 */ mr r31, r4
/*.global fpcSch_JudgeForPName*/
/* 80019A44 00016984  3C 60 80 02 */ lis r3, fpcSch_JudgeForPName@ha
/*.global fpcSch_JudgeForPName*/
/* 80019A48 00016988  38 63 35 78 */ addi r3, r3, fpcSch_JudgeForPName@l
/* 80019A4C 0001698C  38 81 00 08 */ addi r4, r1, 8
/* 80019A50 00016990  4B FF FD A9 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80019A54 00016994  90 7F 00 00 */ stw r3, 0(r31)
/* 80019A58 00016998  80 7F 00 00 */ lwz r3, 0(r31)
/* 80019A5C 0001699C  28 03 00 00 */ cmplwi r3, 0
/* 80019A60 000169A0  40 82 00 0C */ bne lbl_80019A6C
/* 80019A64 000169A4  38 60 00 00 */ li r3, 0
/* 80019A68 000169A8  48 00 00 2C */ b lbl_80019A94
lbl_80019A6C:
/* 80019A6C 000169AC  41 82 00 0C */ beq lbl_80019A78
/* 80019A70 000169B0  80 63 00 04 */ lwz r3, 4(r3)
/* 80019A74 000169B4  48 00 00 08 */ b lbl_80019A7C
lbl_80019A78:
/* 80019A78 000169B8  38 60 FF FF */ li r3, -1
lbl_80019A7C:
/* 80019A7C 000169BC  48 00 86 BD */ bl fpcM_IsCreating
/* 80019A80 000169C0  2C 03 00 00 */ cmpwi r3, 0
/* 80019A84 000169C4  41 82 00 0C */ beq lbl_80019A90
/* 80019A88 000169C8  38 00 00 00 */ li r0, 0
/* 80019A8C 000169CC  90 1F 00 00 */ stw r0, 0(r31)
lbl_80019A90:
/* 80019A90 000169D0  38 60 00 01 */ li r3, 1
lbl_80019A94:
/* 80019A94 000169D4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80019A98 000169D8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80019A9C 000169DC  7C 08 03 A6 */ mtlr r0
/* 80019AA0 000169E0  38 21 00 20 */ addi r1, r1, 0x20
/* 80019AA4 000169E4  4E 80 00 20 */ blr
