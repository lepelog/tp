/* 802183A8 002152E8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802183AC 002152EC  7C 08 02 A6 */ mflr r0
/* 802183B0 002152F0  90 01 00 14 */ stw r0, 0x14(r1)
/* 802183B4 002152F4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802183B8 002152F8  7C 7F 1B 78 */ mr r31, r3
/* 802183BC 002152FC  80 63 03 68 */ lwz r3, 0x368(r3)
/* 802183C0 00215300  48 03 D4 69 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 802183C4 00215304  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802183C8 00215308  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802183CC 0021530C  C0 03 00 18 */ lfs f0, 0x18(r3)
/* 802183D0 00215310  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802183D4 00215314  41 82 00 20 */ beq lbl_802183F4
/* 802183D8 00215318  80 7F 03 68 */ lwz r3, 0x368(r31)
/* 802183DC 0021531C  FC 20 00 90 */ fmr f1, f0
/* 802183E0 00215320  48 03 D3 F1 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802183E4 00215324  7F E3 FB 78 */ mr r3, r31
/* 802183E8 00215328  80 9F 03 68 */ lwz r4, 0x368(r31)
/* 802183EC 0021532C  38 A0 00 05 */ li r5, 5
/* 802183F0 00215330  48 00 26 B5 */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_802183F4:
/* 802183F4 00215334  48 00 62 95 */ bl dMeter2Info_isItemOpenCheck
/* 802183F8 00215338  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802183FC 0021533C  41 82 00 10 */ beq lbl_8021840C
/* 80218400 00215340  7F E3 FB 78 */ mr r3, r31
/* 80218404 00215344  48 00 01 21 */ bl dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMax
/* 80218408 00215348  48 00 00 0C */ b lbl_80218414
lbl_8021840C:
/* 8021840C 0021534C  7F E3 FB 78 */ mr r3, r31
/* 80218410 00215350  48 00 00 39 */ bl dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMin
lbl_80218414:
/* 80218414 00215354  48 00 62 55 */ bl dMeter2Info_isMapOpenCheck
/* 80218418 00215358  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8021841C 0021535C  41 82 00 10 */ beq lbl_8021842C
/* 80218420 00215360  7F E3 FB 78 */ mr r3, r31
/* 80218424 00215364  48 00 02 A1 */ bl dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMax
/* 80218428 00215368  48 00 00 0C */ b lbl_80218434
lbl_8021842C:
/* 8021842C 0021536C  7F E3 FB 78 */ mr r3, r31
/* 80218430 00215370  48 00 01 B9 */ bl dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMin
lbl_80218434:
/* 80218434 00215374  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80218438 00215378  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8021843C 0021537C  7C 08 03 A6 */ mtlr r0
/* 80218440 00215380  38 21 00 10 */ addi r1, r1, 0x10
/* 80218444 00215384  4E 80 00 20 */ blr
