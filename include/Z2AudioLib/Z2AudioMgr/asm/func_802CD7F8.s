/* 802CD7F8 002CA738  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802CD7FC 002CA73C  7C 08 02 A6 */ mflr r0
/* 802CD800 002CA740  90 01 00 14 */ stw r0, 0x14(r1)
/* 802CD804 002CA744  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802CD808 002CA748  93 C1 00 08 */ stw r30, 8(r1)
/* 802CD80C 002CA74C  7C 7E 1B 79 */ or. r30, r3, r3
/* 802CD810 002CA750  7C 9F 23 78 */ mr r31, r4
/* 802CD814 002CA754  41 82 00 58 */ beq lbl_802CD86C
/* 802CD818 002CA758  3C 60 80 3D */ lis r3, lbl_803CBF58@ha
/* 802CD81C 002CA75C  38 03 BF 58 */ addi r0, r3, lbl_803CBF58@l
/* 802CD820 002CA760  90 1E 00 00 */ stw r0, 0(r30)
/* 802CD824 002CA764  80 1E 00 40 */ lwz r0, 0x40(r30)
/* 802CD828 002CA768  28 00 00 00 */ cmplwi r0, 0
/* 802CD82C 002CA76C  41 82 00 0C */ beq lbl_802CD838
/* 802CD830 002CA770  38 7E 00 08 */ addi r3, r30, 8
/* 802CD834 002CA774  4B FC 2C B1 */ bl free__7JASHeapFv
lbl_802CD838:
/* 802CD838 002CA778  38 7E 00 08 */ addi r3, r30, 8
/*.global __dt__7JASHeapFv*/
/* 802CD83C 002CA77C  3C 80 80 29 */ lis r4, __dt__7JASHeapFv@ha
/*.global __dt__7JASHeapFv*/
/* 802CD840 002CA780  38 84 0B 54 */ addi r4, r4, __dt__7JASHeapFv@l
/* 802CD844 002CA784  38 A0 00 44 */ li r5, 0x44
/* 802CD848 002CA788  38 C0 00 01 */ li r6, 1
/* 802CD84C 002CA78C  48 09 44 9D */ bl __destroy_arr
/* 802CD850 002CA790  7F C3 F3 78 */ mr r3, r30
/* 802CD854 002CA794  38 80 00 00 */ li r4, 0
/* 802CD858 002CA798  4B FD 62 C9 */ bl __dt__16JAIStreamAramMgrFv
/* 802CD85C 002CA79C  7F E0 07 35 */ extsh. r0, r31
/* 802CD860 002CA7A0  40 81 00 0C */ ble lbl_802CD86C
/* 802CD864 002CA7A4  7F C3 F3 78 */ mr r3, r30
/* 802CD868 002CA7A8  48 00 14 D5 */ bl __dl__FPv
lbl_802CD86C:
/* 802CD86C 002CA7AC  7F C3 F3 78 */ mr r3, r30
/* 802CD870 002CA7B0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802CD874 002CA7B4  83 C1 00 08 */ lwz r30, 8(r1)
/* 802CD878 002CA7B8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802CD87C 002CA7BC  7C 08 03 A6 */ mtlr r0
/* 802CD880 002CA7C0  38 21 00 10 */ addi r1, r1, 0x10
/* 802CD884 002CA7C4  4E 80 00 20 */ blr
