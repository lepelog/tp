/* 8011CA4C 0011998C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011CA50 00119990  7C 08 02 A6 */ mflr r0
/* 8011CA54 00119994  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011CA58 00119998  7C 64 1B 78 */ mr r4, r3
/* 8011CA5C 0011999C  88 03 2F 99 */ lbz r0, 0x2f99(r3)
/* 8011CA60 001199A0  28 00 00 0C */ cmplwi r0, 0xc
/* 8011CA64 001199A4  41 82 00 0C */ beq lbl_8011CA70
/* 8011CA68 001199A8  38 00 00 04 */ li r0, 4
/* 8011CA6C 001199AC  98 04 2F 99 */ stb r0, 0x2f99(r4)
lbl_8011CA70:
/* 8011CA70 001199B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011CA74 001199B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011CA78 001199B8  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8011CA7C 001199BC  80 84 31 84 */ lwz r4, 0x3184(r4)
/* 8011CA80 001199C0  4B F2 B6 FD */ bl cutEnd__16dEvent_manager_cFi
/* 8011CA84 001199C4  38 60 00 01 */ li r3, 1
/* 8011CA88 001199C8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011CA8C 001199CC  7C 08 03 A6 */ mtlr r0
/* 8011CA90 001199D0  38 21 00 10 */ addi r1, r1, 0x10
/* 8011CA94 001199D4  4E 80 00 20 */ blr