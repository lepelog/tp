//
// Generated By: dol2asm
// Translation Unit: GXDisplayList
//

#include "dolphin/gx/GXDisplayList.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// External References:
//

extern "C" void __GXSetDirtyState();
extern "C" void __GXSendFlushPrim();
extern "C" extern void* __GXData;

//
// Declarations:
//

/* 8035FEF0-8035FF60 35A830 0070+00 0/0 20/20 4/4 .text            GXCallDisplayList */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void GXCallDisplayList(const void* pDL, u32 size) {
    nofralloc
#include "asm/dolphin/gx/GXDisplayList/GXCallDisplayList.s"
}
#pragma pop
