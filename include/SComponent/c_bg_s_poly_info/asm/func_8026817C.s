/* 8026817C 002650BC  80 03 00 04 */ lwz r0, 4(r3)
/* 80268180 002650C0  7C 00 20 40 */ cmplw r0, r4
/* 80268184 002650C4  40 82 00 18 */ bne lbl_8026819C
/* 80268188 002650C8  80 03 00 08 */ lwz r0, 8(r3)
/* 8026818C 002650CC  7C 00 28 40 */ cmplw r0, r5
/* 80268190 002650D0  40 82 00 0C */ bne lbl_8026819C
/* 80268194 002650D4  38 60 00 01 */ li r3, 1
/* 80268198 002650D8  4E 80 00 20 */ blr
lbl_8026819C:
/* 8026819C 002650DC  38 60 00 00 */ li r3, 0
/* 802681A0 002650E0  4E 80 00 20 */ blr
