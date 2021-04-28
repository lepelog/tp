//
// Generated By: dol2asm
// Translation Unit: JKRThread
//

#include "JSystem/JKernel/JKRThread.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "JSystem/JKernel/JKRExpHeap.h"

//
// Types:
//

struct JUTConsole {
    /* 802E75EC */ void clear();
    /* 802E7BB8 */ void print_f(char const*, ...);
    /* 802E7C38 */ void print(char const*);
};

//
// Forward References:
//

extern "C" void __ct__9JKRThreadFUlii();
extern "C" void __ct__9JKRThreadFP7JKRHeapUlii();
extern "C" void __ct__9JKRThreadFP8OSThreadi();
extern "C" void __dt__9JKRThreadFv();
extern "C" void setCommon_mesgQueue__9JKRThreadFP7JKRHeapi();
extern "C" void setCommon_heapSpecified__9JKRThreadFP7JKRHeapUli();
extern "C" void start__9JKRThreadFPv();
extern "C" void searchThread__9JKRThreadFP8OSThread();
extern "C" void __ct__15JKRThreadSwitchFP7JKRHeap();
extern "C" void createManager__15JKRThreadSwitchFP7JKRHeap();
extern "C" void enter__15JKRThreadSwitchFP9JKRThreadi();
extern "C" void callback__15JKRThreadSwitchFP8OSThreadP8OSThread();
extern "C" void draw__15JKRThreadSwitchFP14JKRThreadName_P10JUTConsole();
extern "C" bool run__9JKRThreadFv();
extern "C" void draw__15JKRThreadSwitchFP14JKRThreadName_();
extern "C" void __dt__15JKRThreadSwitchFv();
extern "C" void __sinit_JKRThread_cpp();
extern "C" void func_802D1EFC(void* _this);
extern "C" void func_802D1F50(void* _this);
extern "C" extern char const* const JKRThread__stringBase0;
extern "C" u8 sThreadList__9JKRThread[12];
extern "C" u8 sTaskList__7JKRTask[12];
extern "C" u8 sEndMesgQueue__7JKRTask[32];
extern "C" u8 sManager__15JKRThreadSwitch[4];
extern "C" u8 sTotalCount__15JKRThreadSwitch[4];
extern "C" u8 sTotalStart__15JKRThreadSwitch[4];
extern "C" u8 mUserPreCallback__15JKRThreadSwitch[4];
extern "C" u8 mUserPostCallback__15JKRThreadSwitch[4];

//
// External References:
//

extern "C" void becomeCurrentHeap__7JKRHeapFv();
extern "C" void alloc__7JKRHeapFUliP7JKRHeap();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void findFromRoot__7JKRHeapFPv();
extern "C" void isSubHeap__7JKRHeapCFP7JKRHeap();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void __ct__11JKRDisposerFv();
extern "C" void __dt__11JKRDisposerFv();
extern "C" void __ct__10JSUPtrLinkFPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void __ct__10JSUPtrListFb();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void clear__10JUTConsoleFv();
extern "C" void print_f__10JUTConsoleFPCce();
extern "C" void print__10JUTConsoleFPCc();
extern "C" void JUTWarningConsole();
extern "C" void __register_global_object();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" void __cvt_sll_flt();
extern "C" void sprintf();
extern "C" u8 sSystemHeap__7JKRHeap[4];
extern "C" u8 sCurrentHeap__7JKRHeap[4];
extern "C" u8 sRootHeap__7JKRHeap[4];
extern "C" void *__vt__15JKRThreadSwitch;

//
// Declarations:
//

/* 802D1568-802D1610 2CBEA8 00A8+00 0/0 4/4 0/0 .text            __ct__9JKRThreadFUlii */
JKRThread::JKRThread(u32 stack_size, int message_count, int param_3) : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;

    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = JKRHeap::getSystemHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_3);
    setCommon_mesgQueue(mHeap, message_count);
}

/* 802D1610-802D16B8 2CBF50 00A8+00 0/0 2/2 0/0 .text            __ct__9JKRThreadFP7JKRHeapUlii */
JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;

    if (heap == NULL) {
        heap = JKRHeap::getCurrentHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_4);
    setCommon_mesgQueue(mHeap, message_count);
}

/* 802D16B8-802D1758 2CBFF8 00A0+00 0/0 5/5 0/0 .text            __ct__9JKRThreadFP8OSThreadi */
JKRThread::JKRThread(OSThread* thread, int message_count) : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;
    mHeap = NULL;
    mThreadRecord = thread;
    mStackSize = (u32)thread->stack_end - (u32)thread->stack_base;
    mStackMemory = thread->stack_base;

    setCommon_mesgQueue(JKRHeap::getSystemHeap(), message_count);
}

/* 8043428C-80434298 060FAC 000C+00 5/6 0/0 0/0 .bss             sThreadList__9JKRThread */
JSUList<JKRThread> JKRThread::sThreadList(0);

/* 802D1758-802D1830 2CC098 00D8+00 1/0 9/9 0/0 .text            __dt__9JKRThreadFv */
JKRThread::~JKRThread() {
    getList().remove(&mThreadListLink);

    if (mHeap) {
        BOOL result = OSIsThreadTerminated(mThreadRecord);
        if (result == FALSE) {
            OSDetachThread(mThreadRecord);
            OSCancelThread(mThreadRecord);
        }
        JKRFreeToHeap(mHeap, mStackMemory);
        JKRFreeToHeap(mHeap, mThreadRecord);
    }
    JKRFree(mMessages);
}

/* 802D1830-802D18A4 2CC170 0074+00 3/3 0/0 0/0 .text setCommon_mesgQueue__9JKRThreadFP7JKRHeapi
 */
void JKRThread::setCommon_mesgQueue(JKRHeap* heap, int message_count) {
    mMessageCount = message_count;
    mMessages = (OSMessage*)JKRHeap::alloc(mMessageCount * sizeof(OSMessage), 0, heap);

    OSInitMessageQueue(&mMessageQueue, mMessages, mMessageCount);
    getList().append(&mThreadListLink);

    mCurrentHeap = NULL;
    mCurrentHeapError = NULL;
}

/* 802D18A4-802D1934 2CC1E4 0090+00 2/2 0/0 0/0 .text
 * setCommon_heapSpecified__9JKRThreadFP7JKRHeapUli             */
void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    mHeap = heap;
    mStackSize = stack_size & 0xffffffe0;
    mStackMemory = JKRAllocFromHeap(mHeap, mStackSize, 0x20);
    mThreadRecord = (OSThread*)JKRAllocFromHeap(mHeap, sizeof(OSThread), 0x20);

    void* stackBase = (void*)((int)mStackMemory + mStackSize);
    OSCreateThread(mThreadRecord, start, this, stackBase, mStackSize, param_3, 1);
}

/* 802D1934-802D1960 2CC274 002C+00 1/1 0/0 0/0 .text            start__9JKRThreadFPv */
void* JKRThread::start(void* param) {
    JKRThread* thread = (JKRThread*)param;
    return thread->run();
}

/* 802D1960-802D199C 2CC2A0 003C+00 1/1 0/0 0/0 .text            searchThread__9JKRThreadFP8OSThread
 */
JKRThread* JKRThread::searchThread(OSThread* thread) {
    JSUList<JKRThread>& threadList = getList();
    JSUListIterator<JKRThread> iterator;
    for (iterator = threadList.getFirst(); iterator != threadList.getEnd(); ++iterator) {
        if (iterator->getThreadRecord() == thread) {
            return iterator.getObject();
        }
    }

    return NULL;
}

/* ############################################################################################## */
/* 804513B0-804513B4 0008B0 0004+00 2/2 1/1 0/0 .sbss            sManager__15JKRThreadSwitch */
u8 JKRThreadSwitch::sManager[4];

/* 804513B4-804513B8 0008B4 0004+00 3/3 0/0 0/0 .sbss            sTotalCount__15JKRThreadSwitch */
u8 JKRThreadSwitch::sTotalCount[4];

/* 804513B8-804513BC 0008B8 0004+00 1/1 0/0 0/0 .sbss            sTotalStart__15JKRThreadSwitch */
u8 JKRThreadSwitch::sTotalStart[4];

/* 804513BC-804513C0 0008BC 0004+00 1/1 0/0 0/0 .sbss            None */
static u8 data_804513BC[4];

/* 802D199C-802D1A14 2CC2DC 0078+00 1/1 0/0 0/0 .text            __ct__15JKRThreadSwitchFP7JKRHeap
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRThreadSwitch::JKRThreadSwitch(JKRHeap* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/__ct__15JKRThreadSwitchFP7JKRHeap.s"
}
#pragma pop

/* 802D1A14-802D1A70 2CC354 005C+00 0/0 1/1 0/0 .text createManager__15JKRThreadSwitchFP7JKRHeap
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRThreadSwitch* JKRThreadSwitch::createManager(JKRHeap* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/createManager__15JKRThreadSwitchFP7JKRHeap.s"
}
#pragma pop

/* 802D1A70-802D1AE4 2CC3B0 0074+00 0/0 1/1 0/0 .text enter__15JKRThreadSwitchFP9JKRThreadi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRThread* JKRThreadSwitch::enter(JKRThread* param_0, int param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/enter__15JKRThreadSwitchFP9JKRThreadi.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CFA8-8039CFA8 029608 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CFA8 = "on";
SECTION_DEAD static char const* const stringBase_8039CFAB = "off";
SECTION_DEAD static char const* const stringBase_8039CFAF =
    "JKRThread:%x  OSThread:%x  Load:ID:%d  (%s)\n";
SECTION_DEAD static char const* const stringBase_8039CFDC =
    "JKRThreadSwitch: currentHeap destroyed.\n";
#pragma pop

/* 804513C0-804513C4 0008C0 0004+00 1/1 0/0 0/0 .sbss            mUserPreCallback__15JKRThreadSwitch
 */
u8 JKRThreadSwitch::mUserPreCallback[4];

/* 804513C4-804513C8 0008C4 0004+00 1/1 0/0 0/0 .sbss mUserPostCallback__15JKRThreadSwitch */
u8 JKRThreadSwitch::mUserPostCallback[4];

/* 802D1AE4-802D1C74 2CC424 0190+00 1/1 0/0 0/0 .text
 * callback__15JKRThreadSwitchFP8OSThreadP8OSThread             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void JKRThreadSwitch::callback(OSThread* param_0, OSThread* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/callback__15JKRThreadSwitchFP8OSThreadP8OSThread.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039CFA8-8039CFA8 029608 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039D005 = " total: switch:%3d  time:%d(%df)\n";
SECTION_DEAD static char const* const stringBase_8039D027 =
    " -------------------------------------\n";
SECTION_DEAD static char const* const stringBase_8039D04F = "%d";
SECTION_DEAD static char const* const stringBase_8039D052 = " [%10s] switch:%5d  cost:%2d.%d%%\n";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8039D075 = "\0\0";
#pragma pop

/* 80455FC0-80455FC4 0045C0 0004+00 1/1 0/0 0/0 .sdata2          @934 */
SECTION_SDATA2 static f32 lit_934 = 100.0f;

/* 80455FC4-80455FC8 0045C4 0004+00 1/1 0/0 0/0 .sdata2          @935 */
SECTION_SDATA2 static f32 lit_935 = 1000.0f;

/* 80455FC8-80455FD0 0045C8 0008+00 1/1 0/0 0/0 .sdata2          @937 */
SECTION_SDATA2 static f64 lit_937 = 4503599627370496.0 /* cast u32 to float */;

/* 802D1C74-802D1E14 2CC5B4 01A0+00 1/0 0/0 0/0 .text
 * draw__15JKRThreadSwitchFP14JKRThreadName_P10JUTConsole       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
#pragma force_active on
asm void JKRThreadSwitch::draw(JKRThreadName_* param_0, JUTConsole* param_1) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/draw__15JKRThreadSwitchFP14JKRThreadName_P10JUTConsole.s"
}
#pragma pop

/* 802D1E14-802D1E1C 2CC754 0008+00 1/0 0/0 0/0 .text            run__9JKRThreadFv */
void *JKRThread::run() {
    return NULL;
}

/* 802D1E1C-802D1E4C 2CC75C 0030+00 1/0 0/0 0/0 .text draw__15JKRThreadSwitchFP14JKRThreadName_ */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
#pragma force_active on
asm void JKRThreadSwitch::draw(JKRThreadName_* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/draw__15JKRThreadSwitchFP14JKRThreadName_.s"
}
#pragma pop

/* 802D1E4C-802D1E94 2CC78C 0048+00 1/0 0/0 0/0 .text            __dt__15JKRThreadSwitchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm JKRThreadSwitch::~JKRThreadSwitch() {
    nofralloc
#include "asm/JSystem/JKernel/JKRThread/__dt__15JKRThreadSwitchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80434298-804342A4 060FB8 000C+00 0/1 0/0 0/0 .bss             @989 */
// #pragma push
// #pragma force_active on
// static u8 lit_989[12];
// #pragma pop

/* 804342A4-804342B0 060FC4 000C+00 0/1 0/0 0/0 .bss             sTaskList__7JKRTask */
#pragma push
#pragma force_active on
JSUList<JKRTask> JKRTask::sTaskList;
#pragma pop

/* ############################################################################################## */
/* 804342B0-804342D0 060FD0 0020+00 0/0 0/0 0/0 .bss             sEndMesgQueue__7JKRTask */
#pragma push
#pragma force_active on
u8 JKRTask::sEndMesgQueue[32];
#pragma pop

/* 8039CFA8-8039CFA8 029608 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
