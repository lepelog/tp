/* 800E05E8 000DD528  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E05EC 000DD52C  7C 08 02 A6 */ mflr r0
/* 800E05F0 000DD530  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E05F4 000DD534  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E05F8 000DD538  7C 7F 1B 78 */ mr r31, r3
/* 800E05FC 000DD53C  38 80 00 53 */ li r4, 0x53
/* 800E0600 000DD540  38 A0 00 02 */ li r5, 2
/* 800E0604 000DD544  3C C0 80 39 */ lis r6, lbl_8038E6C8@ha
/* 800E0608 000DD548  38 C6 E6 C8 */ addi r6, r6, lbl_8038E6C8@l
/* 800E060C 000DD54C  4B FC D0 E5 */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800E0610 000DD550  7F E3 FB 78 */ mr r3, r31
/* 800E0614 000DD554  38 80 00 00 */ li r4, 0
/* 800E0618 000DD558  4B FD 6B 79 */ bl cancelItemUseQuake__9daAlink_cFi
/* 800E061C 000DD55C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E0620 000DD560  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E0624 000DD564  7C 08 03 A6 */ mtlr r0
/* 800E0628 000DD568  38 21 00 10 */ addi r1, r1, 0x10
/* 800E062C 000DD56C  4E 80 00 20 */ blr
