/* 802C168C 002BE5CC  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802C1690 002BE5D0  7C 08 02 A6 */ mflr r0
/* 802C1694 002BE5D4  90 01 00 44 */ stw r0, 0x44(r1)
/* 802C1698 002BE5D8  39 61 00 40 */ addi r11, r1, 0x40
/* 802C169C 002BE5DC  48 0A 0B 41 */ bl _savegpr_29
/* 802C16A0 002BE5E0  7C 7E 1B 78 */ mr r30, r3
/* 802C16A4 002BE5E4  7C 9F 23 78 */ mr r31, r4
/* 802C16A8 002BE5E8  7C A6 2B 78 */ mr r6, r5
/* 802C16AC 002BE5EC  80 8D 86 04 */ lwz r4, lbl_80450B84-_SDA_BASE_(r13)
/* 802C16B0 002BE5F0  80 64 00 00 */ lwz r3, 0(r4)
/* 802C16B4 002BE5F4  28 03 00 00 */ cmplwi r3, 0
/* 802C16B8 002BE5F8  41 82 00 10 */ beq lbl_802C16C8
/* 802C16BC 002BE5FC  80 63 00 18 */ lwz r3, 0x18(r3)
/* 802C16C0 002BE600  90 61 00 08 */ stw r3, 8(r1)
/* 802C16C4 002BE604  48 00 00 08 */ b lbl_802C16CC
lbl_802C16C8:
/* 802C16C8 002BE608  38 60 FF FF */ li r3, -1
lbl_802C16CC:
/* 802C16CC 002BE60C  3C 03 FF 00 */ addis r0, r3, 0xff00
/* 802C16D0 002BE610  28 00 00 62 */ cmplwi r0, 0x62
/* 802C16D4 002BE614  40 82 01 6C */ bne lbl_802C1840
/* 802C16D8 002BE618  88 04 00 BC */ lbz r0, 0xbc(r4)
/* 802C16DC 002BE61C  2C 00 00 06 */ cmpwi r0, 6
/* 802C16E0 002BE620  40 80 00 1C */ bge lbl_802C16FC
/* 802C16E4 002BE624  2C 00 00 02 */ cmpwi r0, 2
/* 802C16E8 002BE628  40 80 00 08 */ bge lbl_802C16F0
/* 802C16EC 002BE62C  48 00 01 54 */ b lbl_802C1840
lbl_802C16F0:
/* 802C16F0 002BE630  2C 00 00 04 */ cmpwi r0, 4
/* 802C16F4 002BE634  40 80 00 70 */ bge lbl_802C1764
/* 802C16F8 002BE638  48 00 00 24 */ b lbl_802C171C
lbl_802C16FC:
/* 802C16FC 002BE63C  2C 00 00 0A */ cmpwi r0, 0xa
/* 802C1700 002BE640  40 80 00 10 */ bge lbl_802C1710
/* 802C1704 002BE644  2C 00 00 08 */ cmpwi r0, 8
/* 802C1708 002BE648  40 80 00 EC */ bge lbl_802C17F4
/* 802C170C 002BE64C  48 00 00 A0 */ b lbl_802C17AC
lbl_802C1710:
/* 802C1710 002BE650  2C 00 00 0C */ cmpwi r0, 0xc
/* 802C1714 002BE654  40 80 01 2C */ bge lbl_802C1840
/* 802C1718 002BE658  48 00 01 04 */ b lbl_802C181C
lbl_802C171C:
/* 802C171C 002BE65C  80 9F 00 00 */ lwz r4, 0(r31)
/* 802C1720 002BE660  3C 60 00 07 */ lis r3, 0x0007040C@ha
/* 802C1724 002BE664  38 03 04 0C */ addi r0, r3, 0x0007040C@l
/* 802C1728 002BE668  7C 04 00 00 */ cmpw r4, r0
/* 802C172C 002BE66C  41 82 00 28 */ beq lbl_802C1754
/* 802C1730 002BE670  40 80 01 10 */ bge lbl_802C1840
/* 802C1734 002BE674  38 03 04 05 */ addi r0, r3, 0x405
/* 802C1738 002BE678  7C 04 00 00 */ cmpw r4, r0
/* 802C173C 002BE67C  41 82 00 08 */ beq lbl_802C1744
/* 802C1740 002BE680  48 00 01 00 */ b lbl_802C1840
lbl_802C1744:
/* 802C1744 002BE684  38 03 04 06 */ addi r0, r3, 0x406
/* 802C1748 002BE688  90 01 00 2C */ stw r0, 0x2c(r1)
/* 802C174C 002BE68C  90 1F 00 00 */ stw r0, 0(r31)
/* 802C1750 002BE690  48 00 00 F0 */ b lbl_802C1840
lbl_802C1754:
/* 802C1754 002BE694  38 03 04 0D */ addi r0, r3, 0x40d
/* 802C1758 002BE698  90 01 00 28 */ stw r0, 0x28(r1)
/* 802C175C 002BE69C  90 1F 00 00 */ stw r0, 0(r31)
/* 802C1760 002BE6A0  48 00 00 E0 */ b lbl_802C1840
lbl_802C1764:
/* 802C1764 002BE6A4  80 9F 00 00 */ lwz r4, 0(r31)
/* 802C1768 002BE6A8  3C 60 00 07 */ lis r3, 0x0007040C@ha
/* 802C176C 002BE6AC  38 03 04 0C */ addi r0, r3, 0x0007040C@l
/* 802C1770 002BE6B0  7C 04 00 00 */ cmpw r4, r0
/* 802C1774 002BE6B4  41 82 00 28 */ beq lbl_802C179C
/* 802C1778 002BE6B8  40 80 00 C8 */ bge lbl_802C1840
/* 802C177C 002BE6BC  38 03 04 05 */ addi r0, r3, 0x405
/* 802C1780 002BE6C0  7C 04 00 00 */ cmpw r4, r0
/* 802C1784 002BE6C4  41 82 00 08 */ beq lbl_802C178C
/* 802C1788 002BE6C8  48 00 00 B8 */ b lbl_802C1840
lbl_802C178C:
/* 802C178C 002BE6CC  38 03 04 07 */ addi r0, r3, 0x407
/* 802C1790 002BE6D0  90 01 00 24 */ stw r0, 0x24(r1)
/* 802C1794 002BE6D4  90 1F 00 00 */ stw r0, 0(r31)
/* 802C1798 002BE6D8  48 00 00 A8 */ b lbl_802C1840
lbl_802C179C:
/* 802C179C 002BE6DC  38 03 04 0E */ addi r0, r3, 0x40e
/* 802C17A0 002BE6E0  90 01 00 20 */ stw r0, 0x20(r1)
/* 802C17A4 002BE6E4  90 1F 00 00 */ stw r0, 0(r31)
/* 802C17A8 002BE6E8  48 00 00 98 */ b lbl_802C1840
lbl_802C17AC:
/* 802C17AC 002BE6EC  80 9F 00 00 */ lwz r4, 0(r31)
/* 802C17B0 002BE6F0  3C 60 00 07 */ lis r3, 0x0007040C@ha
/* 802C17B4 002BE6F4  38 03 04 0C */ addi r0, r3, 0x0007040C@l
/* 802C17B8 002BE6F8  7C 04 00 00 */ cmpw r4, r0
/* 802C17BC 002BE6FC  41 82 00 28 */ beq lbl_802C17E4
/* 802C17C0 002BE700  40 80 00 80 */ bge lbl_802C1840
/* 802C17C4 002BE704  38 03 04 05 */ addi r0, r3, 0x405
/* 802C17C8 002BE708  7C 04 00 00 */ cmpw r4, r0
/* 802C17CC 002BE70C  41 82 00 08 */ beq lbl_802C17D4
/* 802C17D0 002BE710  48 00 00 70 */ b lbl_802C1840
lbl_802C17D4:
/* 802C17D4 002BE714  38 03 04 08 */ addi r0, r3, 0x408
/* 802C17D8 002BE718  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802C17DC 002BE71C  90 1F 00 00 */ stw r0, 0(r31)
/* 802C17E0 002BE720  48 00 00 60 */ b lbl_802C1840
lbl_802C17E4:
/* 802C17E4 002BE724  38 03 04 0F */ addi r0, r3, 0x40f
/* 802C17E8 002BE728  90 01 00 18 */ stw r0, 0x18(r1)
/* 802C17EC 002BE72C  90 1F 00 00 */ stw r0, 0(r31)
/* 802C17F0 002BE730  48 00 00 50 */ b lbl_802C1840
lbl_802C17F4:
/* 802C17F4 002BE734  80 9F 00 00 */ lwz r4, 0(r31)
/* 802C17F8 002BE738  3C 60 00 07 */ lis r3, 0x0007040C@ha
/* 802C17FC 002BE73C  38 03 04 0C */ addi r0, r3, 0x0007040C@l
/* 802C1800 002BE740  7C 04 00 00 */ cmpw r4, r0
/* 802C1804 002BE744  41 82 00 08 */ beq lbl_802C180C
/* 802C1808 002BE748  48 00 00 38 */ b lbl_802C1840
lbl_802C180C:
/* 802C180C 002BE74C  38 03 04 10 */ addi r0, r3, 0x410
/* 802C1810 002BE750  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C1814 002BE754  90 1F 00 00 */ stw r0, 0(r31)
/* 802C1818 002BE758  48 00 00 28 */ b lbl_802C1840
lbl_802C181C:
/* 802C181C 002BE75C  80 9F 00 00 */ lwz r4, 0(r31)
/* 802C1820 002BE760  3C 60 00 07 */ lis r3, 0x0007040C@ha
/* 802C1824 002BE764  38 03 04 0C */ addi r0, r3, 0x0007040C@l
/* 802C1828 002BE768  7C 04 00 00 */ cmpw r4, r0
/* 802C182C 002BE76C  41 82 00 08 */ beq lbl_802C1834
/* 802C1830 002BE770  48 00 00 10 */ b lbl_802C1840
lbl_802C1834:
/* 802C1834 002BE774  38 03 04 11 */ addi r0, r3, 0x411
/* 802C1838 002BE778  90 01 00 10 */ stw r0, 0x10(r1)
/* 802C183C 002BE77C  90 1F 00 00 */ stw r0, 0(r31)
lbl_802C1840:
/* 802C1840 002BE780  38 A0 00 00 */ li r5, 0
/* 802C1844 002BE784  88 1E 00 A0 */ lbz r0, 0xa0(r30)
/* 802C1848 002BE788  28 00 00 07 */ cmplwi r0, 7
/* 802C184C 002BE78C  40 82 00 08 */ bne lbl_802C1854
/* 802C1850 002BE790  38 A0 00 01 */ li r5, 1
lbl_802C1854:
/* 802C1854 002BE794  80 1F 00 00 */ lwz r0, 0(r31)
/* 802C1858 002BE798  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C185C 002BE79C  38 7E 00 50 */ addi r3, r30, 0x50
/* 802C1860 002BE7A0  38 81 00 0C */ addi r4, r1, 0xc
/* 802C1864 002BE7A4  81 9E 00 60 */ lwz r12, 0x60(r30)
/* 802C1868 002BE7A8  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 802C186C 002BE7AC  7D 89 03 A6 */ mtctr r12
/* 802C1870 002BE7B0  4E 80 04 21 */ bctrl
/* 802C1874 002BE7B4  7C 7D 1B 78 */ mr r29, r3
/* 802C1878 002BE7B8  88 9E 00 A0 */ lbz r4, 0xa0(r30)
/* 802C187C 002BE7BC  38 04 FF E8 */ addi r0, r4, -24
/* 802C1880 002BE7C0  28 00 00 1E */ cmplwi r0, 0x1e
/* 802C1884 002BE7C4  41 81 00 8C */ bgt lbl_802C1910
/* 802C1888 002BE7C8  3C 80 80 3D */ lis r4, lbl_803CB6A8@ha
/* 802C188C 002BE7CC  38 84 B6 A8 */ addi r4, r4, lbl_803CB6A8@l
/* 802C1890 002BE7D0  54 00 10 3A */ slwi r0, r0, 2
/* 802C1894 002BE7D4  7C 04 00 2E */ lwzx r0, r4, r0
/* 802C1898 002BE7D8  7C 09 03 A6 */ mtctr r0
/* 802C189C 002BE7DC  4E 80 04 20 */ bctr
/* 802C18A0 002BE7E0  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C18A4 002BE7E4  3C 03 FF F9 */ addis r0, r3, 0xfff9
/* 802C18A8 002BE7E8  28 00 00 A2 */ cmplwi r0, 0xa2
/* 802C18AC 002BE7EC  40 82 00 64 */ bne lbl_802C1910
/* 802C18B0 002BE7F0  38 00 00 01 */ li r0, 1
/* 802C18B4 002BE7F4  98 1E 00 A3 */ stb r0, 0xa3(r30)
/* 802C18B8 002BE7F8  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C18BC 002BE7FC  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C18C0 002BE800  4B FF 32 3D */ bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C18C4 002BE804  48 00 00 4C */ b lbl_802C1910
/* 802C18C8 002BE808  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C18CC 002BE80C  3C 03 FF F9 */ addis r0, r3, 0xfff9
/* 802C18D0 002BE810  28 00 00 AE */ cmplwi r0, 0xae
/* 802C18D4 002BE814  40 82 00 3C */ bne lbl_802C1910
/* 802C18D8 002BE818  38 00 00 01 */ li r0, 1
/* 802C18DC 002BE81C  98 1E 00 A3 */ stb r0, 0xa3(r30)
/* 802C18E0 002BE820  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802C18E4 002BE824  88 8D 82 E9 */ lbz r4, lbl_80450869-_SDA_BASE_(r13)
/* 802C18E8 002BE828  4B FF 32 15 */ bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C18EC 002BE82C  48 00 00 24 */ b lbl_802C1910
/* 802C18F0 002BE830  A0 9E 00 6C */ lhz r4, 0x6c(r30)
/* 802C18F4 002BE834  48 00 15 61 */ bl Z2_E_ms_modVol
/* 802C18F8 002BE838  48 00 00 18 */ b lbl_802C1910
/* 802C18FC 002BE83C  A0 9E 00 6C */ lhz r4, 0x6c(r30)
/* 802C1900 002BE840  48 00 14 E1 */ bl Z2_E_sw_modPitch
/* 802C1904 002BE844  48 00 00 0C */ b lbl_802C1910
/* 802C1908 002BE848  A0 9E 00 6C */ lhz r4, 0x6c(r30)
/* 802C190C 002BE84C  48 00 15 91 */ bl Z2_E_mm_modPitch
lbl_802C1910:
/* 802C1910 002BE850  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C1914 002BE854  3C 03 FF F9 */ addis r0, r3, 0xfff9
/* 802C1918 002BE858  28 00 04 39 */ cmplwi r0, 0x439
/* 802C191C 002BE85C  40 82 00 10 */ bne lbl_802C192C
/* 802C1920 002BE860  7F A3 EB 78 */ mr r3, r29
/* 802C1924 002BE864  A0 9E 00 6C */ lhz r4, 0x6c(r30)
/* 802C1928 002BE868  48 00 15 BD */ bl Z2_B_zan_modPitch
lbl_802C192C:
/* 802C192C 002BE86C  7F A3 EB 78 */ mr r3, r29
/* 802C1930 002BE870  39 61 00 40 */ addi r11, r1, 0x40
/* 802C1934 002BE874  48 0A 08 F5 */ bl _restgpr_29
/* 802C1938 002BE878  80 01 00 44 */ lwz r0, 0x44(r1)
/* 802C193C 002BE87C  7C 08 03 A6 */ mtlr r0
/* 802C1940 002BE880  38 21 00 40 */ addi r1, r1, 0x40
/* 802C1944 002BE884  4E 80 00 20 */ blr