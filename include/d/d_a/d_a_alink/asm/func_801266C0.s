/* 801266C0 00123600  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801266C4 00123604  7C 08 02 A6 */ mflr r0
/* 801266C8 00123608  90 01 00 14 */ stw r0, 0x14(r1)
/* 801266CC 0012360C  88 03 00 4C */ lbz r0, 0x4c(r3)
/* 801266D0 00123610  28 00 00 00 */ cmplwi r0, 0
/* 801266D4 00123614  41 82 00 28 */ beq lbl_801266FC
/* 801266D8 00123618  C0 23 00 30 */ lfs f1, 0x30(r3)
/* 801266DC 0012361C  C0 03 00 20 */ lfs f0, 0x20(r3)
/* 801266E0 00123620  D0 03 00 84 */ stfs f0, 0x84(r3)
/* 801266E4 00123624  D0 23 00 88 */ stfs f1, 0x88(r3)
/* 801266E8 00123628  85 83 00 50 */ lwzu r12, 0x50(r3)
/* 801266EC 0012362C  81 8C 00 08 */ lwz r12, 8(r12)
/* 801266F0 00123630  7D 89 03 A6 */ mtctr r12
/* 801266F4 00123634  4E 80 04 21 */ bctrl
/* 801266F8 00123638  48 00 00 08 */ b lbl_80126700
lbl_801266FC:
/* 801266FC 0012363C  48 03 8A A5 */ bl draw__18daPy_sightPacket_cFv
lbl_80126700:
/* 80126700 00123640  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80126704 00123644  7C 08 03 A6 */ mtlr r0
/* 80126708 00123648  38 21 00 10 */ addi r1, r1, 0x10
/* 8012670C 0012364C  4E 80 00 20 */ blr
