//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_s_wtr_chk
//

#include "d/bg/d_bg_s_wtr_chk.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __ct__11dBgS_WtrChkFv();

//
// External References:
//

extern "C" void __ct__14dBgS_SplGrpChkFv();
extern "C" extern void* __vt__11dBgS_WtrChk[12];

//
// Declarations:
//

/* 80079164-800791C4 073AA4 0060+00 0/0 2/2 3/3 .text            __ct__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_WtrChk::dBgS_WtrChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_wtr_chk/__ct__11dBgS_WtrChkFv.s"
}
#pragma pop
