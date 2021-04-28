//
// Generated By: dol2asm
// Translation Unit: JKRCompArchive
//

// #include "JSystem/JKernel/JKRCompArchive.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct JUTException {
    /* 802E21FC */ void panic_f(char const*, int, char const*, ...);
};

struct JSUPtrLink {};

struct JSUPtrList {
    /* 802DBFF0 */ void prepend(JSUPtrLink*);
    /* 802DC15C */ void remove(JSUPtrLink*);
};

struct JKRMemArchive {
    /* 802D6F5C */ void fetchResource_subroutine(u8*, u32, u8*, u32, int);
};

struct JKRHeap {
    /* 802CE4D4 */ void alloc(u32, int);
    /* 802CE474 */ void alloc(u32, int, JKRHeap*);
    /* 802CE500 */ void free(void*, JKRHeap*);
    /* 802CE548 */ void free(void*);
    /* 802CEB18 */ void copyMemory(void*, void*, u32);

    static u8 sSystemHeap[4];
};

struct JKRFileLoader {
    /* 802D41D4 */ void unmount();

    static u8 sVolumeList[12];
};

struct JKRExpandSwitch {};

struct JKRDvdRipper {
    struct EAllocDirection {};

    /* 802D9C54 */ void loadToMainRAM(s32, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                      JKRDvdRipper::EAllocDirection, u32, int*, u32*);
};

struct JKRDvdFile {
    /* 802D96A0 */ JKRDvdFile(s32);
};

struct JKRDvdArchive {
    /* 802D8474 */ void fetchResource_subroutine(s32, u32, u32, JKRHeap*, int, int, u8**);
    /* 802D826C */ void fetchResource_subroutine(s32, u32, u32, u8*, u32, int, int);
};

struct JKRDvdAramRipper {
    /* 802DA874 */ void loadToAram(s32, u32, JKRExpandSwitch, u32, u32, u32*);
};

struct JKRDecomp {
    /* 802DB988 */ void orderSync(u8*, u8*, u32, u32);
};

struct JKRArchive {
    struct EMountDirection {};

    struct SDIFileEntry {};

    struct EMountMode {};

    /* 802D5A38 */ void becomeCurrent(char const*);
    /* 802D5C64 */ void getResource(u32, char const*);
    /* 802D5BE8 */ void getResource(char const*);
    /* 802D5D8C */ void readResource(void*, u32, u32, char const*);
    /* 802D5E30 */ void readResource(void*, u32, char const*);
    /* 802D609C */ void detachResource(void*);
    /* 802D60D8 */ void getResSize(void const*) const;
    /* 802D6150 */ void countFile(char const*) const;
    /* 802D61B0 */ void getFirstFile(char const*) const;
    /* 802D6294 */ JKRArchive(s32, JKRArchive::EMountMode);
    /* 802D6334 */ ~JKRArchive();
    /* 802D6734 */ void findPtrResource(void const*) const;
    /* 802D693C */ void setExpandSize(JKRArchive::SDIFileEntry*, u32);
    /* 802D6978 */ void getExpandSize(JKRArchive::SDIFileEntry*) const;
};

struct JKRCompArchive {
    /* 802D87D4 */ JKRCompArchive(s32, JKRArchive::EMountDirection);
    /* 802D887C */ ~JKRCompArchive();
    /* 802D89BC */ void open(s32);
    /* 802D8F40 */ void fetchResource(JKRArchive::SDIFileEntry*, u32*);
    /* 802D90C0 */ void fetchResource(void*, u32, JKRArchive::SDIFileEntry*, u32*);
    /* 802D9260 */ void removeResourceAll();
    /* 802D92F4 */ void removeResource(void*);
    /* 802D9360 */ void getExpandedResSize(void const*) const;
};

struct JKRAramHeap {
    struct EAllocMode {};

    /* 802D2FBC */ void alloc(u32, JKRAramHeap::EAllocMode);
};

struct JKRAramArchive {
    /* 802D7858 */ void fetchResource_subroutine(u32, u32, u8*, u32, int);
    /* 802D7914 */ void fetchResource_subroutine(u32, u32, JKRHeap*, int, u8**);
};

struct JKRAram {
    /* 802D233C */ void mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
    /* 802D25B4 */ void aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);

    static u8 sAramObject[4];
};

//
// Forward References:
//

extern "C" void __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection();
extern "C" void __dt__14JKRCompArchiveFv();
extern "C" void open__14JKRCompArchiveFl();
extern "C" void fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl();
extern "C" void fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl();
extern "C" void removeResourceAll__14JKRCompArchiveFv();
extern "C" void removeResource__14JKRCompArchiveFPv();
extern "C" void getExpandedResSize__14JKRCompArchiveCFPCv();
extern "C" extern char const* const JKRCompArchive__stringBase0;

//
// External References:
//

SECTION_INIT void memset();
extern "C" void alloc__7JKRHeapFUliP7JKRHeap();
extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void free__7JKRHeapFPv();
extern "C" void copyMemory__7JKRHeapFPvPvUl();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl();
extern "C" void aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl();
extern "C" void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode();
extern "C" void unmount__13JKRFileLoaderFv();
extern "C" void becomeCurrent__10JKRArchiveFPCc();
extern "C" void getResource__10JKRArchiveFPCc();
extern "C" void getResource__10JKRArchiveFUlPCc();
extern "C" void readResource__10JKRArchiveFPvUlUlPCc();
extern "C" void readResource__10JKRArchiveFPvUlPCc();
extern "C" void detachResource__10JKRArchiveFPv();
extern "C" void getResSize__10JKRArchiveCFPCv();
extern "C" void countFile__10JKRArchiveCFPCc();
extern "C" void getFirstFile__10JKRArchiveCFPCc();
extern "C" void __ct__10JKRArchiveFlQ210JKRArchive10EMountMode();
extern "C" void __dt__10JKRArchiveFv();
extern "C" void findPtrResource__10JKRArchiveCFPCv();
extern "C" void setExpandSize__10JKRArchiveFPQ210JKRArchive12SDIFileEntryUl();
extern "C" void getExpandSize__10JKRArchiveCFPQ210JKRArchive12SDIFileEntry();
extern "C" void fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli();
extern "C" void fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli();
extern "C" void fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc();
extern "C" void fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii();
extern "C" void fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc();
extern "C" void __ct__10JKRDvdFileFl();
extern "C" void
loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl();
extern "C" void loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl();
extern "C" void orderSync__9JKRDecompFPUcPUcUlUl();
extern "C" void prepend__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void panic_f__12JUTExceptionFPCciPCce();
extern "C" void DCInvalidateRange();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" void abs();
extern "C" u8 sVolumeList__13JKRFileLoader[12];
extern "C" u8 sSystemHeap__7JKRHeap[4];
extern "C" u8 sAramObject__7JKRAram[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 803CC3E8-803CC438 029508 0050+00 2/2 0/0 0/0 .data            __vt__14JKRCompArchive */
SECTION_DATA extern void* __vt__14JKRCompArchive[20] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14JKRCompArchiveFv,
    (void*)unmount__13JKRFileLoaderFv,
    (void*)becomeCurrent__10JKRArchiveFPCc,
    (void*)getResource__10JKRArchiveFPCc,
    (void*)getResource__10JKRArchiveFUlPCc,
    (void*)readResource__10JKRArchiveFPvUlPCc,
    (void*)readResource__10JKRArchiveFPvUlUlPCc,
    (void*)removeResourceAll__14JKRCompArchiveFv,
    (void*)removeResource__14JKRCompArchiveFPv,
    (void*)detachResource__10JKRArchiveFPv,
    (void*)getResSize__10JKRArchiveCFPCv,
    (void*)countFile__10JKRArchiveCFPCc,
    (void*)getFirstFile__10JKRArchiveCFPCc,
    (void*)getExpandedResSize__14JKRCompArchiveCFPCv,
    (void*)fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl,
    (void*)fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl,
    (void*)setExpandSize__10JKRArchiveFPQ210JKRArchive12SDIFileEntryUl,
    (void*)getExpandSize__10JKRArchiveCFPQ210JKRArchive12SDIFileEntry,
};

/* 802D87D4-802D887C 2D3114 00A8+00 0/0 1/1 0/0 .text
 * __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRCompArchive::JKRCompArchive(s32 param_0, JKRArchive::EMountDirection param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/__ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection.s"
}
#pragma pop

/* 802D887C-802D89BC 2D31BC 0140+00 1/0 0/0 0/0 .text            __dt__14JKRCompArchiveFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRCompArchive::~JKRCompArchive() {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/__dt__14JKRCompArchiveFv.s"
}
#pragma pop

/* 802D89BC-802D8F40 2D32FC 0584+00 1/1 0/0 0/0 .text            open__14JKRCompArchiveFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::open(s32 param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/open__14JKRCompArchiveFl.s"
}
#pragma pop

/* 802D8F40-802D90C0 2D3880 0180+00 1/0 0/0 0/0 .text
 * fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::fetchResource(JKRArchive::SDIFileEntry* param_0, u32* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039D220-8039D220 029880 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039D220 = "JKRCompArchive.cpp";
SECTION_DEAD static char const* const stringBase_8039D233 = "%s";
SECTION_DEAD static char const* const stringBase_8039D236 = "illegal archive.";
#pragma pop

/* 802D90C0-802D9260 2D3A00 01A0+00 1/0 0/0 0/0 .text
 * fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::fetchResource(void* param_0, u32 param_1,
                                       JKRArchive::SDIFileEntry* param_2, u32* param_3) {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl.s"
}
#pragma pop

/* 802D9260-802D92F4 2D3BA0 0094+00 1/0 0/0 0/0 .text removeResourceAll__14JKRCompArchiveFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::removeResourceAll() {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/removeResourceAll__14JKRCompArchiveFv.s"
}
#pragma pop

/* 802D92F4-802D9360 2D3C34 006C+00 1/0 0/0 0/0 .text            removeResource__14JKRCompArchiveFPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::removeResource(void* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/removeResource__14JKRCompArchiveFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039D220-8039D220 029880 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039D247 = "illegal resource.";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8039D259 = "\0\0\0\0\0\0";
#pragma pop

/* 802D9360-802D9518 2D3CA0 01B8+00 1/0 0/0 0/0 .text getExpandedResSize__14JKRCompArchiveCFPCv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRCompArchive::getExpandedResSize(void const* param_0) const {
    nofralloc
#include "asm/JSystem/JKernel/JKRCompArchive/getExpandedResSize__14JKRCompArchiveCFPCv.s"
}
#pragma pop

/* 8039D220-8039D220 029880 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
