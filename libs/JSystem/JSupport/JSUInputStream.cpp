//
// Generated By: dol2asm
// Translation Unit: JSUInputStream
//

#include "JSystem/JSupport/JSUInputStream.h"
#include "JSystem/JSupport/JSURandomInputStream.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

//
// Forward References:
//

extern "C" void __dt__14JSUInputStreamFv();
extern "C" void read__14JSUInputStreamFPvl();
extern "C" void skip__14JSUInputStreamFl();
extern "C" void align__20JSURandomInputStreamFl();
extern "C" void skip__20JSURandomInputStreamFl();
extern "C" void peek__20JSURandomInputStreamFPvl();
extern "C" void seek__20JSURandomInputStreamFl17JSUStreamSeekFrom();

//
// External References:
//

extern "C" void __dt__20JSURandomInputStreamFv();
extern "C" void __dl__FPv();
extern "C" void getAvailable__20JSURandomInputStreamCFv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__10JSUIosBase[3];

//
// Declarations:
//

/* ############################################################################################## */
/* 803CC4B0-803CC4D4 0295D0 0024+00 0/0 7/7 0/0 .data            __vt__20JSURandomInputStream */
SECTION_DATA extern void* __vt__20JSURandomInputStream[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20JSURandomInputStreamFv,
    (void*)getAvailable__20JSURandomInputStreamCFv,
    (void*)skip__20JSURandomInputStreamFl,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 803CC4D4-803CC4F0 0295F4 0018+04 1/1 4/4 0/0 .data            __vt__14JSUInputStream */
SECTION_DATA extern void* __vt__14JSUInputStream[6 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14JSUInputStreamFv,
    (void*)NULL,
    (void*)skip__14JSUInputStreamFl,
    (void*)NULL,
    /* padding */
    NULL,
};

/* 802DC23C-802DC298 2D6B7C 005C+00 1/0 6/6 0/0 .text            __dt__14JSUInputStreamFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JSUInputStream::~JSUInputStream() {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/__dt__14JSUInputStreamFv.s"
}
#pragma pop

/* 802DC298-802DC2F0 2D6BD8 0058+00 1/1 20/20 0/0 .text            read__14JSUInputStreamFPvl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JSUInputStream::read(void* param_0, s32 param_1) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/read__14JSUInputStreamFPvl.s"
}
#pragma pop

/* 802DC2F0-802DC370 2D6C30 0080+00 1/0 0/0 0/0 .text            skip__14JSUInputStreamFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 JSUInputStream::skip(s32 param_0) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/skip__14JSUInputStreamFl.s"
}
#pragma pop

/* 802DC370-802DC3FC 2D6CB0 008C+00 0/0 1/1 0/0 .text            align__20JSURandomInputStreamFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JSURandomInputStream::align(s32 param_0) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/align__20JSURandomInputStreamFl.s"
}
#pragma pop

/* 802DC3FC-802DC458 2D6D3C 005C+00 1/0 2/0 0/0 .text            skip__20JSURandomInputStreamFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 JSURandomInputStream::skip(s32 param_0) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/skip__20JSURandomInputStreamFl.s"
}
#pragma pop

/* 802DC458-802DC4DC 2D6D98 0084+00 0/0 8/8 0/0 .text            peek__20JSURandomInputStreamFPvl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JSURandomInputStream::peek(void* param_0, s32 param_1) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/peek__20JSURandomInputStreamFPvl.s"
}
#pragma pop

/* 802DC4DC-802DC520 2D6E1C 0044+00 0/0 16/16 0/0 .text
 * seek__20JSURandomInputStreamFl17JSUStreamSeekFrom            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JSURandomInputStream::seek(s32 param_0, JSUStreamSeekFrom param_1) {
    nofralloc
#include "asm/JSystem/JSupport/JSUInputStream/seek__20JSURandomInputStreamFl17JSUStreamSeekFrom.s"
}
#pragma pop
