/* 800E1248 000DE188  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E124C 000DE18C  7C 08 02 A6 */ mflr r0
/* 800E1250 000DE190  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E1254 000DE194  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E1258 000DE198  7C 7F 1B 78 */ mr r31, r3
/* 800E125C 000DE19C  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800E1260 000DE1A0  80 1F 05 88 */ lwz r0, 0x588(r31)
/* 800E1264 000DE1A4  64 00 08 00 */ oris r0, r0, 0x800
/* 800E1268 000DE1A8  90 1F 05 88 */ stw r0, 0x588(r31)
/* 800E126C 000DE1AC  C0 3F 1F E0 */ lfs f1, 0x1fe0(r31)
/* 800E1270 000DE1B0  3C 80 80 39 */ lis r4, lbl_8038E6C8@ha
/* 800E1274 000DE1B4  38 84 E6 C8 */ addi r4, r4, lbl_8038E6C8@l
/* 800E1278 000DE1B8  C0 04 00 24 */ lfs f0, 0x24(r4)
/* 800E127C 000DE1BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E1280 000DE1C0  40 81 00 10 */ ble lbl_800E1290
/* 800E1284 000DE1C4  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800E1288 000DE1C8  60 00 00 04 */ ori r0, r0, 4
/* 800E128C 000DE1CC  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_800E1290:
/* 800E1290 000DE1D0  48 07 D2 3D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E1294 000DE1D4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E1298 000DE1D8  41 82 00 24 */ beq lbl_800E12BC
/* 800E129C 000DE1DC  7F E3 FB 78 */ mr r3, r31
/* 800E12A0 000DE1E0  38 80 00 02 */ li r4, 2
/* 800E12A4 000DE1E4  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800E12A8 000DE1E8  4B FC C4 7D */ bl daAlink_c_NS_resetUpperAnime
/* 800E12AC 000DE1EC  7F E3 FB 78 */ mr r3, r31
/* 800E12B0 000DE1F0  38 80 00 00 */ li r4, 0
/* 800E12B4 000DE1F4  4B FD 8E 1D */ bl daAlink_c_NS_checkNextAction
/* 800E12B8 000DE1F8  48 00 00 10 */ b lbl_800E12C8
lbl_800E12BC:
/* 800E12BC 000DE1FC  7F E3 FB 78 */ mr r3, r31
/* 800E12C0 000DE200  38 80 00 01 */ li r4, 1
/* 800E12C4 000DE204  4B FD 8E 0D */ bl daAlink_c_NS_checkNextAction
lbl_800E12C8:
/* 800E12C8 000DE208  38 60 00 01 */ li r3, 1
/* 800E12CC 000DE20C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E12D0 000DE210  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E12D4 000DE214  7C 08 03 A6 */ mtlr r0
/* 800E12D8 000DE218  38 21 00 10 */ addi r1, r1, 0x10
/* 800E12DC 000DE21C  4E 80 00 20 */ blr
