/* 8002D9CC 0002A90C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002D9D0 0002A910  7C 08 02 A6 */ mflr r0
/* 8002D9D4 0002A914  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002D9D8 0002A918  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002D9DC 0002A91C  7C 7F 1B 78 */ mr r31, r3
/* 8002D9E0 0002A920  2C 04 00 00 */ cmpwi r4, 0
/* 8002D9E4 0002A924  41 80 00 08 */ blt lbl_8002D9EC
/* 8002D9E8 0002A928  48 00 00 10 */ b lbl_8002D9F8
lbl_8002D9EC:
/* 8002D9EC 0002A92C  88 8D 87 E4 */ lbz r4, lbl_80450D64-_SDA_BASE_(r13)
/* 8002D9F0 0002A930  7C 84 07 75 */ extsb. r4, r4
/* 8002D9F4 0002A934  41 80 00 28 */ blt lbl_8002DA1C
lbl_8002D9F8:
/* 8002D9F8 0002A938  7C 83 23 78 */ mr r3, r4
/* 8002D9FC 0002A93C  4B FF FF B5 */ bl getZoneNo__20dStage_roomControl_cFi
/* 8002DA00 0002A940  54 64 28 34 */ slwi r4, r3, 5
/* 8002DA04 0002A944  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DA08 0002A948  38 03 61 C0 */ addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DA0C 0002A94C  7C 60 22 14 */ add r3, r0, r4
/* 8002DA10 0002A950  38 63 09 B6 */ addi r3, r3, 0x9b6
/* 8002DA14 0002A954  7F E4 FB 78 */ mr r4, r31
/* 8002DA18 0002A958  48 00 73 15 */ bl offSwitch__13dSv_zoneBit_cFi
lbl_8002DA1C:
/* 8002DA1C 0002A95C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002DA20 0002A960  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002DA24 0002A964  7C 08 03 A6 */ mtlr r0
/* 8002DA28 0002A968  38 21 00 10 */ addi r1, r1, 0x10
/* 8002DA2C 0002A96C  4E 80 00 20 */ blr
