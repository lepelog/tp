/* 800DB610 000D8550  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DB614 000D8554  7C 08 02 A6 */ mflr r0
/* 800DB618 000D8558  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DB61C 000D855C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DB620 000D8560  93 C1 00 08 */ stw r30, 8(r1)
/* 800DB624 000D8564  7C 7E 1B 78 */ mr r30, r3
/* 800DB628 000D8568  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800DB62C 000D856C  80 03 05 88 */ lwz r0, 0x588(r3)
/* 800DB630 000D8570  64 00 08 00 */ oris r0, r0, 0x800
/* 800DB634 000D8574  90 03 05 88 */ stw r0, 0x588(r3)
/* 800DB638 000D8578  7F E3 FB 78 */ mr r3, r31
/* 800DB63C 000D857C  48 08 2E 91 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB640 000D8580  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DB644 000D8584  41 82 00 14 */ beq lbl_800DB658
/* 800DB648 000D8588  7F C3 F3 78 */ mr r3, r30
/* 800DB64C 000D858C  38 80 00 00 */ li r4, 0
/* 800DB650 000D8590  4B FD EA 81 */ bl checkNextAction__9daAlink_cFi
/* 800DB654 000D8594  48 00 00 34 */ b lbl_800DB688
lbl_800DB658:
/* 800DB658 000D8598  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800DB65C 000D859C  3C 60 80 39 */ lis r3, lbl_8038E49C@ha
/* 800DB660 000D85A0  38 63 E4 9C */ addi r3, r3, lbl_8038E49C@l
/* 800DB664 000D85A4  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800DB668 000D85A8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DB66C 000D85AC  40 81 00 1C */ ble lbl_800DB688
/* 800DB670 000D85B0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DB674 000D85B4  60 00 00 04 */ ori r0, r0, 4
/* 800DB678 000D85B8  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800DB67C 000D85BC  7F C3 F3 78 */ mr r3, r30
/* 800DB680 000D85C0  38 80 00 01 */ li r4, 1
/* 800DB684 000D85C4  4B FD EA 4D */ bl checkNextAction__9daAlink_cFi
lbl_800DB688:
/* 800DB688 000D85C8  38 60 00 01 */ li r3, 1
/* 800DB68C 000D85CC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DB690 000D85D0  83 C1 00 08 */ lwz r30, 8(r1)
/* 800DB694 000D85D4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DB698 000D85D8  7C 08 03 A6 */ mtlr r0
/* 800DB69C 000D85DC  38 21 00 10 */ addi r1, r1, 0x10
/* 800DB6A0 000D85E0  4E 80 00 20 */ blr
