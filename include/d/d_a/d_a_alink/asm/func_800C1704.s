/* 800C1704 000BE644  94 21 FF 40 */ stwu r1, -0xc0(r1)
/* 800C1708 000BE648  7C 08 02 A6 */ mflr r0
/* 800C170C 000BE64C  90 01 00 C4 */ stw r0, 0xc4(r1)
/* 800C1710 000BE650  DB E1 00 B0 */ stfd f31, 0xb0(r1)
/* 800C1714 000BE654  F3 E1 00 B8 */ psq_st f31, 184(r1), 0, 0
/* 800C1718 000BE658  39 61 00 B0 */ addi r11, r1, 0xb0
/* 800C171C 000BE65C  48 2A 0A B5 */ bl _savegpr_26
/* 800C1720 000BE660  7C 7C 1B 78 */ mr r28, r3
/* 800C1724 000BE664  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800C1728 000BE668  3B E4 D6 58 */ addi r31, r4, lbl_8038D658@l
/* 800C172C 000BE66C  3B DF 11 08 */ addi r30, r31, 0x1108
/* 800C1730 000BE670  3B A0 00 00 */ li r29, 0
/* 800C1734 000BE674  80 C3 05 74 */ lwz r6, 0x574(r3)
/* 800C1738 000BE678  54 C0 01 8D */ rlwinm. r0, r6, 0, 6, 6
/* 800C173C 000BE67C  41 82 00 14 */ beq lbl_800C1750
/* 800C1740 000BE680  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C1744 000BE684  54 00 06 6E */ rlwinm r0, r0, 0, 0x19, 0x17
/* 800C1748 000BE688  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800C174C 000BE68C  48 00 02 94 */ b lbl_800C19E0
lbl_800C1750:
/* 800C1750 000BE690  80 9C 05 78 */ lwz r4, 0x578(r28)
/* 800C1754 000BE694  54 85 07 FF */ clrlwi. r5, r4, 0x1f
/* 800C1758 000BE698  40 82 00 10 */ bne lbl_800C1768
/* 800C175C 000BE69C  80 1C 05 8C */ lwz r0, 0x58c(r28)
/* 800C1760 000BE6A0  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C1764 000BE6A4  41 82 02 40 */ beq lbl_800C19A4
lbl_800C1768:
/* 800C1768 000BE6A8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C176C 000BE6AC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C1770 000BE6B0  A0 03 00 08 */ lhz r0, 8(r3)
/* 800C1774 000BE6B4  28 00 00 00 */ cmplwi r0, 0
/* 800C1778 000BE6B8  41 82 01 50 */ beq lbl_800C18C8
/* 800C177C 000BE6BC  54 80 00 C7 */ rlwinm. r0, r4, 0, 3, 3
/* 800C1780 000BE6C0  40 82 01 48 */ bne lbl_800C18C8
/* 800C1784 000BE6C4  28 05 00 00 */ cmplwi r5, 0
/* 800C1788 000BE6C8  41 82 00 0C */ beq lbl_800C1794
/* 800C178C 000BE6CC  54 C0 00 43 */ rlwinm. r0, r6, 0, 1, 1
/* 800C1790 000BE6D0  41 82 00 10 */ beq lbl_800C17A0
lbl_800C1794:
/* 800C1794 000BE6D4  80 1C 05 8C */ lwz r0, 0x58c(r28)
/* 800C1798 000BE6D8  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C179C 000BE6DC  41 82 01 2C */ beq lbl_800C18C8
lbl_800C17A0:
/* 800C17A0 000BE6E0  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C17A4 000BE6E4  60 00 00 80 */ ori r0, r0, 0x80
/* 800C17A8 000BE6E8  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800C17AC 000BE6EC  7F 83 E3 78 */ mr r3, r28
/* 800C17B0 000BE6F0  48 05 44 71 */ bl checkEventRun__9daAlink_cCFv
/* 800C17B4 000BE6F4  2C 03 00 00 */ cmpwi r3, 0
/* 800C17B8 000BE6F8  40 82 00 30 */ bne lbl_800C17E8
/* 800C17BC 000BE6FC  80 1C 05 8C */ lwz r0, 0x58c(r28)
/* 800C17C0 000BE700  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C17C4 000BE704  40 82 00 24 */ bne lbl_800C17E8
/* 800C17C8 000BE708  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C17CC 000BE70C  38 A3 61 C0 */ addi r5, r3, g_dComIfG_gameInfo@l
/* 800C17D0 000BE710  80 85 5D D4 */ lwz r4, 0x5dd4(r5)
/* 800C17D4 000BE714  38 7F 11 24 */ addi r3, r31, 0x1124
/* 800C17D8 000BE718  A8 03 00 48 */ lha r0, 0x48(r3)
/* 800C17DC 000BE71C  7C 00 00 D0 */ neg r0, r0
/* 800C17E0 000BE720  7C 04 02 14 */ add r0, r4, r0
/* 800C17E4 000BE724  90 05 5D D4 */ stw r0, 0x5dd4(r5)
lbl_800C17E8:
/* 800C17E8 000BE728  A0 1C 2F E8 */ lhz r0, 0x2fe8(r28)
/* 800C17EC 000BE72C  28 00 00 B7 */ cmplwi r0, 0xb7
/* 800C17F0 000BE730  40 82 00 48 */ bne lbl_800C1838
/* 800C17F4 000BE734  3B 60 03 62 */ li r27, 0x362
/* 800C17F8 000BE738  3B 5C 2F 20 */ addi r26, r28, 0x2f20
/* 800C17FC 000BE73C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C1800 000BE740  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C1804 000BE744  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800C1808 000BE748  38 63 02 10 */ addi r3, r3, 0x210
/* 800C180C 000BE74C  80 9C 31 C4 */ lwz r4, 0x31c4(r28)
/* 800C1810 000BE750  4B F8 A1 09 */ bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800C1814 000BE754  28 03 00 00 */ cmplwi r3, 0
/* 800C1818 000BE758  41 82 00 28 */ beq lbl_800C1840
/* 800C181C 000BE75C  80 03 00 EC */ lwz r0, 0xec(r3)
/* 800C1820 000BE760  28 00 00 00 */ cmplwi r0, 0
/* 800C1824 000BE764  40 82 00 1C */ bne lbl_800C1840
/* 800C1828 000BE768  80 03 00 F4 */ lwz r0, 0xf4(r3)
/* 800C182C 000BE76C  60 00 00 04 */ ori r0, r0, 4
/* 800C1830 000BE770  90 03 00 F4 */ stw r0, 0xf4(r3)
/* 800C1834 000BE774  48 00 00 0C */ b lbl_800C1840
lbl_800C1838:
/* 800C1838 000BE778  3B 60 02 BC */ li r27, 0x2bc
/* 800C183C 000BE77C  3B 40 00 00 */ li r26, 0
lbl_800C1840:
/* 800C1840 000BE780  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C1844 000BE784  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C1848 000BE788  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800C184C 000BE78C  38 00 00 FF */ li r0, 0xff
/* 800C1850 000BE790  90 01 00 08 */ stw r0, 8(r1)
/* 800C1854 000BE794  93 41 00 0C */ stw r26, 0xc(r1)
/* 800C1858 000BE798  38 00 FF FF */ li r0, -1
/* 800C185C 000BE79C  90 01 00 10 */ stw r0, 0x10(r1)
/* 800C1860 000BE7A0  38 00 00 00 */ li r0, 0
/* 800C1864 000BE7A4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C1868 000BE7A8  90 01 00 18 */ stw r0, 0x18(r1)
/* 800C186C 000BE7AC  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800C1870 000BE7B0  80 9C 31 C4 */ lwz r4, 0x31c4(r28)
/* 800C1874 000BE7B4  38 A0 00 00 */ li r5, 0
/* 800C1878 000BE7B8  7F 66 DB 78 */ mr r6, r27
/* 800C187C 000BE7BC  38 FC 36 0C */ addi r7, r28, 0x360c
/* 800C1880 000BE7C0  39 1C 01 0C */ addi r8, r28, 0x10c
/* 800C1884 000BE7C4  39 3C 04 E4 */ addi r9, r28, 0x4e4
/* 800C1888 000BE7C8  39 40 00 00 */ li r10, 0
/* 800C188C 000BE7CC  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C1890 000BE7D0  4B F8 BC 3D */ bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800C1894 000BE7D4  90 7C 31 C4 */ stw r3, 0x31c4(r28)
/* 800C1898 000BE7D8  3C 60 00 02 */ lis r3, 0x00020058@ha
/* 800C189C 000BE7DC  38 03 00 58 */ addi r0, r3, 0x00020058@l
/* 800C18A0 000BE7E0  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C18A4 000BE7E4  38 7C 2D 3C */ addi r3, r28, 0x2d3c
/* 800C18A8 000BE7E8  38 81 00 24 */ addi r4, r1, 0x24
/* 800C18AC 000BE7EC  38 A0 00 00 */ li r5, 0
/* 800C18B0 000BE7F0  88 DC 2F 9A */ lbz r6, 0x2f9a(r28)
/* 800C18B4 000BE7F4  81 9C 2D 4C */ lwz r12, 0x2d4c(r28)
/* 800C18B8 000BE7F8  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 800C18BC 000BE7FC  7D 89 03 A6 */ mtctr r12
/* 800C18C0 000BE800  4E 80 04 21 */ bctrl
/* 800C18C4 000BE804  48 00 00 50 */ b lbl_800C1914
lbl_800C18C8:
/* 800C18C8 000BE808  54 C0 06 31 */ rlwinm. r0, r6, 0, 0x18, 0x18
/* 800C18CC 000BE80C  41 82 00 48 */ beq lbl_800C1914
/* 800C18D0 000BE810  3C 60 00 02 */ lis r3, 0x0002005A@ha
/* 800C18D4 000BE814  38 03 00 5A */ addi r0, r3, 0x0002005A@l
/* 800C18D8 000BE818  90 01 00 20 */ stw r0, 0x20(r1)
/* 800C18DC 000BE81C  38 7C 2D 3C */ addi r3, r28, 0x2d3c
/* 800C18E0 000BE820  38 81 00 20 */ addi r4, r1, 0x20
/* 800C18E4 000BE824  38 A0 00 00 */ li r5, 0
/* 800C18E8 000BE828  88 DC 2F 9A */ lbz r6, 0x2f9a(r28)
/* 800C18EC 000BE82C  81 9C 2D 4C */ lwz r12, 0x2d4c(r28)
/* 800C18F0 000BE830  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 800C18F4 000BE834  7D 89 03 A6 */ mtctr r12
/* 800C18F8 000BE838  4E 80 04 21 */ bctrl
/* 800C18FC 000BE83C  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C1900 000BE840  54 00 06 6E */ rlwinm r0, r0, 0, 0x19, 0x17
/* 800C1904 000BE844  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800C1908 000BE848  7F 83 E3 78 */ mr r3, r28
/* 800C190C 000BE84C  80 9C 31 C4 */ lwz r4, 0x31c4(r28)
/* 800C1910 000BE850  48 05 EE 69 */ bl stopDrawParticle__9daAlink_cFUl
lbl_800C1914:
/* 800C1914 000BE854  C0 5C 34 4C */ lfs f2, 0x344c(r28)
/* 800C1918 000BE858  80 1C 32 C8 */ lwz r0, 0x32c8(r28)
/* 800C191C 000BE85C  C8 22 96 08 */ lfd f1, lbl_80453008-_SDA2_BASE_(r2)
/* 800C1920 000BE860  90 01 00 84 */ stw r0, 0x84(r1)
/* 800C1924 000BE864  3C 00 43 30 */ lis r0, 0x4330
/* 800C1928 000BE868  90 01 00 80 */ stw r0, 0x80(r1)
/* 800C192C 000BE86C  C8 01 00 80 */ lfd f0, 0x80(r1)
/* 800C1930 000BE870  EC 00 08 28 */ fsubs f0, f0, f1
/* 800C1934 000BE874  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800C1938 000BE878  41 81 00 10 */ bgt lbl_800C1948
/* 800C193C 000BE87C  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C1940 000BE880  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 800C1944 000BE884  40 82 00 0C */ bne lbl_800C1950
lbl_800C1948:
/* 800C1948 000BE888  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C194C 000BE88C  48 00 00 08 */ b lbl_800C1954
lbl_800C1950:
/* 800C1950 000BE890  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_800C1954:
/* 800C1954 000BE894  38 7C 34 48 */ addi r3, r28, 0x3448
/* 800C1958 000BE898  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C195C 000BE89C  C0 62 94 A8 */ lfs f3, lbl_80452EA8-_SDA2_BASE_(r2)
/* 800C1960 000BE8A0  C0 82 93 A0 */ lfs f4, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800C1964 000BE8A4  48 1A E0 19 */ bl cLib_addCalc__FPfffff
/* 800C1968 000BE8A8  80 7F 4A 00 */ lwz r3, 0x4a00(r31)
/* 800C196C 000BE8AC  80 1F 4A 04 */ lwz r0, 0x4a04(r31)
/* 800C1970 000BE8B0  90 61 00 74 */ stw r3, 0x74(r1)
/* 800C1974 000BE8B4  90 01 00 78 */ stw r0, 0x78(r1)
/* 800C1978 000BE8B8  80 1F 4A 08 */ lwz r0, 0x4a08(r31)
/* 800C197C 000BE8BC  90 01 00 7C */ stw r0, 0x7c(r1)
/* 800C1980 000BE8C0  C0 1C 34 48 */ lfs f0, 0x3448(r28)
/* 800C1984 000BE8C4  D0 01 00 74 */ stfs f0, 0x74(r1)
/* 800C1988 000BE8C8  D0 01 00 78 */ stfs f0, 0x78(r1)
/* 800C198C 000BE8CC  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 800C1990 000BE8D0  80 7C 07 00 */ lwz r3, 0x700(r28)
/* 800C1994 000BE8D4  D0 03 00 18 */ stfs f0, 0x18(r3)
/* 800C1998 000BE8D8  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 800C199C 000BE8DC  D0 03 00 20 */ stfs f0, 0x20(r3)
/* 800C19A0 000BE8E0  48 00 00 18 */ b lbl_800C19B8
lbl_800C19A4:
/* 800C19A4 000BE8E4  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C19A8 000BE8E8  54 00 06 6E */ rlwinm r0, r0, 0, 0x19, 0x17
/* 800C19AC 000BE8EC  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800C19B0 000BE8F0  80 9C 31 C4 */ lwz r4, 0x31c4(r28)
/* 800C19B4 000BE8F4  48 05 ED C5 */ bl stopDrawParticle__9daAlink_cFUl
lbl_800C19B8:
/* 800C19B8 000BE8F8  A0 1C 2F DC */ lhz r0, 0x2fdc(r28)
/* 800C19BC 000BE8FC  28 00 01 03 */ cmplwi r0, 0x103
/* 800C19C0 000BE900  40 82 00 20 */ bne lbl_800C19E0
/* 800C19C4 000BE904  80 1C 05 7C */ lwz r0, 0x57c(r28)
/* 800C19C8 000BE908  54 00 02 D7 */ rlwinm. r0, r0, 0, 0xb, 0xb
/* 800C19CC 000BE90C  41 82 00 14 */ beq lbl_800C19E0
/* 800C19D0 000BE910  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C19D4 000BE914  60 00 00 80 */ ori r0, r0, 0x80
/* 800C19D8 000BE918  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800C19DC 000BE91C  3B A0 00 01 */ li r29, 1
lbl_800C19E0:
/* 800C19E0 000BE920  2C 1D 00 00 */ cmpwi r29, 0
/* 800C19E4 000BE924  41 82 00 20 */ beq lbl_800C1A04
/* 800C19E8 000BE928  88 1C 05 68 */ lbz r0, 0x568(r28)
/* 800C19EC 000BE92C  28 00 00 00 */ cmplwi r0, 0
/* 800C19F0 000BE930  40 82 00 0C */ bne lbl_800C19FC
/* 800C19F4 000BE934  C0 22 93 FC */ lfs f1, lbl_80452DFC-_SDA2_BASE_(r2)
/* 800C19F8 000BE938  48 00 00 24 */ b lbl_800C1A1C
lbl_800C19FC:
/* 800C19FC 000BE93C  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800C1A00 000BE940  48 00 00 1C */ b lbl_800C1A1C
lbl_800C1A04:
/* 800C1A04 000BE944  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800C1A08 000BE948  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 800C1A0C 000BE94C  41 82 00 0C */ beq lbl_800C1A18
/* 800C1A10 000BE950  C0 3E 00 0C */ lfs f1, 0xc(r30)
/* 800C1A14 000BE954  48 00 00 08 */ b lbl_800C1A1C
lbl_800C1A18:
/* 800C1A18 000BE958  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800C1A1C:
/* 800C1A1C 000BE95C  C3 E2 92 B8 */ lfs f31, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C1A20 000BE960  A0 1C 2F E8 */ lhz r0, 0x2fe8(r28)
/* 800C1A24 000BE964  28 00 01 4D */ cmplwi r0, 0x14d
/* 800C1A28 000BE968  40 82 00 18 */ bne lbl_800C1A40
/* 800C1A2C 000BE96C  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800C1A30 000BE970  2C 00 00 00 */ cmpwi r0, 0
/* 800C1A34 000BE974  41 82 00 0C */ beq lbl_800C1A40
/* 800C1A38 000BE978  C0 42 92 A4 */ lfs f2, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800C1A3C 000BE97C  48 00 00 24 */ b lbl_800C1A60
lbl_800C1A40:
/* 800C1A40 000BE980  80 1C 05 90 */ lwz r0, 0x590(r28)
/* 800C1A44 000BE984  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C1A48 000BE988  41 82 00 14 */ beq lbl_800C1A5C
/* 800C1A4C 000BE98C  C3 E2 98 CC */ lfs f31, lbl_804532CC-_SDA2_BASE_(r2)
/* 800C1A50 000BE990  C0 42 93 88 */ lfs f2, lbl_80452D88-_SDA2_BASE_(r2)
/* 800C1A54 000BE994  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800C1A58 000BE998  48 00 00 08 */ b lbl_800C1A60
lbl_800C1A5C:
/* 800C1A5C 000BE99C  C0 42 93 F8 */ lfs f2, lbl_80452DF8-_SDA2_BASE_(r2)
lbl_800C1A60:
/* 800C1A60 000BE9A0  38 7C 33 FC */ addi r3, r28, 0x33fc
/* 800C1A64 000BE9A4  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800C1A68 000BE9A8  EC 40 00 B2 */ fmuls f2, f0, f2
/* 800C1A6C 000BE9AC  48 1A EC D5 */ bl cLib_chaseF__FPfff
/* 800C1A70 000BE9B0  C0 3C 33 FC */ lfs f1, 0x33fc(r28)
/* 800C1A74 000BE9B4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C1A78 000BE9B8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C1A7C 000BE9BC  40 81 02 50 */ ble lbl_800C1CCC
/* 800C1A80 000BE9C0  80 02 98 C8 */ lwz r0, lbl_804532C8-_SDA2_BASE_(r2)
/* 800C1A84 000BE9C4  90 01 00 28 */ stw r0, 0x28(r1)
/* 800C1A88 000BE9C8  A8 1E 00 04 */ lha r0, 4(r30)
/* 800C1A8C 000BE9CC  98 01 00 28 */ stb r0, 0x28(r1)
/* 800C1A90 000BE9D0  A8 1E 00 06 */ lha r0, 6(r30)
/* 800C1A94 000BE9D4  98 01 00 29 */ stb r0, 0x29(r1)
/* 800C1A98 000BE9D8  A8 1E 00 08 */ lha r0, 8(r30)
/* 800C1A9C 000BE9DC  98 01 00 2A */ stb r0, 0x2a(r1)
/* 800C1AA0 000BE9E0  80 7F 4A 0C */ lwz r3, 0x4a0c(r31)
/* 800C1AA4 000BE9E4  80 1F 4A 10 */ lwz r0, 0x4a10(r31)
/* 800C1AA8 000BE9E8  90 61 00 5C */ stw r3, 0x5c(r1)
/* 800C1AAC 000BE9EC  90 01 00 60 */ stw r0, 0x60(r1)
/* 800C1AB0 000BE9F0  80 1F 4A 14 */ lwz r0, 0x4a14(r31)
/* 800C1AB4 000BE9F4  90 01 00 64 */ stw r0, 0x64(r1)
/* 800C1AB8 000BE9F8  C0 1E 00 14 */ lfs f0, 0x14(r30)
/* 800C1ABC 000BE9FC  D0 01 00 60 */ stfs f0, 0x60(r1)
/* 800C1AC0 000BEA00  C0 1E 00 18 */ lfs f0, 0x18(r30)
/* 800C1AC4 000BEA04  D0 01 00 64 */ stfs f0, 0x64(r1)
/* 800C1AC8 000BEA08  38 1F 1B 2C */ addi r0, r31, 0x1b2c
/* 800C1ACC 000BEA0C  7C 1E 00 40 */ cmplw r30, r0
/* 800C1AD0 000BEA10  40 82 00 D8 */ bne lbl_800C1BA8
/* 800C1AD4 000BEA14  38 61 00 44 */ addi r3, r1, 0x44
/* 800C1AD8 000BEA18  38 9C 05 38 */ addi r4, r28, 0x538
/* 800C1ADC 000BEA1C  38 BC 34 E0 */ addi r5, r28, 0x34e0
/* 800C1AE0 000BEA20  48 1A 50 55 */ bl __mi__4cXyzCFRC3Vec
/* 800C1AE4 000BEA24  C0 01 00 44 */ lfs f0, 0x44(r1)
/* 800C1AE8 000BEA28  D0 01 00 50 */ stfs f0, 0x50(r1)
/* 800C1AEC 000BEA2C  C0 01 00 48 */ lfs f0, 0x48(r1)
/* 800C1AF0 000BEA30  D0 01 00 54 */ stfs f0, 0x54(r1)
/* 800C1AF4 000BEA34  C0 01 00 4C */ lfs f0, 0x4c(r1)
/* 800C1AF8 000BEA38  D0 01 00 58 */ stfs f0, 0x58(r1)
/* 800C1AFC 000BEA3C  38 61 00 50 */ addi r3, r1, 0x50
/* 800C1B00 000BEA40  48 1A 56 51 */ bl atan2sY_XZ__4cXyzCFv
/* 800C1B04 000BEA44  7C 7A 1B 78 */ mr r26, r3
/* 800C1B08 000BEA48  38 61 00 50 */ addi r3, r1, 0x50
/* 800C1B0C 000BEA4C  48 1A 56 1D */ bl atan2sX_Z__4cXyzCFv
/* 800C1B10 000BEA50  7C 7B 1B 78 */ mr r27, r3
/* 800C1B14 000BEA54  38 7C 05 38 */ addi r3, r28, 0x538
/* 800C1B18 000BEA58  4B F4 B2 4D */ bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800C1B1C 000BEA5C  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800C1B20 000BEA60  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800C1B24 000BEA64  7F 44 D3 78 */ mr r4, r26
/* 800C1B28 000BEA68  7F 65 DB 78 */ mr r5, r27
/* 800C1B2C 000BEA6C  38 C0 00 00 */ li r6, 0
/* 800C1B30 000BEA70  4B F4 A7 71 */ bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800C1B34 000BEA74  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800C1B38 000BEA78  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800C1B3C 000BEA7C  38 81 00 5C */ addi r4, r1, 0x5c
/* 800C1B40 000BEA80  38 A1 00 68 */ addi r5, r1, 0x68
/* 800C1B44 000BEA84  48 28 52 29 */ bl PSMTXMultVec
/* 800C1B48 000BEA88  C0 42 98 38 */ lfs f2, lbl_80453238-_SDA2_BASE_(r2)
/* 800C1B4C 000BEA8C  A8 1C 05 9C */ lha r0, 0x59c(r28)
/* 800C1B50 000BEA90  7C 1A 02 14 */ add r0, r26, r0
/* 800C1B54 000BEA94  7C 00 00 D0 */ neg r0, r0
/* 800C1B58 000BEA98  7C 00 07 34 */ extsh r0, r0
/* 800C1B5C 000BEA9C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800C1B60 000BEAA0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800C1B64 000BEAA4  90 01 00 84 */ stw r0, 0x84(r1)
/* 800C1B68 000BEAA8  3C 60 43 30 */ lis r3, 0x4330
/* 800C1B6C 000BEAAC  90 61 00 80 */ stw r3, 0x80(r1)
/* 800C1B70 000BEAB0  C8 01 00 80 */ lfd f0, 0x80(r1)
/* 800C1B74 000BEAB4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800C1B78 000BEAB8  EC 62 00 32 */ fmuls f3, f2, f0
/* 800C1B7C 000BEABC  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C1B80 000BEAC0  EC 60 00 F2 */ fmuls f3, f0, f3
/* 800C1B84 000BEAC4  7F 60 07 34 */ extsh r0, r27
/* 800C1B88 000BEAC8  7C 00 00 D0 */ neg r0, r0
/* 800C1B8C 000BEACC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800C1B90 000BEAD0  90 01 00 8C */ stw r0, 0x8c(r1)
/* 800C1B94 000BEAD4  90 61 00 88 */ stw r3, 0x88(r1)
/* 800C1B98 000BEAD8  C8 01 00 88 */ lfd f0, 0x88(r1)
/* 800C1B9C 000BEADC  EC 00 08 28 */ fsubs f0, f0, f1
/* 800C1BA0 000BEAE0  EC 42 00 32 */ fmuls f2, f2, f0
/* 800C1BA4 000BEAE4  48 00 00 DC */ b lbl_800C1C80
lbl_800C1BA8:
/* 800C1BA8 000BEAE8  2C 1D 00 00 */ cmpwi r29, 0
/* 800C1BAC 000BEAEC  41 82 00 88 */ beq lbl_800C1C34
/* 800C1BB0 000BEAF0  38 61 00 38 */ addi r3, r1, 0x38
/* 800C1BB4 000BEAF4  38 9C 05 BC */ addi r4, r28, 0x5bc
/* 800C1BB8 000BEAF8  38 BC 34 98 */ addi r5, r28, 0x3498
/* 800C1BBC 000BEAFC  48 1A 4F 29 */ bl __pl__4cXyzCFRC3Vec
/* 800C1BC0 000BEB00  38 61 00 2C */ addi r3, r1, 0x2c
/* 800C1BC4 000BEB04  38 81 00 38 */ addi r4, r1, 0x38
/* 800C1BC8 000BEB08  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C1BCC 000BEB0C  48 1A 4F B9 */ bl __ml__4cXyzCFf
/* 800C1BD0 000BEB10  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800C1BD4 000BEB14  D0 01 00 68 */ stfs f0, 0x68(r1)
/* 800C1BD8 000BEB18  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 800C1BDC 000BEB1C  D0 01 00 6C */ stfs f0, 0x6c(r1)
/* 800C1BE0 000BEB20  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800C1BE4 000BEB24  D0 01 00 70 */ stfs f0, 0x70(r1)
/* 800C1BE8 000BEB28  C0 02 93 E0 */ lfs f0, lbl_80452DE0-_SDA2_BASE_(r2)
/* 800C1BEC 000BEB2C  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800C1BF0 000BEB30  FC 00 00 1E */ fctiwz f0, f0
/* 800C1BF4 000BEB34  D8 01 00 88 */ stfd f0, 0x88(r1)
/* 800C1BF8 000BEB38  80 01 00 8C */ lwz r0, 0x8c(r1)
/* 800C1BFC 000BEB3C  98 01 00 28 */ stb r0, 0x28(r1)
/* 800C1C00 000BEB40  C0 02 98 D0 */ lfs f0, lbl_804532D0-_SDA2_BASE_(r2)
/* 800C1C04 000BEB44  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800C1C08 000BEB48  FC 00 00 1E */ fctiwz f0, f0
/* 800C1C0C 000BEB4C  D8 01 00 80 */ stfd f0, 0x80(r1)
/* 800C1C10 000BEB50  80 01 00 84 */ lwz r0, 0x84(r1)
/* 800C1C14 000BEB54  98 01 00 29 */ stb r0, 0x29(r1)
/* 800C1C18 000BEB58  C0 02 98 D4 */ lfs f0, lbl_804532D4-_SDA2_BASE_(r2)
/* 800C1C1C 000BEB5C  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800C1C20 000BEB60  FC 00 00 1E */ fctiwz f0, f0
/* 800C1C24 000BEB64  D8 01 00 90 */ stfd f0, 0x90(r1)
/* 800C1C28 000BEB68  80 01 00 94 */ lwz r0, 0x94(r1)
/* 800C1C2C 000BEB6C  98 01 00 2A */ stb r0, 0x2a(r1)
/* 800C1C30 000BEB70  48 00 00 1C */ b lbl_800C1C4C
lbl_800C1C34:
/* 800C1C34 000BEB74  C0 1C 36 0C */ lfs f0, 0x360c(r28)
/* 800C1C38 000BEB78  D0 01 00 68 */ stfs f0, 0x68(r1)
/* 800C1C3C 000BEB7C  C0 1C 36 10 */ lfs f0, 0x3610(r28)
/* 800C1C40 000BEB80  D0 01 00 6C */ stfs f0, 0x6c(r1)
/* 800C1C44 000BEB84  C0 1C 36 14 */ lfs f0, 0x3614(r28)
/* 800C1C48 000BEB88  D0 01 00 70 */ stfs f0, 0x70(r1)
lbl_800C1C4C:
/* 800C1C4C 000BEB8C  C0 62 92 C0 */ lfs f3, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C1C50 000BEB90  C0 42 98 38 */ lfs f2, lbl_80453238-_SDA2_BASE_(r2)
/* 800C1C54 000BEB94  A8 1C 04 E6 */ lha r0, 0x4e6(r28)
/* 800C1C58 000BEB98  7C 00 00 D0 */ neg r0, r0
/* 800C1C5C 000BEB9C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800C1C60 000BEBA0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800C1C64 000BEBA4  90 01 00 94 */ stw r0, 0x94(r1)
/* 800C1C68 000BEBA8  3C 00 43 30 */ lis r0, 0x4330
/* 800C1C6C 000BEBAC  90 01 00 90 */ stw r0, 0x90(r1)
/* 800C1C70 000BEBB0  C8 01 00 90 */ lfd f0, 0x90(r1)
/* 800C1C74 000BEBB4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800C1C78 000BEBB8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800C1C7C 000BEBBC  FC 40 00 90 */ fmr f2, f0
lbl_800C1C80:
/* 800C1C80 000BEBC0  C0 9C 33 FC */ lfs f4, 0x33fc(r28)
/* 800C1C84 000BEBC4  38 61 00 68 */ addi r3, r1, 0x68
/* 800C1C88 000BEBC8  A8 1E 00 0A */ lha r0, 0xa(r30)
/* 800C1C8C 000BEBCC  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800C1C90 000BEBD0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800C1C94 000BEBD4  90 01 00 94 */ stw r0, 0x94(r1)
/* 800C1C98 000BEBD8  3C 00 43 30 */ lis r0, 0x4330
/* 800C1C9C 000BEBDC  90 01 00 90 */ stw r0, 0x90(r1)
/* 800C1CA0 000BEBE0  C8 01 00 90 */ lfd f0, 0x90(r1)
/* 800C1CA4 000BEBE4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800C1CA8 000BEBE8  EC 23 00 2A */ fadds f1, f3, f0
/* 800C1CAC 000BEBEC  C0 1E 00 10 */ lfs f0, 0x10(r30)
/* 800C1CB0 000BEBF0  EC 60 01 32 */ fmuls f3, f0, f4
/* 800C1CB4 000BEBF4  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800C1CB8 000BEBF8  EC 63 00 24 */ fdivs f3, f3, f0
/* 800C1CBC 000BEBFC  38 81 00 28 */ addi r4, r1, 0x28
/* 800C1CC0 000BEC00  88 BE 00 00 */ lbz r5, 0(r30)
/* 800C1CC4 000BEC04  88 DE 00 01 */ lbz r6, 1(r30)
/* 800C1CC8 000BEC08  48 0E 8F 95 */ bl dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc
lbl_800C1CCC:
/* 800C1CCC 000BEC0C  E3 E1 00 B8 */ psq_l f31, 184(r1), 0, 0
/* 800C1CD0 000BEC10  CB E1 00 B0 */ lfd f31, 0xb0(r1)
/* 800C1CD4 000BEC14  39 61 00 B0 */ addi r11, r1, 0xb0
/* 800C1CD8 000BEC18  48 2A 05 45 */ bl _restgpr_26
/* 800C1CDC 000BEC1C  80 01 00 C4 */ lwz r0, 0xc4(r1)
/* 800C1CE0 000BEC20  7C 08 03 A6 */ mtlr r0
/* 800C1CE4 000BEC24  38 21 00 C0 */ addi r1, r1, 0xc0
/* 800C1CE8 000BEC28  4E 80 00 20 */ blr
