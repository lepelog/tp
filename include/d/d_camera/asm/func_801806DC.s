/* 801806DC 0017D61C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801806E0 0017D620  7C 08 02 A6 */ mflr r0
/* 801806E4 0017D624  90 01 00 24 */ stw r0, 0x24(r1)
/* 801806E8 0017D628  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 801806EC 0017D62C  7C 7F 1B 78 */ mr r31, r3
/* 801806F0 0017D630  7C 85 23 78 */ mr r5, r4
/* 801806F4 0017D634  38 9F 01 18 */ addi r4, r31, 0x118
/* 801806F8 0017D638  4B FE 45 6D */ bl pushInfo__9dCamera_cFPQ29dCamera_c10dCamInfo_cs
/* 801806FC 0017D63C  38 61 00 08 */ addi r3, r1, 8
/* 80180700 0017D640  7F E4 FB 78 */ mr r4, r31
/* 80180704 0017D644  80 BF 01 80 */ lwz r5, 0x180(r31)
/* 80180708 0017D648  4B F1 70 55 */ bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8018070C 0017D64C  C0 01 00 08 */ lfs f0, 8(r1)
/* 80180710 0017D650  D0 1F 01 38 */ stfs f0, 0x138(r31)
/* 80180714 0017D654  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80180718 0017D658  D0 1F 01 3C */ stfs f0, 0x13c(r31)
/* 8018071C 0017D65C  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80180720 0017D660  D0 1F 01 40 */ stfs f0, 0x140(r31)
/* 80180724 0017D664  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80180728 0017D668  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8018072C 0017D66C  7C 08 03 A6 */ mtlr r0
/* 80180730 0017D670  38 21 00 20 */ addi r1, r1, 0x20
/* 80180734 0017D674  4E 80 00 20 */ blr
