/* 80267404 00264344  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80267408 00264348  7C 08 02 A6 */ mflr r0
/* 8026740C 0026434C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80267410 00264350  7C 86 23 78 */ mr r6, r4
/* 80267414 00264354  7C A7 2B 78 */ mr r7, r5
/* 80267418 00264358  A8 84 00 00 */ lha r4, 0(r4)
/* 8026741C 0026435C  A8 05 00 00 */ lha r0, 0(r5)
/* 80267420 00264360  7C 04 02 14 */ add r0, r4, r0
/* 80267424 00264364  7C 04 07 34 */ extsh r4, r0
/* 80267428 00264368  A8 A6 00 02 */ lha r5, 2(r6)
/* 8026742C 0026436C  A8 07 00 02 */ lha r0, 2(r7)
/* 80267430 00264370  7C 05 02 14 */ add r0, r5, r0
/* 80267434 00264374  7C 05 07 34 */ extsh r5, r0
/* 80267438 00264378  A8 C6 00 04 */ lha r6, 4(r6)
/* 8026743C 0026437C  A8 07 00 04 */ lha r0, 4(r7)
/* 80267440 00264380  7C 06 02 14 */ add r0, r6, r0
/* 80267444 00264384  7C 06 07 34 */ extsh r6, r0
/* 80267448 00264388  4B FF FF AD */ bl __ct__5csXyzFsss
/* 8026744C 0026438C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80267450 00264390  7C 08 03 A6 */ mtlr r0
/* 80267454 00264394  38 21 00 10 */ addi r1, r1, 0x10
/* 80267458 00264398  4E 80 00 20 */ blr
