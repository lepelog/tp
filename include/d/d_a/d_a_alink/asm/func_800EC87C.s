/* 800EC87C 000E97BC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800EC880 000E97C0  7C 08 02 A6 */ mflr r0
/* 800EC884 000E97C4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EC888 000E97C8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800EC88C 000E97CC  7C 7F 1B 78 */ mr r31, r3
/* 800EC890 000E97D0  80 63 27 F4 */ lwz r3, 0x27f4(r3)
/* 800EC894 000E97D4  7F E4 FB 78 */ mr r4, r31
/* 800EC898 000E97D8  4B F2 DE 79 */ bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800EC89C 000E97DC  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 800EC8A0 000E97E0  A8 04 04 E6 */ lha r0, 0x4e6(r4)
/* 800EC8A4 000E97E4  7C 00 18 50 */ subf r0, r0, r3
/* 800EC8A8 000E97E8  7C 1F 07 34 */ extsh r31, r0
/* 800EC8AC 000E97EC  A8 04 00 08 */ lha r0, 8(r4)
/* 800EC8B0 000E97F0  2C 00 00 EE */ cmpwi r0, 0xee
/* 800EC8B4 000E97F4  40 82 00 1C */ bne lbl_800EC8D0
/* 800EC8B8 000E97F8  7F E3 FB 78 */ mr r3, r31
/* 800EC8BC 000E97FC  48 27 88 15 */ bl abs
/* 800EC8C0 000E9800  2C 03 68 00 */ cmpwi r3, 0x6800
/* 800EC8C4 000E9804  40 81 00 0C */ ble lbl_800EC8D0
/* 800EC8C8 000E9808  38 60 00 01 */ li r3, 1
/* 800EC8CC 000E980C  48 00 00 18 */ b lbl_800EC8E4
lbl_800EC8D0:
/* 800EC8D0 000E9810  7F E0 07 35 */ extsh. r0, r31
/* 800EC8D4 000E9814  40 81 00 0C */ ble lbl_800EC8E0
/* 800EC8D8 000E9818  38 60 00 02 */ li r3, 2
/* 800EC8DC 000E981C  48 00 00 08 */ b lbl_800EC8E4
lbl_800EC8E0:
/* 800EC8E0 000E9820  38 60 00 03 */ li r3, 3
lbl_800EC8E4:
/* 800EC8E4 000E9824  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EC8E8 000E9828  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800EC8EC 000E982C  7C 08 03 A6 */ mtlr r0
/* 800EC8F0 000E9830  38 21 00 10 */ addi r1, r1, 0x10
/* 800EC8F4 000E9834  4E 80 00 20 */ blr
