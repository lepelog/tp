/* 8001EEE4 0001BE24  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001EEE8 0001BE28  7C 08 02 A6 */ mflr r0
/* 8001EEEC 0001BE2C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001EEF0 0001BE30  80 03 00 40 */ lwz r0, 0x40(r3)
/* 8001EEF4 0001BE34  2C 00 00 01 */ cmpwi r0, 1
/* 8001EEF8 0001BE38  41 82 00 10 */ beq lbl_8001EF08
/* 8001EEFC 0001BE3C  80 63 00 54 */ lwz r3, 0x54(r3)
/* 8001EF00 0001BE40  48 00 24 59 */ bl fpcEx_SearchByID__FUi
/* 8001EF04 0001BE44  48 00 16 91 */ bl fopScnPause_Disable__FP11scene_class
lbl_8001EF08:
/* 8001EF08 0001BE48  38 00 00 00 */ li r0, 0
/* 8001EF0C 0001BE4C  90 0D 87 60 */ stw r0, l_fopScnRq_IsUsingOfOverlap-_SDA_BASE_(r13)
/* 8001EF10 0001BE50  38 60 00 02 */ li r3, 2
/* 8001EF14 0001BE54  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001EF18 0001BE58  7C 08 03 A6 */ mtlr r0
/* 8001EF1C 0001BE5C  38 21 00 10 */ addi r1, r1, 0x10
/* 8001EF20 0001BE60  4E 80 00 20 */ blr
