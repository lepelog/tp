/* 8001BCFC 00018C3C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001BD00 00018C40  7C 08 02 A6 */ mflr r0
/* 8001BD04 00018C44  90 01 00 24 */ stw r0, 0x24(r1)
/* 8001BD08 00018C48  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8001BD0C 00018C4C  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8001BD10 00018C50  7C 7E 1B 78 */ mr r30, r3
/* 8001BD14 00018C54  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8001BD18 00018C58  38 C4 61 C0 */ addi r6, r4, g_dComIfG_gameInfo@l
/* 8001BD1C 00018C5C  83 E6 5F 54 */ lwz r31, 0x5f54(r6)
/* 8001BD20 00018C60  54 65 06 3E */ clrlwi r5, r3, 0x18
/* 8001BD24 00018C64  28 05 00 FF */ cmplwi r5, 0xff
/* 8001BD28 00018C68  40 82 00 08 */ bne lbl_8001BD30
/* 8001BD2C 00018C6C  48 00 00 D0 */ b lbl_8001BDFC
lbl_8001BD30:
/* 8001BD30 00018C70  A0 86 00 00 */ lhz r4, 0(r6)
/* 8001BD34 00018C74  A0 06 00 02 */ lhz r0, 2(r6)
/* 8001BD38 00018C78  1C 60 00 64 */ mulli r3, r0, 0x64
/* 8001BD3C 00018C7C  38 00 00 05 */ li r0, 5
/* 8001BD40 00018C80  7C 04 03 D6 */ divw r0, r4, r0
/* 8001BD44 00018C84  54 00 16 3A */ rlwinm r0, r0, 2, 0x18, 0x1d
/* 8001BD48 00018C88  7C 03 03 D6 */ divw r0, r3, r0
/* 8001BD4C 00018C8C  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 8001BD50 00018C90  2C 05 00 AA */ cmpwi r5, 0xaa
/* 8001BD54 00018C94  41 82 00 38 */ beq lbl_8001BD8C
/* 8001BD58 00018C98  40 80 00 1C */ bge lbl_8001BD74
/* 8001BD5C 00018C9C  2C 05 00 A0 */ cmpwi r5, 0xa0
/* 8001BD60 00018CA0  41 82 00 2C */ beq lbl_8001BD8C
/* 8001BD64 00018CA4  40 80 00 74 */ bge lbl_8001BDD8
/* 8001BD68 00018CA8  2C 05 00 96 */ cmpwi r5, 0x96
/* 8001BD6C 00018CAC  41 82 00 20 */ beq lbl_8001BD8C
/* 8001BD70 00018CB0  48 00 00 68 */ b lbl_8001BDD8
lbl_8001BD74:
/* 8001BD74 00018CB4  2C 05 00 BE */ cmpwi r5, 0xbe
/* 8001BD78 00018CB8  41 82 00 14 */ beq lbl_8001BD8C
/* 8001BD7C 00018CBC  40 80 00 5C */ bge lbl_8001BDD8
/* 8001BD80 00018CC0  2C 05 00 B4 */ cmpwi r5, 0xb4
/* 8001BD84 00018CC4  41 82 00 08 */ beq lbl_8001BD8C
/* 8001BD88 00018CC8  48 00 00 50 */ b lbl_8001BDD8
lbl_8001BD8C:
/* 8001BD8C 00018CCC  28 00 00 50 */ cmplwi r0, 0x50
/* 8001BD90 00018CD0  40 80 00 48 */ bge lbl_8001BDD8
/* 8001BD94 00018CD4  28 00 00 3C */ cmplwi r0, 0x3c
/* 8001BD98 00018CD8  41 80 00 10 */ blt lbl_8001BDA8
/* 8001BD9C 00018CDC  38 05 00 01 */ addi r0, r5, 1
/* 8001BDA0 00018CE0  54 1E 06 3E */ clrlwi r30, r0, 0x18
/* 8001BDA4 00018CE4  48 00 00 34 */ b lbl_8001BDD8
lbl_8001BDA8:
/* 8001BDA8 00018CE8  28 00 00 28 */ cmplwi r0, 0x28
/* 8001BDAC 00018CEC  41 80 00 10 */ blt lbl_8001BDBC
/* 8001BDB0 00018CF0  38 05 00 02 */ addi r0, r5, 2
/* 8001BDB4 00018CF4  54 1E 06 3E */ clrlwi r30, r0, 0x18
/* 8001BDB8 00018CF8  48 00 00 20 */ b lbl_8001BDD8
lbl_8001BDBC:
/* 8001BDBC 00018CFC  28 00 00 14 */ cmplwi r0, 0x14
/* 8001BDC0 00018D00  41 80 00 10 */ blt lbl_8001BDD0
/* 8001BDC4 00018D04  38 05 00 03 */ addi r0, r5, 3
/* 8001BDC8 00018D08  54 1E 06 3E */ clrlwi r30, r0, 0x18
/* 8001BDCC 00018D0C  48 00 00 0C */ b lbl_8001BDD8
lbl_8001BDD0:
/* 8001BDD0 00018D10  38 05 00 04 */ addi r0, r5, 4
/* 8001BDD4 00018D14  54 1E 06 3E */ clrlwi r30, r0, 0x18
lbl_8001BDD8:
/* 8001BDD8 00018D18  C0 22 82 28 */ lfs f1, lbl_80451C28-_SDA2_BASE_(r2)
/* 8001BDDC 00018D1C  48 24 BB 79 */ bl cM_rndF__Ff
/* 8001BDE0 00018D20  FC 00 08 1E */ fctiwz f0, f1
/* 8001BDE4 00018D24  D8 01 00 08 */ stfd f0, 8(r1)
/* 8001BDE8 00018D28  80 61 00 0C */ lwz r3, 0xc(r1)
/* 8001BDEC 00018D2C  57 C0 25 36 */ rlwinm r0, r30, 4, 0x14, 0x1b
/* 8001BDF0 00018D30  7C 1F 02 14 */ add r0, r31, r0
/* 8001BDF4 00018D34  7C 60 1A 14 */ add r3, r0, r3
/* 8001BDF8 00018D38  88 63 00 10 */ lbz r3, 0x10(r3)
lbl_8001BDFC:
/* 8001BDFC 00018D3C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8001BE00 00018D40  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8001BE04 00018D44  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8001BE08 00018D48  7C 08 03 A6 */ mtlr r0
/* 8001BE0C 00018D4C  38 21 00 20 */ addi r1, r1, 0x20
/* 8001BE10 00018D50  4E 80 00 20 */ blr