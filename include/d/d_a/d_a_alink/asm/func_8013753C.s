/* 8013753C 0013447C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80137540 00134480  7C 08 02 A6 */ mflr r0
/* 80137544 00134484  90 01 00 14 */ stw r0, 0x14(r1)
/* 80137548 00134488  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013754C 0013448C  93 C1 00 08 */ stw r30, 8(r1)
/* 80137550 00134490  7C 7E 1B 78 */ mr r30, r3
/* 80137554 00134494  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80137558 00134498  4B FC 13 A1 */ bl daAlink_c_NS_decideCrawlDoStatus
/* 8013755C 0013449C  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 80137560 001344A0  2C 00 00 00 */ cmpwi r0, 0
/* 80137564 001344A4  41 82 00 24 */ beq lbl_80137588
/* 80137568 001344A8  7F E3 FB 78 */ mr r3, r31
/* 8013756C 001344AC  48 02 6F 61 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80137570 001344B0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80137574 001344B4  41 82 00 A4 */ beq lbl_80137618
/* 80137578 001344B8  7F C3 F3 78 */ mr r3, r30
/* 8013757C 001344BC  38 80 00 01 */ li r4, 1
/* 80137580 001344C0  48 00 00 B5 */ bl daAlink_c_NS_procWolfLieMoveInit
/* 80137584 001344C4  48 00 00 94 */ b lbl_80137618
lbl_80137588:
/* 80137588 001344C8  7F C3 F3 78 */ mr r3, r30
/* 8013758C 001344CC  38 80 00 00 */ li r4, 0
/* 80137590 001344D0  4B FF FC 6D */ bl daAlink_c_NS_checkWolfLieContinue
/* 80137594 001344D4  2C 03 00 00 */ cmpwi r3, 0
/* 80137598 001344D8  40 82 00 10 */ bne lbl_801375A8
/* 8013759C 001344DC  7F C3 F3 78 */ mr r3, r30
/* 801375A0 001344E0  4B FF FD 15 */ bl daAlink_c_NS_checkNextActionWolfFromLie
/* 801375A4 001344E4  48 00 00 74 */ b lbl_80137618
lbl_801375A8:
/* 801375A8 001344E8  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 801375AC 001344EC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 801375B0 001344F0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801375B4 001344F4  40 81 00 3C */ ble lbl_801375F0
/* 801375B8 001344F8  7F E3 FB 78 */ mr r3, r31
/* 801375BC 001344FC  48 02 6F 11 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801375C0 00134500  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801375C4 00134504  40 82 00 1C */ bne lbl_801375E0
/* 801375C8 00134508  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 801375CC 0013450C  3C 60 80 39 */ lis r3, lbl_8038F138@ha
/* 801375D0 00134510  38 63 F1 38 */ addi r3, r3, lbl_8038F138@l
/* 801375D4 00134514  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 801375D8 00134518  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801375DC 0013451C  40 81 00 14 */ ble lbl_801375F0
lbl_801375E0:
/* 801375E0 00134520  7F C3 F3 78 */ mr r3, r30
/* 801375E4 00134524  38 80 00 00 */ li r4, 0
/* 801375E8 00134528  48 00 00 4D */ bl daAlink_c_NS_procWolfLieMoveInit
/* 801375EC 0013452C  48 00 00 2C */ b lbl_80137618
lbl_801375F0:
/* 801375F0 00134530  38 00 00 04 */ li r0, 4
/* 801375F4 00134534  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 801375F8 00134538  7F C3 F3 78 */ mr r3, r30
/* 801375FC 0013453C  38 80 00 00 */ li r4, 0
/* 80137600 00134540  4B FF FD 31 */ bl daAlink_c_NS_setWolfLieMoveVoice
/* 80137604 00134544  7F C3 F3 78 */ mr r3, r30
/* 80137608 00134548  4B F7 D4 01 */ bl daAlink_c_NS_setTalkStatus
/* 8013760C 0013454C  7F C3 F3 78 */ mr r3, r30
/* 80137610 00134550  38 80 00 01 */ li r4, 1
/* 80137614 00134554  4B F8 05 E5 */ bl daAlink_c_NS_orderTalk
lbl_80137618:
/* 80137618 00134558  38 60 00 01 */ li r3, 1
/* 8013761C 0013455C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80137620 00134560  83 C1 00 08 */ lwz r30, 8(r1)
/* 80137624 00134564  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80137628 00134568  7C 08 03 A6 */ mtlr r0
/* 8013762C 0013456C  38 21 00 10 */ addi r1, r1, 0x10
/* 80137630 00134570  4E 80 00 20 */ blr
