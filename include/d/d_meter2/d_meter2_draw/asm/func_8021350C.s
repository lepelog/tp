/* 8021350C 0021044C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80213510 00210450  7C 08 02 A6 */ mflr r0
/* 80213514 00210454  90 01 00 14 */ stw r0, 0x14(r1)
/* 80213518 00210458  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8021351C 0021045C  93 C1 00 08 */ stw r30, 8(r1)
/* 80213520 00210460  7C 7F 1B 78 */ mr r31, r3
/* 80213524 00210464  38 60 00 6C */ li r3, 0x6c
/* 80213528 00210468  48 0B B7 25 */ bl __nw__FUl
/* 8021352C 0021046C  7C 60 1B 79 */ or. r0, r3, r3
/* 80213530 00210470  41 82 00 24 */ beq lbl_80213554
/* 80213534 00210474  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 80213538 00210478  3C A0 6A 69 */ lis r5, 0x6A695F6E@ha
/* 8021353C 0021047C  38 C5 5F 6E */ addi r6, r5, 0x6A695F6E@l
/* 80213540 00210480  38 A0 6A 75 */ li r5, 0x6a75
/* 80213544 00210484  38 E0 00 02 */ li r7, 2
/* 80213548 00210488  39 00 00 00 */ li r8, 0
/* 8021354C 0021048C  48 04 04 39 */ bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213550 00210490  7C 60 1B 78 */ mr r0, r3
lbl_80213554:
/* 80213554 00210494  90 1F 03 68 */ stw r0, 0x368(r31)
/* 80213558 00210498  4B E0 14 99 */ bl mDoExt_getMesgFont__Fv
/* 8021355C 0021049C  7C 7E 1B 78 */ mr r30, r3
/* 80213560 002104A0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213564 002104A4  3C 80 5F 6A */ lis r4, 0x5F6A7530@ha
/* 80213568 002104A8  38 C4 75 30 */ addi r6, r4, 0x5F6A7530@l
/* 8021356C 002104AC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213570 002104B0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213574 002104B4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213578 002104B8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 8021357C 002104BC  7D 89 03 A6 */ mtctr r12
/* 80213580 002104C0  4E 80 04 21 */ bctrl
/* 80213584 002104C4  7F C4 F3 78 */ mr r4, r30
/* 80213588 002104C8  81 83 00 00 */ lwz r12, 0(r3)
/* 8021358C 002104CC  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 80213590 002104D0  7D 89 03 A6 */ mtctr r12
/* 80213594 002104D4  4E 80 04 21 */ bctrl
/* 80213598 002104D8  4B E0 14 59 */ bl mDoExt_getMesgFont__Fv
/* 8021359C 002104DC  7C 7E 1B 78 */ mr r30, r3
/* 802135A0 002104E0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802135A4 002104E4  3C 80 5F 6A */ lis r4, 0x5F6A7531@ha
/* 802135A8 002104E8  38 C4 75 31 */ addi r6, r4, 0x5F6A7531@l
/* 802135AC 002104EC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802135B0 002104F0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802135B4 002104F4  81 83 00 00 */ lwz r12, 0(r3)
/* 802135B8 002104F8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802135BC 002104FC  7D 89 03 A6 */ mtctr r12
/* 802135C0 00210500  4E 80 04 21 */ bctrl
/* 802135C4 00210504  7F C4 F3 78 */ mr r4, r30
/* 802135C8 00210508  81 83 00 00 */ lwz r12, 0(r3)
/* 802135CC 0021050C  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 802135D0 00210510  7D 89 03 A6 */ mtctr r12
/* 802135D4 00210514  4E 80 04 21 */ bctrl
/* 802135D8 00210518  4B E0 14 19 */ bl mDoExt_getMesgFont__Fv
/* 802135DC 0021051C  7C 7E 1B 78 */ mr r30, r3
/* 802135E0 00210520  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802135E4 00210524  3C 80 5F 6A */ lis r4, 0x5F6A7532@ha
/* 802135E8 00210528  38 C4 75 32 */ addi r6, r4, 0x5F6A7532@l
/* 802135EC 0021052C  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802135F0 00210530  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802135F4 00210534  81 83 00 00 */ lwz r12, 0(r3)
/* 802135F8 00210538  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802135FC 0021053C  7D 89 03 A6 */ mtctr r12
/* 80213600 00210540  4E 80 04 21 */ bctrl
/* 80213604 00210544  7F C4 F3 78 */ mr r4, r30
/* 80213608 00210548  81 83 00 00 */ lwz r12, 0(r3)
/* 8021360C 0021054C  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 80213610 00210550  7D 89 03 A6 */ mtctr r12
/* 80213614 00210554  4E 80 04 21 */ bctrl
/* 80213618 00210558  4B E0 13 D9 */ bl mDoExt_getMesgFont__Fv
/* 8021361C 0021055C  7C 7E 1B 78 */ mr r30, r3
/* 80213620 00210560  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213624 00210564  3C 80 5F 6A */ lis r4, 0x5F6A7533@ha
/* 80213628 00210568  38 C4 75 33 */ addi r6, r4, 0x5F6A7533@l
/* 8021362C 0021056C  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213630 00210570  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213634 00210574  81 83 00 00 */ lwz r12, 0(r3)
/* 80213638 00210578  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 8021363C 0021057C  7D 89 03 A6 */ mtctr r12
/* 80213640 00210580  4E 80 04 21 */ bctrl
/* 80213644 00210584  7F C4 F3 78 */ mr r4, r30
/* 80213648 00210588  81 83 00 00 */ lwz r12, 0(r3)
/* 8021364C 0021058C  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 80213650 00210590  7D 89 03 A6 */ mtctr r12
/* 80213654 00210594  4E 80 04 21 */ bctrl
/* 80213658 00210598  4B E0 13 99 */ bl mDoExt_getMesgFont__Fv
/* 8021365C 0021059C  7C 7E 1B 78 */ mr r30, r3
/* 80213660 002105A0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213664 002105A4  3C 80 5F 6A */ lis r4, 0x5F6A7534@ha
/* 80213668 002105A8  38 C4 75 34 */ addi r6, r4, 0x5F6A7534@l
/* 8021366C 002105AC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213670 002105B0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213674 002105B4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213678 002105B8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 8021367C 002105BC  7D 89 03 A6 */ mtctr r12
/* 80213680 002105C0  4E 80 04 21 */ bctrl
/* 80213684 002105C4  7F C4 F3 78 */ mr r4, r30
/* 80213688 002105C8  81 83 00 00 */ lwz r12, 0(r3)
/* 8021368C 002105CC  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 80213690 002105D0  7D 89 03 A6 */ mtctr r12
/* 80213694 002105D4  4E 80 04 21 */ bctrl
/* 80213698 002105D8  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 8021369C 002105DC  3C 80 5F 6A */ lis r4, 0x5F6A7530@ha
/* 802136A0 002105E0  38 C4 75 30 */ addi r6, r4, 0x5F6A7530@l
/* 802136A4 002105E4  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802136A8 002105E8  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802136AC 002105EC  81 83 00 00 */ lwz r12, 0(r3)
/* 802136B0 002105F0  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802136B4 002105F4  7D 89 03 A6 */ mtctr r12
/* 802136B8 002105F8  4E 80 04 21 */ bctrl
/* 802136BC 002105FC  38 80 00 40 */ li r4, 0x40
/* 802136C0 00210600  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 802136C4 00210604  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 802136C8 00210608  38 A5 00 EF */ addi r5, r5, 0xef
/* 802136CC 0021060C  4C C6 31 82 */ crclr 6
/* 802136D0 00210610  48 0E D0 7D */ bl setString__10J2DTextBoxFsPCce
/* 802136D4 00210614  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802136D8 00210618  3C 80 5F 6A */ lis r4, 0x5F6A7531@ha
/* 802136DC 0021061C  38 C4 75 31 */ addi r6, r4, 0x5F6A7531@l
/* 802136E0 00210620  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802136E4 00210624  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802136E8 00210628  81 83 00 00 */ lwz r12, 0(r3)
/* 802136EC 0021062C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802136F0 00210630  7D 89 03 A6 */ mtctr r12
/* 802136F4 00210634  4E 80 04 21 */ bctrl
/* 802136F8 00210638  38 80 00 40 */ li r4, 0x40
/* 802136FC 0021063C  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213700 00210640  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213704 00210644  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213708 00210648  4C C6 31 82 */ crclr 6
/* 8021370C 0021064C  48 0E D0 41 */ bl setString__10J2DTextBoxFsPCce
/* 80213710 00210650  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213714 00210654  3C 80 5F 6A */ lis r4, 0x5F6A7532@ha
/* 80213718 00210658  38 C4 75 32 */ addi r6, r4, 0x5F6A7532@l
/* 8021371C 0021065C  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213720 00210660  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213724 00210664  81 83 00 00 */ lwz r12, 0(r3)
/* 80213728 00210668  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 8021372C 0021066C  7D 89 03 A6 */ mtctr r12
/* 80213730 00210670  4E 80 04 21 */ bctrl
/* 80213734 00210674  38 80 00 40 */ li r4, 0x40
/* 80213738 00210678  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 8021373C 0021067C  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213740 00210680  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213744 00210684  4C C6 31 82 */ crclr 6
/* 80213748 00210688  48 0E D0 05 */ bl setString__10J2DTextBoxFsPCce
/* 8021374C 0021068C  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213750 00210690  3C 80 5F 6A */ lis r4, 0x5F6A7533@ha
/* 80213754 00210694  38 C4 75 33 */ addi r6, r4, 0x5F6A7533@l
/* 80213758 00210698  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 8021375C 0021069C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213760 002106A0  81 83 00 00 */ lwz r12, 0(r3)
/* 80213764 002106A4  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213768 002106A8  7D 89 03 A6 */ mtctr r12
/* 8021376C 002106AC  4E 80 04 21 */ bctrl
/* 80213770 002106B0  38 80 00 40 */ li r4, 0x40
/* 80213774 002106B4  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213778 002106B8  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 8021377C 002106BC  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213780 002106C0  4C C6 31 82 */ crclr 6
/* 80213784 002106C4  48 0E CF C9 */ bl setString__10J2DTextBoxFsPCce
/* 80213788 002106C8  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 8021378C 002106CC  3C 80 5F 6A */ lis r4, 0x5F6A7534@ha
/* 80213790 002106D0  38 C4 75 34 */ addi r6, r4, 0x5F6A7534@l
/* 80213794 002106D4  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213798 002106D8  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 8021379C 002106DC  81 83 00 00 */ lwz r12, 0(r3)
/* 802137A0 002106E0  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802137A4 002106E4  7D 89 03 A6 */ mtctr r12
/* 802137A8 002106E8  4E 80 04 21 */ bctrl
/* 802137AC 002106EC  38 80 00 40 */ li r4, 0x40
/* 802137B0 002106F0  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 802137B4 002106F4  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 802137B8 002106F8  38 A5 00 EF */ addi r5, r5, 0xef
/* 802137BC 002106FC  4C C6 31 82 */ crclr 6
/* 802137C0 00210700  48 0E CF 8D */ bl setString__10J2DTextBoxFsPCce
/* 802137C4 00210704  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802137C8 00210708  3C 80 5F 6A */ lis r4, 0x5F6A7530@ha
/* 802137CC 0021070C  38 C4 75 30 */ addi r6, r4, 0x5F6A7530@l
/* 802137D0 00210710  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802137D4 00210714  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802137D8 00210718  81 83 00 00 */ lwz r12, 0(r3)
/* 802137DC 0021071C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802137E0 00210720  7D 89 03 A6 */ mtctr r12
/* 802137E4 00210724  4E 80 04 21 */ bctrl
/* 802137E8 00210728  48 0E CE 71 */ bl getStringPtr__10J2DTextBoxCFv
/* 802137EC 0021072C  7C 65 1B 78 */ mr r5, r3
/* 802137F0 00210730  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802137F4 00210734  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802137F8 00210738  38 80 00 61 */ li r4, 0x61
/* 802137FC 0021073C  38 C0 00 00 */ li r6, 0
/* 80213800 00210740  48 00 8A 51 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213804 00210744  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213808 00210748  3C 80 5F 6A */ lis r4, 0x5F6A7531@ha
/* 8021380C 0021074C  38 C4 75 31 */ addi r6, r4, 0x5F6A7531@l
/* 80213810 00210750  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213814 00210754  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213818 00210758  81 83 00 00 */ lwz r12, 0(r3)
/* 8021381C 0021075C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213820 00210760  7D 89 03 A6 */ mtctr r12
/* 80213824 00210764  4E 80 04 21 */ bctrl
/* 80213828 00210768  48 0E CE 31 */ bl getStringPtr__10J2DTextBoxCFv
/* 8021382C 0021076C  7C 65 1B 78 */ mr r5, r3
/* 80213830 00210770  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213834 00210774  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213838 00210778  38 80 00 61 */ li r4, 0x61
/* 8021383C 0021077C  38 C0 00 00 */ li r6, 0
/* 80213840 00210780  48 00 8A 11 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213844 00210784  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213848 00210788  3C 80 5F 6A */ lis r4, 0x5F6A7532@ha
/* 8021384C 0021078C  38 C4 75 32 */ addi r6, r4, 0x5F6A7532@l
/* 80213850 00210790  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213854 00210794  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213858 00210798  81 83 00 00 */ lwz r12, 0(r3)
/* 8021385C 0021079C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213860 002107A0  7D 89 03 A6 */ mtctr r12
/* 80213864 002107A4  4E 80 04 21 */ bctrl
/* 80213868 002107A8  48 0E CD F1 */ bl getStringPtr__10J2DTextBoxCFv
/* 8021386C 002107AC  7C 65 1B 78 */ mr r5, r3
/* 80213870 002107B0  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213874 002107B4  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213878 002107B8  38 80 00 61 */ li r4, 0x61
/* 8021387C 002107BC  38 C0 00 00 */ li r6, 0
/* 80213880 002107C0  48 00 89 D1 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213884 002107C4  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213888 002107C8  3C 80 5F 6A */ lis r4, 0x5F6A7533@ha
/* 8021388C 002107CC  38 C4 75 33 */ addi r6, r4, 0x5F6A7533@l
/* 80213890 002107D0  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213894 002107D4  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213898 002107D8  81 83 00 00 */ lwz r12, 0(r3)
/* 8021389C 002107DC  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802138A0 002107E0  7D 89 03 A6 */ mtctr r12
/* 802138A4 002107E4  4E 80 04 21 */ bctrl
/* 802138A8 002107E8  48 0E CD B1 */ bl getStringPtr__10J2DTextBoxCFv
/* 802138AC 002107EC  7C 65 1B 78 */ mr r5, r3
/* 802138B0 002107F0  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802138B4 002107F4  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802138B8 002107F8  38 80 00 61 */ li r4, 0x61
/* 802138BC 002107FC  38 C0 00 00 */ li r6, 0
/* 802138C0 00210800  48 00 89 91 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 802138C4 00210804  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802138C8 00210808  3C 80 5F 6A */ lis r4, 0x5F6A7534@ha
/* 802138CC 0021080C  38 C4 75 34 */ addi r6, r4, 0x5F6A7534@l
/* 802138D0 00210810  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802138D4 00210814  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802138D8 00210818  81 83 00 00 */ lwz r12, 0(r3)
/* 802138DC 0021081C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802138E0 00210820  7D 89 03 A6 */ mtctr r12
/* 802138E4 00210824  4E 80 04 21 */ bctrl
/* 802138E8 00210828  48 0E CD 71 */ bl getStringPtr__10J2DTextBoxCFv
/* 802138EC 0021082C  7C 65 1B 78 */ mr r5, r3
/* 802138F0 00210830  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802138F4 00210834  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802138F8 00210838  38 80 00 61 */ li r4, 0x61
/* 802138FC 0021083C  38 C0 00 00 */ li r6, 0
/* 80213900 00210840  48 00 89 51 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213904 00210844  4B E0 10 ED */ bl mDoExt_getMesgFont__Fv
/* 80213908 00210848  7C 7E 1B 78 */ mr r30, r3
/* 8021390C 0021084C  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213910 00210850  3C 80 5F 6A */ lis r4, 0x5F6A7535@ha
/* 80213914 00210854  38 C4 75 35 */ addi r6, r4, 0x5F6A7535@l
/* 80213918 00210858  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 8021391C 0021085C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213920 00210860  81 83 00 00 */ lwz r12, 0(r3)
/* 80213924 00210864  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213928 00210868  7D 89 03 A6 */ mtctr r12
/* 8021392C 0021086C  4E 80 04 21 */ bctrl
/* 80213930 00210870  7F C4 F3 78 */ mr r4, r30
/* 80213934 00210874  81 83 00 00 */ lwz r12, 0(r3)
/* 80213938 00210878  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 8021393C 0021087C  7D 89 03 A6 */ mtctr r12
/* 80213940 00210880  4E 80 04 21 */ bctrl
/* 80213944 00210884  4B E0 10 AD */ bl mDoExt_getMesgFont__Fv
/* 80213948 00210888  7C 7E 1B 78 */ mr r30, r3
/* 8021394C 0021088C  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213950 00210890  3C 80 5F 6A */ lis r4, 0x5F6A7536@ha
/* 80213954 00210894  38 C4 75 36 */ addi r6, r4, 0x5F6A7536@l
/* 80213958 00210898  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 8021395C 0021089C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213960 002108A0  81 83 00 00 */ lwz r12, 0(r3)
/* 80213964 002108A4  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213968 002108A8  7D 89 03 A6 */ mtctr r12
/* 8021396C 002108AC  4E 80 04 21 */ bctrl
/* 80213970 002108B0  7F C4 F3 78 */ mr r4, r30
/* 80213974 002108B4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213978 002108B8  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 8021397C 002108BC  7D 89 03 A6 */ mtctr r12
/* 80213980 002108C0  4E 80 04 21 */ bctrl
/* 80213984 002108C4  4B E0 10 6D */ bl mDoExt_getMesgFont__Fv
/* 80213988 002108C8  7C 7E 1B 78 */ mr r30, r3
/* 8021398C 002108CC  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213990 002108D0  3C 80 5F 6A */ lis r4, 0x5F6A7537@ha
/* 80213994 002108D4  38 C4 75 37 */ addi r6, r4, 0x5F6A7537@l
/* 80213998 002108D8  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 8021399C 002108DC  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802139A0 002108E0  81 83 00 00 */ lwz r12, 0(r3)
/* 802139A4 002108E4  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802139A8 002108E8  7D 89 03 A6 */ mtctr r12
/* 802139AC 002108EC  4E 80 04 21 */ bctrl
/* 802139B0 002108F0  7F C4 F3 78 */ mr r4, r30
/* 802139B4 002108F4  81 83 00 00 */ lwz r12, 0(r3)
/* 802139B8 002108F8  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 802139BC 002108FC  7D 89 03 A6 */ mtctr r12
/* 802139C0 00210900  4E 80 04 21 */ bctrl
/* 802139C4 00210904  4B E0 10 2D */ bl mDoExt_getMesgFont__Fv
/* 802139C8 00210908  7C 7E 1B 78 */ mr r30, r3
/* 802139CC 0021090C  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 802139D0 00210910  3C 80 5F 6A */ lis r4, 0x5F6A7538@ha
/* 802139D4 00210914  38 C4 75 38 */ addi r6, r4, 0x5F6A7538@l
/* 802139D8 00210918  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 802139DC 0021091C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 802139E0 00210920  81 83 00 00 */ lwz r12, 0(r3)
/* 802139E4 00210924  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 802139E8 00210928  7D 89 03 A6 */ mtctr r12
/* 802139EC 0021092C  4E 80 04 21 */ bctrl
/* 802139F0 00210930  7F C4 F3 78 */ mr r4, r30
/* 802139F4 00210934  81 83 00 00 */ lwz r12, 0(r3)
/* 802139F8 00210938  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 802139FC 0021093C  7D 89 03 A6 */ mtctr r12
/* 80213A00 00210940  4E 80 04 21 */ bctrl
/* 80213A04 00210944  4B E0 0F ED */ bl mDoExt_getMesgFont__Fv
/* 80213A08 00210948  7C 7E 1B 78 */ mr r30, r3
/* 80213A0C 0021094C  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213A10 00210950  3C 80 5F 6A */ lis r4, 0x5F6A7539@ha
/* 80213A14 00210954  38 C4 75 39 */ addi r6, r4, 0x5F6A7539@l
/* 80213A18 00210958  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213A1C 0021095C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213A20 00210960  81 83 00 00 */ lwz r12, 0(r3)
/* 80213A24 00210964  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213A28 00210968  7D 89 03 A6 */ mtctr r12
/* 80213A2C 0021096C  4E 80 04 21 */ bctrl
/* 80213A30 00210970  7F C4 F3 78 */ mr r4, r30
/* 80213A34 00210974  81 83 00 00 */ lwz r12, 0(r3)
/* 80213A38 00210978  81 8C 00 9C */ lwz r12, 0x9c(r12)
/* 80213A3C 0021097C  7D 89 03 A6 */ mtctr r12
/* 80213A40 00210980  4E 80 04 21 */ bctrl
/* 80213A44 00210984  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213A48 00210988  3C 80 5F 6A */ lis r4, 0x5F6A7535@ha
/* 80213A4C 0021098C  38 C4 75 35 */ addi r6, r4, 0x5F6A7535@l
/* 80213A50 00210990  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213A54 00210994  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213A58 00210998  81 83 00 00 */ lwz r12, 0(r3)
/* 80213A5C 0021099C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213A60 002109A0  7D 89 03 A6 */ mtctr r12
/* 80213A64 002109A4  4E 80 04 21 */ bctrl
/* 80213A68 002109A8  38 80 00 40 */ li r4, 0x40
/* 80213A6C 002109AC  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213A70 002109B0  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213A74 002109B4  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213A78 002109B8  4C C6 31 82 */ crclr 6
/* 80213A7C 002109BC  48 0E CC D1 */ bl setString__10J2DTextBoxFsPCce
/* 80213A80 002109C0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213A84 002109C4  3C 80 5F 6A */ lis r4, 0x5F6A7536@ha
/* 80213A88 002109C8  38 C4 75 36 */ addi r6, r4, 0x5F6A7536@l
/* 80213A8C 002109CC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213A90 002109D0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213A94 002109D4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213A98 002109D8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213A9C 002109DC  7D 89 03 A6 */ mtctr r12
/* 80213AA0 002109E0  4E 80 04 21 */ bctrl
/* 80213AA4 002109E4  38 80 00 40 */ li r4, 0x40
/* 80213AA8 002109E8  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213AAC 002109EC  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213AB0 002109F0  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213AB4 002109F4  4C C6 31 82 */ crclr 6
/* 80213AB8 002109F8  48 0E CC 95 */ bl setString__10J2DTextBoxFsPCce
/* 80213ABC 002109FC  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213AC0 00210A00  3C 80 5F 6A */ lis r4, 0x5F6A7537@ha
/* 80213AC4 00210A04  38 C4 75 37 */ addi r6, r4, 0x5F6A7537@l
/* 80213AC8 00210A08  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213ACC 00210A0C  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213AD0 00210A10  81 83 00 00 */ lwz r12, 0(r3)
/* 80213AD4 00210A14  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213AD8 00210A18  7D 89 03 A6 */ mtctr r12
/* 80213ADC 00210A1C  4E 80 04 21 */ bctrl
/* 80213AE0 00210A20  38 80 00 40 */ li r4, 0x40
/* 80213AE4 00210A24  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213AE8 00210A28  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213AEC 00210A2C  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213AF0 00210A30  4C C6 31 82 */ crclr 6
/* 80213AF4 00210A34  48 0E CC 59 */ bl setString__10J2DTextBoxFsPCce
/* 80213AF8 00210A38  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213AFC 00210A3C  3C 80 5F 6A */ lis r4, 0x5F6A7538@ha
/* 80213B00 00210A40  38 C4 75 38 */ addi r6, r4, 0x5F6A7538@l
/* 80213B04 00210A44  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213B08 00210A48  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213B0C 00210A4C  81 83 00 00 */ lwz r12, 0(r3)
/* 80213B10 00210A50  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213B14 00210A54  7D 89 03 A6 */ mtctr r12
/* 80213B18 00210A58  4E 80 04 21 */ bctrl
/* 80213B1C 00210A5C  38 80 00 40 */ li r4, 0x40
/* 80213B20 00210A60  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213B24 00210A64  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213B28 00210A68  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213B2C 00210A6C  4C C6 31 82 */ crclr 6
/* 80213B30 00210A70  48 0E CC 1D */ bl setString__10J2DTextBoxFsPCce
/* 80213B34 00210A74  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213B38 00210A78  3C 80 5F 6A */ lis r4, 0x5F6A7539@ha
/* 80213B3C 00210A7C  38 C4 75 39 */ addi r6, r4, 0x5F6A7539@l
/* 80213B40 00210A80  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213B44 00210A84  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213B48 00210A88  81 83 00 00 */ lwz r12, 0(r3)
/* 80213B4C 00210A8C  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213B50 00210A90  7D 89 03 A6 */ mtctr r12
/* 80213B54 00210A94  4E 80 04 21 */ bctrl
/* 80213B58 00210A98  38 80 00 40 */ li r4, 0x40
/* 80213B5C 00210A9C  3C A0 80 3A */ lis r5, lbl_803988D0@ha
/* 80213B60 00210AA0  38 A5 88 D0 */ addi r5, r5, lbl_803988D0@l
/* 80213B64 00210AA4  38 A5 00 EF */ addi r5, r5, 0xef
/* 80213B68 00210AA8  4C C6 31 82 */ crclr 6
/* 80213B6C 00210AAC  48 0E CB E1 */ bl setString__10J2DTextBoxFsPCce
/* 80213B70 00210AB0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213B74 00210AB4  3C 80 5F 6A */ lis r4, 0x5F6A7535@ha
/* 80213B78 00210AB8  38 C4 75 35 */ addi r6, r4, 0x5F6A7535@l
/* 80213B7C 00210ABC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213B80 00210AC0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213B84 00210AC4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213B88 00210AC8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213B8C 00210ACC  7D 89 03 A6 */ mtctr r12
/* 80213B90 00210AD0  4E 80 04 21 */ bctrl
/* 80213B94 00210AD4  48 0E CA C5 */ bl getStringPtr__10J2DTextBoxCFv
/* 80213B98 00210AD8  7C 65 1B 78 */ mr r5, r3
/* 80213B9C 00210ADC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213BA0 00210AE0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213BA4 00210AE4  38 80 00 62 */ li r4, 0x62
/* 80213BA8 00210AE8  38 C0 00 00 */ li r6, 0
/* 80213BAC 00210AEC  48 00 86 A5 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213BB0 00210AF0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213BB4 00210AF4  3C 80 5F 6A */ lis r4, 0x5F6A7536@ha
/* 80213BB8 00210AF8  38 C4 75 36 */ addi r6, r4, 0x5F6A7536@l
/* 80213BBC 00210AFC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213BC0 00210B00  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213BC4 00210B04  81 83 00 00 */ lwz r12, 0(r3)
/* 80213BC8 00210B08  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213BCC 00210B0C  7D 89 03 A6 */ mtctr r12
/* 80213BD0 00210B10  4E 80 04 21 */ bctrl
/* 80213BD4 00210B14  48 0E CA 85 */ bl getStringPtr__10J2DTextBoxCFv
/* 80213BD8 00210B18  7C 65 1B 78 */ mr r5, r3
/* 80213BDC 00210B1C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213BE0 00210B20  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213BE4 00210B24  38 80 00 62 */ li r4, 0x62
/* 80213BE8 00210B28  38 C0 00 00 */ li r6, 0
/* 80213BEC 00210B2C  48 00 86 65 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213BF0 00210B30  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213BF4 00210B34  3C 80 5F 6A */ lis r4, 0x5F6A7537@ha
/* 80213BF8 00210B38  38 C4 75 37 */ addi r6, r4, 0x5F6A7537@l
/* 80213BFC 00210B3C  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213C00 00210B40  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213C04 00210B44  81 83 00 00 */ lwz r12, 0(r3)
/* 80213C08 00210B48  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213C0C 00210B4C  7D 89 03 A6 */ mtctr r12
/* 80213C10 00210B50  4E 80 04 21 */ bctrl
/* 80213C14 00210B54  48 0E CA 45 */ bl getStringPtr__10J2DTextBoxCFv
/* 80213C18 00210B58  7C 65 1B 78 */ mr r5, r3
/* 80213C1C 00210B5C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213C20 00210B60  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213C24 00210B64  38 80 00 62 */ li r4, 0x62
/* 80213C28 00210B68  38 C0 00 00 */ li r6, 0
/* 80213C2C 00210B6C  48 00 86 25 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213C30 00210B70  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213C34 00210B74  3C 80 5F 6A */ lis r4, 0x5F6A7538@ha
/* 80213C38 00210B78  38 C4 75 38 */ addi r6, r4, 0x5F6A7538@l
/* 80213C3C 00210B7C  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213C40 00210B80  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213C44 00210B84  81 83 00 00 */ lwz r12, 0(r3)
/* 80213C48 00210B88  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213C4C 00210B8C  7D 89 03 A6 */ mtctr r12
/* 80213C50 00210B90  4E 80 04 21 */ bctrl
/* 80213C54 00210B94  48 0E CA 05 */ bl getStringPtr__10J2DTextBoxCFv
/* 80213C58 00210B98  7C 65 1B 78 */ mr r5, r3
/* 80213C5C 00210B9C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213C60 00210BA0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213C64 00210BA4  38 80 00 62 */ li r4, 0x62
/* 80213C68 00210BA8  38 C0 00 00 */ li r6, 0
/* 80213C6C 00210BAC  48 00 85 E5 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213C70 00210BB0  80 7F 00 78 */ lwz r3, 0x78(r31)
/* 80213C74 00210BB4  3C 80 5F 6A */ lis r4, 0x5F6A7539@ha
/* 80213C78 00210BB8  38 C4 75 39 */ addi r6, r4, 0x5F6A7539@l
/* 80213C7C 00210BBC  3C 80 63 6F */ lis r4, 0x636F6E74@ha
/* 80213C80 00210BC0  38 A4 6E 74 */ addi r5, r4, 0x636F6E74@l
/* 80213C84 00210BC4  81 83 00 00 */ lwz r12, 0(r3)
/* 80213C88 00210BC8  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213C8C 00210BCC  7D 89 03 A6 */ mtctr r12
/* 80213C90 00210BD0  4E 80 04 21 */ bctrl
/* 80213C94 00210BD4  48 0E C9 C5 */ bl getStringPtr__10J2DTextBoxCFv
/* 80213C98 00210BD8  7C 65 1B 78 */ mr r5, r3
/* 80213C9C 00210BDC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80213CA0 00210BE0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80213CA4 00210BE4  38 80 00 62 */ li r4, 0x62
/* 80213CA8 00210BE8  38 C0 00 00 */ li r6, 0
/* 80213CAC 00210BEC  48 00 85 A5 */ bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80213CB0 00210BF0  80 7F 03 68 */ lwz r3, 0x368(r31)
/* 80213CB4 00210BF4  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80213CB8 00210BF8  48 04 1B 19 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80213CBC 00210BFC  7F E3 FB 78 */ mr r3, r31
/* 80213CC0 00210C00  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80213CC4 00210C04  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80213CC8 00210C08  C0 24 04 00 */ lfs f1, 0x400(r4)
/* 80213CCC 00210C0C  C0 44 04 04 */ lfs f2, 0x404(r4)
/* 80213CD0 00210C10  48 00 45 85 */ bl drawButtonCross__13dMeter2Draw_cFff
/* 80213CD4 00210C14  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80213CD8 00210C18  83 C1 00 08 */ lwz r30, 8(r1)
/* 80213CDC 00210C1C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80213CE0 00210C20  7C 08 03 A6 */ mtlr r0
/* 80213CE4 00210C24  38 21 00 10 */ addi r1, r1, 0x10
/* 80213CE8 00210C28  4E 80 00 20 */ blr
