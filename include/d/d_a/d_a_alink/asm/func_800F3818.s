/* 800F3818 000F0758  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F381C 000F075C  7C 08 02 A6 */ mflr r0
/* 800F3820 000F0760  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F3824 000F0764  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F3828 000F0768  7C 7F 1B 78 */ mr r31, r3
/* 800F382C 000F076C  38 80 00 52 */ li r4, 0x52
/* 800F3830 000F0770  4B FC F5 75 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800F3834 000F0774  2C 03 00 00 */ cmpwi r3, 0
/* 800F3838 000F0778  40 82 00 0C */ bne lbl_800F3844
/* 800F383C 000F077C  38 60 00 00 */ li r3, 0
/* 800F3840 000F0780  48 00 00 40 */ b lbl_800F3880
lbl_800F3844:
/* 800F3844 000F0784  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800F3848 000F0788  28 00 01 03 */ cmplwi r0, 0x103
/* 800F384C 000F078C  41 82 00 1C */ beq lbl_800F3868
/* 800F3850 000F0790  7F E3 FB 78 */ mr r3, r31
/* 800F3854 000F0794  38 80 00 00 */ li r4, 0
/* 800F3858 000F0798  38 A0 00 00 */ li r5, 0
/* 800F385C 000F079C  4B FC DA 81 */ bl deleteEquipItem__9daAlink_cFii
/* 800F3860 000F07A0  7F E3 FB 78 */ mr r3, r31
/* 800F3864 000F07A4  4B FD DA 05 */ bl setSwordModel__9daAlink_cFv
lbl_800F3868:
/* 800F3868 000F07A8  7F E3 FB 78 */ mr r3, r31
/* 800F386C 000F07AC  38 80 01 99 */ li r4, 0x199
/* 800F3870 000F07B0  4B FB 97 11 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F3874 000F07B4  7F E3 FB 78 */ mr r3, r31
/* 800F3878 000F07B8  4B FF A1 AD */ bl setSyncRidePos__9daAlink_cFv
/* 800F387C 000F07BC  38 60 00 01 */ li r3, 1
lbl_800F3880:
/* 800F3880 000F07C0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F3884 000F07C4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F3888 000F07C8  7C 08 03 A6 */ mtlr r0
/* 800F388C 000F07CC  38 21 00 10 */ addi r1, r1, 0x10
/* 800F3890 000F07D0  4E 80 00 20 */ blr