/* 800C0208 000BD148  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800C020C 000BD14C  7C 08 02 A6 */ mflr r0
/* 800C0210 000BD150  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C0214 000BD154  39 61 00 20 */ addi r11, r1, 0x20
/* 800C0218 000BD158  48 2A 1F C1 */ bl _savegpr_28
/* 800C021C 000BD15C  7C 7C 1B 78 */ mr r28, r3
/* 800C0220 000BD160  7C 9D 23 78 */ mr r29, r4
/* 800C0224 000BD164  3B C0 00 00 */ li r30, 0
/* 800C0228 000BD168  48 00 00 34 */ b lbl_800C025C
lbl_800C022C:
/* 800C022C 000BD16C  57 DF 06 3E */ clrlwi r31, r30, 0x18
/* 800C0230 000BD170  7F E3 FB 78 */ mr r3, r31
/* 800C0234 000BD174  4B F6 DC E9 */ bl dComIfGp_getSelectItem
/* 800C0238 000BD178  54 65 06 3E */ clrlwi r5, r3, 0x18
/* 800C023C 000BD17C  7F 83 E3 78 */ mr r3, r28
/* 800C0240 000BD180  7F A4 EB 78 */ mr r4, r29
/* 800C0244 000BD184  4B FF FE D1 */ bl checkGroupItem__9daAlink_cCFii
/* 800C0248 000BD188  2C 03 00 00 */ cmpwi r3, 0
/* 800C024C 000BD18C  41 82 00 0C */ beq lbl_800C0258
/* 800C0250 000BD190  7F E3 FB 78 */ mr r3, r31
/* 800C0254 000BD194  48 00 00 18 */ b lbl_800C026C
lbl_800C0258:
/* 800C0258 000BD198  3B DE 00 01 */ addi r30, r30, 1
lbl_800C025C:
/* 800C025C 000BD19C  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 800C0260 000BD1A0  28 00 00 02 */ cmplwi r0, 2
/* 800C0264 000BD1A4  41 80 FF C8 */ blt lbl_800C022C
/* 800C0268 000BD1A8  38 60 00 02 */ li r3, 2
lbl_800C026C:
/* 800C026C 000BD1AC  39 61 00 20 */ addi r11, r1, 0x20
/* 800C0270 000BD1B0  48 2A 1F B5 */ bl _restgpr_28
/* 800C0274 000BD1B4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800C0278 000BD1B8  7C 08 03 A6 */ mtlr r0
/* 800C027C 000BD1BC  38 21 00 20 */ addi r1, r1, 0x20
/* 800C0280 000BD1C0  4E 80 00 20 */ blr
