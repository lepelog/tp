/* 80017FD0 00014F10  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80017FD4 00014F14  7C 08 02 A6 */ mflr r0
/* 80017FD8 00014F18  90 01 00 44 */ stw r0, 0x44(r1)
/* 80017FDC 00014F1C  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80017FE0 00014F20  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80017FE4 00014F24  38 63 00 C5 */ addi r3, r3, 0xc5
/* 80017FE8 00014F28  4B FF FE 21 */ bl print
/* 80017FEC 00014F2C  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80017FF0 00014F30  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80017FF4 00014F34  38 63 00 EE */ addi r3, r3, 0xee
/* 80017FF8 00014F38  4B FF FE 11 */ bl print
/* 80017FFC 00014F3C  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80018000 00014F40  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80018004 00014F44  38 63 00 FE */ addi r3, r3, 0xfe
/* 80018008 00014F48  4B FF FE 01 */ bl print
/* 8001800C 00014F4C  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80018010 00014F50  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80018014 00014F54  38 63 01 13 */ addi r3, r3, 0x113
/* 80018018 00014F58  3C 80 80 3A */ lis r4, lbl_803A2EE0@ha
/* 8001801C 00014F5C  38 84 2E E0 */ addi r4, r4, lbl_803A2EE0@l
/* 80018020 00014F60  4C C6 31 82 */ crclr 6
/* 80018024 00014F64  4B FF FD 59 */ bl print_f__FPCce
/* 80018028 00014F68  80 6D 85 88 */ lwz r3, lbl_80450B08-_SDA_BASE_(r13)
/* 8001802C 00014F6C  80 8D 85 8C */ lwz r4, lbl_80450B0C-_SDA_BASE_(r13)
/* 80018030 00014F70  38 A1 00 10 */ addi r5, r1, 0x10
/* 80018034 00014F74  48 32 A9 41 */ bl OSTicksToCalendarTime
/* 80018038 00014F78  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8001803C 00014F7C  90 01 00 08 */ stw r0, 8(r1)
/* 80018040 00014F80  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80018044 00014F84  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80018048 00014F88  38 63 01 26 */ addi r3, r3, 0x126
/* 8001804C 00014F8C  80 81 00 24 */ lwz r4, 0x24(r1)
/* 80018050 00014F90  80 A1 00 20 */ lwz r5, 0x20(r1)
/* 80018054 00014F94  80 C1 00 1C */ lwz r6, 0x1c(r1)
/* 80018058 00014F98  80 E1 00 18 */ lwz r7, 0x18(r1)
/* 8001805C 00014F9C  81 01 00 14 */ lwz r8, 0x14(r1)
/* 80018060 00014FA0  81 21 00 10 */ lwz r9, 0x10(r1)
/* 80018064 00014FA4  81 41 00 30 */ lwz r10, 0x30(r1)
/* 80018068 00014FA8  4C C6 31 82 */ crclr 6
/* 8001806C 00014FAC  4B FF FD 11 */ bl print_f__FPCce
/* 80018070 00014FB0  80 6D 85 90 */ lwz r3, lbl_80450B10-_SDA_BASE_(r13)
/* 80018074 00014FB4  80 8D 85 94 */ lwz r4, lbl_80450B14-_SDA_BASE_(r13)
/* 80018078 00014FB8  38 A1 00 10 */ addi r5, r1, 0x10
/* 8001807C 00014FBC  48 32 A8 F9 */ bl OSTicksToCalendarTime
/* 80018080 00014FC0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80018084 00014FC4  90 01 00 08 */ stw r0, 8(r1)
/* 80018088 00014FC8  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 8001808C 00014FCC  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 80018090 00014FD0  38 63 01 57 */ addi r3, r3, 0x157
/* 80018094 00014FD4  80 81 00 24 */ lwz r4, 0x24(r1)
/* 80018098 00014FD8  80 A1 00 20 */ lwz r5, 0x20(r1)
/* 8001809C 00014FDC  80 C1 00 1C */ lwz r6, 0x1c(r1)
/* 800180A0 00014FE0  80 E1 00 18 */ lwz r7, 0x18(r1)
/* 800180A4 00014FE4  81 01 00 14 */ lwz r8, 0x14(r1)
/* 800180A8 00014FE8  81 21 00 10 */ lwz r9, 0x10(r1)
/* 800180AC 00014FEC  81 41 00 30 */ lwz r10, 0x30(r1)
/* 800180B0 00014FF0  4C C6 31 82 */ crclr 6
/* 800180B4 00014FF4  4B FF FC C9 */ bl print_f__FPCce
/* 800180B8 00014FF8  80 AD 85 90 */ lwz r5, lbl_80450B10-_SDA_BASE_(r13)
/* 800180BC 00014FFC  80 8D 85 94 */ lwz r4, lbl_80450B14-_SDA_BASE_(r13)
/* 800180C0 00015000  80 0D 85 88 */ lwz r0, lbl_80450B08-_SDA_BASE_(r13)
/* 800180C4 00015004  80 6D 85 8C */ lwz r3, lbl_80450B0C-_SDA_BASE_(r13)
/* 800180C8 00015008  7C 83 20 10 */ subfc r4, r3, r4
/* 800180CC 0001500C  7C 60 29 10 */ subfe r3, r0, r5
/* 800180D0 00015010  38 A1 00 10 */ addi r5, r1, 0x10
/* 800180D4 00015014  48 32 A8 A1 */ bl OSTicksToCalendarTime
/* 800180D8 00015018  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 800180DC 0001501C  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 800180E0 00015020  38 63 01 88 */ addi r3, r3, 0x188
/* 800180E4 00015024  80 81 00 2C */ lwz r4, 0x2c(r1)
/* 800180E8 00015028  80 A1 00 18 */ lwz r5, 0x18(r1)
/* 800180EC 0001502C  80 C1 00 14 */ lwz r6, 0x14(r1)
/* 800180F0 00015030  80 E1 00 10 */ lwz r7, 0x10(r1)
/* 800180F4 00015034  81 01 00 30 */ lwz r8, 0x30(r1)
/* 800180F8 00015038  81 21 00 34 */ lwz r9, 0x34(r1)
/* 800180FC 0001503C  4C C6 31 82 */ crclr 6
/* 80018100 00015040  4B FF FC 7D */ bl print_f__FPCce
/* 80018104 00015044  3C 60 80 37 */ lis r3, lbl_80374460@ha
/* 80018108 00015048  38 63 44 60 */ addi r3, r3, lbl_80374460@l
/* 8001810C 0001504C  38 63 01 B6 */ addi r3, r3, 0x1b6
/* 80018110 00015050  4B FF FC F9 */ bl print
/* 80018114 00015054  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80018118 00015058  7C 08 03 A6 */ mtlr r0
/* 8001811C 0001505C  38 21 00 40 */ addi r1, r1, 0x40
/* 80018120 00015060  4E 80 00 20 */ blr
