/* 80264288 002611C8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8026428C 002611CC  7C 08 02 A6 */ mflr r0
/* 80264290 002611D0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80264294 002611D4  28 04 00 00 */ cmplwi r4, 0
/* 80264298 002611D8  41 82 00 08 */ beq lbl_802642A0
/* 8026429C 002611DC  38 84 00 20 */ addi r4, r4, 0x20
lbl_802642A0:
/* 802642A0 002611E0  38 63 00 20 */ addi r3, r3, 0x20
/* 802642A4 002611E4  48 00 7F 89 */ bl cM3d_Cross_CylCyl
/* 802642A8 002611E8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802642AC 002611EC  41 82 00 0C */ beq lbl_802642B8
/* 802642B0 002611F0  38 60 00 01 */ li r3, 1
/* 802642B4 002611F4  48 00 00 08 */ b lbl_802642BC
lbl_802642B8:
/* 802642B8 002611F8  38 60 00 00 */ li r3, 0
lbl_802642BC:
/* 802642BC 002611FC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802642C0 00261200  7C 08 03 A6 */ mtlr r0
/* 802642C4 00261204  38 21 00 10 */ addi r1, r1, 0x10
/* 802642C8 00261208  4E 80 00 20 */ blr