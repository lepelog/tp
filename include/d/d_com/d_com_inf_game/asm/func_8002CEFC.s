/* 8002CEFC 00029E3C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002CF00 00029E40  7C 08 02 A6 */ mflr r0
/* 8002CF04 00029E44  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002CF08 00029E48  7C 68 1B 78 */ mr r8, r3
/* 8002CF0C 00029E4C  80 63 00 00 */ lwz r3, 0(r3)
/* 8002CF10 00029E50  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002CF14 00029E54  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002CF18 00029E58  3C 84 00 02 */ addis r4, r4, 2
/* 8002CF1C 00029E5C  38 A0 00 80 */ li r5, 0x80
/* 8002CF20 00029E60  3C C0 80 38 */ lis r6, lbl_80378F38@ha
/* 8002CF24 00029E64  38 C6 8F 38 */ addi r6, r6, lbl_80378F38@l
/* 8002CF28 00029E68  38 C6 01 13 */ addi r6, r6, 0x113
/* 8002CF2C 00029E6C  38 E0 00 00 */ li r7, 0
/* 8002CF30 00029E70  81 08 00 04 */ lwz r8, 4(r8)
/* 8002CF34 00029E74  38 84 C2 F8 */ addi r4, r4, -15624
/* 8002CF38 00029E78  48 00 F1 41 */ bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8002CF3C 00029E7C  2C 03 00 00 */ cmpwi r3, 0
/* 8002CF40 00029E80  38 60 00 02 */ li r3, 2
/* 8002CF44 00029E84  40 82 00 08 */ bne lbl_8002CF4C
/* 8002CF48 00029E88  38 60 00 05 */ li r3, 5
lbl_8002CF4C:
/* 8002CF4C 00029E8C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002CF50 00029E90  7C 08 03 A6 */ mtlr r0
/* 8002CF54 00029E94  38 21 00 10 */ addi r1, r1, 0x10
/* 8002CF58 00029E98  4E 80 00 20 */ blr