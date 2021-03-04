#include "m_Do/m_Do_reset/m_Do_reset.h"
#include "JSystem/JUtility/JUTXfb/JUTXfb.h"
#include "SComponent/c_API_controller_pad.h"
#include "Z2AudioLib/Z2AudioMgr/Z2AudioMgr.h"
#include "dvd/dvd.h"
#include "global.h"

extern "C" {
class JSURandomInputStream;
class mDoCPd_c;
struct JASTaskThread {
    u8 unk0[0x2c];
    OSThread* thread;
};
JASTaskThread* getThreadPointer__6JASDvdFv(void);
s32 pause__13JASTaskThreadFb(JASTaskThread*, bool);
void cAPICPad_recalibrate__Fv(void);
void getResetData__6mDoRstFv(void);
void destroyManager__8JUTVideoFv(void);
void mDoDvdErr_ThdCleanup(void);
void VIFlush(void);
void VISetBlack(s32);
void VIWaitForRetrace(void);
}

extern u8 lbl_80450BB8;
extern char lbl_80374198[16];
extern u8 lbl_803EAF40[];
extern u8 lbl_80451501;
extern void* lbl_804514F0;
extern void (*lbl_804514EC)(int, void*);  // JUTGamePad::C3ButtonReset::sCallback

void my_OSCancelAlarmAll(void) {
    return;
}

void destroyVideo() {
    destroyManager__8JUTVideoFv();
    GXSetDrawDoneCallback(NULL);
    VISetBlack(1);
    VIFlush();
    VIWaitForRetrace();
    return;
}

// TODO: cleanup
void mDoRst_reset(int p1, u32 p2, int p3) {
    mDoCPd_c* pmVar1;
    u32 uVar2;
    DVDState DVar3;
    OSThread* thread;
    s32 enable;
    /* sManager */ lbl_80451550->clearIndex();
    mDoDvdErr_ThdCleanup();
    cAPICPad_recalibrate__Fv();
    if (lbl_80450BB8 != false) {
        do {
            uVar2 = lbl_80451368->hasReset();
        } while ((uVar2 & 0xff) == 0);
    }

    if ((s32)DVDGetDriveStatus() == (s32)DVD_STATE_BUSY) {
        OSAttention(lbl_80374198);
    }
    JASTaskThread* task_thread = getThreadPointer__6JASDvdFv();
    if (task_thread != NULL) {
        pause__13JASTaskThreadFb(task_thread, true);
        thread = task_thread->thread;
        if (thread != NULL) {
            OSSuspendThread(thread);
            OSDetachThread(thread);
            OSCancelThread(thread);
        }
    }

    VIWaitForRetrace();
    VIWaitForRetrace();

    thread = GXGetCurrentGXThread();
    enable = OSDisableInterrupts();
    OSThread* ourThread = OSGetCurrentThread();
    if (thread != ourThread) {
        OSCancelThread(thread);
        GXSetCurrentGXThread();
    }
    GXFlush();
    GXAbortFrame();
    GXDrawDone();

    OSRestoreInterrupts(enable);
    destroyVideo();

    // nb: probably fake match (i am not sure that it's actually attached to this label lol)
    while (((s32*)lbl_803EAF40)[0x7f0] != 0) {
        VIWaitForRetrace();
    }

    my_OSCancelAlarmAll();
    LCDisable();
    // probably false match; check out 80015728 or thereabouts in Ghidra
    OSSetSaveRegion(/* mResetData */ m_Do_Reset_NS_mDoRst_NS_mResetData,
                    (u8*)(&getResetData__6mDoRstFv) + 0x18);
    OSResetSystem(p1, p2, p3);
    do {
        VIWaitForRetrace();
    } while (true);
}

void mDoRst_resetCallBack(int p1, void* p2) {
    if (/* mResetData */ m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x0 == 0) {
        if (p1 == -1) {
            cAPICPad_recalibrate__Fv();
        } else {
            if (m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x8 != 0) {
                lbl_80451501 = false;
                /* sCallback */ lbl_804514EC = &mDoRst_resetCallBack;
                /* sCallbackArg */ lbl_804514F0 = 0;
                return;
            }
            m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x8 = 1;
            m_Do_Reset_NS_mDoRst_NS_mResetData->pad_index = p1;
            cAPICPad_recalibrate__Fv();
        }

        if ((DVDCheckDisk() == 0) && (DVDGetDriveStatus() != DVD_STATE_FATAL_ERROR)) {
            m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x11 = 1;
        }
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x0 = 1;
    }
}

ResetData* mDoRst::getResetData() {
    return /* mResetData */ m_Do_Reset_NS_mDoRst_NS_mResetData;
}