/* 800F25B4 000EF4F4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F25B8 000EF4F8  7C 08 02 A6 */ mflr r0
/* 800F25BC 000EF4FC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F25C0 000EF500  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F25C4 000EF504  7C 7F 1B 78 */ mr r31, r3
/* 800F25C8 000EF508  38 80 00 49 */ li r4, 0x49
/* 800F25CC 000EF50C  4B FD 07 D9 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800F25D0 000EF510  2C 03 00 00 */ cmpwi r3, 0
/* 800F25D4 000EF514  40 82 00 0C */ bne lbl_800F25E0
/* 800F25D8 000EF518  38 60 00 00 */ li r3, 0
/* 800F25DC 000EF51C  48 00 00 38 */ b lbl_800F2614
lbl_800F25E0:
/* 800F25E0 000EF520  7F E3 FB 78 */ mr r3, r31
/* 800F25E4 000EF524  4B FF B4 41 */ bl setSyncRidePos__9daAlink_cFv
/* 800F25E8 000EF528  7F E3 FB 78 */ mr r3, r31
/* 800F25EC 000EF52C  4B FF C7 AD */ bl setBaseRideAnime__9daAlink_cFv
/* 800F25F0 000EF530  7F E3 FB 78 */ mr r3, r31
/* 800F25F4 000EF534  38 80 00 00 */ li r4, 0
/* 800F25F8 000EF538  4B FE DD D9 */ bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800F25FC 000EF53C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F2600 000EF540  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2604 000EF544  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800F2608 000EF548  64 00 00 08 */ oris r0, r0, 8
/* 800F260C 000EF54C  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800F2610 000EF550  38 60 00 01 */ li r3, 1
lbl_800F2614:
/* 800F2614 000EF554  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F2618 000EF558  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F261C 000EF55C  7C 08 03 A6 */ mtlr r0
/* 800F2620 000EF560  38 21 00 10 */ addi r1, r1, 0x10
/* 800F2624 000EF564  4E 80 00 20 */ blr