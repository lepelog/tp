/* f_op_msg_mng.cpp autogenerated by split.py v0.4 at 2021-02-15 20:21:51.945184 */

#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "f/f_op/f_op_scene_iter.h"
#include "f/f_pc/f_pc_stdcreate_req.h"
#include "global.h"

// additional symbols needed for f_op_msg_mng.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:21:51.945228
extern "C" {
void fopScnM_SearchByID__FUi(void);
void _restgpr_26(void);
void _restgpr_27(void);
void _restgpr_28(void);
void _restgpr_29(void);
void _savegpr_26(void);
void _savegpr_27(void);
void _savegpr_28(void);
void _savegpr_29(void);
void createAppend_X2_(void);
void createTimerAppend(void);
void create__10JKRExpHeapFUlP7JKRHeapb(void);
void getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c(void);
void emphasisButtonDelete__9dMeter2_cFv(void);
void endFlowGroup__12dMsgObject_cFv(void);
void setMessageIndex__12dMsgObject_cFUlUlb(void);
void setMessageIndex__12dMsgObject_cFUlUlbDemo(void);
void setTalkActor__12dMsgObject_cFP10fopAc_ac_c(void);
void setTalkPartner__12dMsgObject_cFP10fopAc_ac_c(void);
void destroy__7JKRHeapFv(void);
void fopMsgM_Create(void);
void fopMsgM_Delete(void);
void fopMsgM_GetAppend(void);
void fopMsgM_SearchByID(void);
void fopMsgM_create(void);
void fopMsgM_createExpHeap(void);
void fopMsgM_destroyExpHeap(void);
void fopMsgM_messageGet(void);
void fopMsgM_messageSet(void);
void fopMsgM_messageSetDemo(void);
void fopMsgM_messageSet_X1_(void);
void fopMsgM_setMessageID(void);
void fopMsgM_setStageLayer(void);
void fopMsgM_valueIncrease(void);
void fopScnM_SearchByID(void);
void fop_Timer_create(void);
void fpcEx_SearchByID__FUi(void);
void fpcM_Delete__FPv(void);
void func_80020158(void);
void func_800202CC(void);
void func_80020338(void);
void func_80020368(void);
void memalignB__3cMlFiUl(void);
}

// additional symbols needed for f_op_msg_mng.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:21:51.945234
extern u8 lbl_803A3970;
extern u8 lbl_8043028C;
extern u8 lbl_80439A20;
extern u8 lbl_804505C8;
extern u8 lbl_80450D40;
extern u8 lbl_80450D60;
extern u8 lbl_80451C70;
extern u8 lbl_80451C74;
extern u8 lbl_80451C78;
extern u8 lbl_80451C7C;
extern u8 lbl_80451C80;
extern u8 lbl_80451C84;
extern u8 lbl_80451C88;
extern u8 lbl_80430188;

extern "C" {
// fopMsgM_setStageLayer__FPv
// fopMsgM_setStageLayer(void*)
asm void fopMsgM_setStageLayer(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001F9B4.s"
}

// fopMsgM_SearchByID__FUi
// fopMsgM_SearchByID(unsigned int)
asm void fopMsgM_SearchByID(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FA24.s"
}

// fopMsgM_GetAppend__FPv
// fopMsgM_GetAppend(void*)
asm void fopMsgM_GetAppend(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FA44.s"
}

// fopMsgM_Delete__FPv
// fopMsgM_Delete(void*)
asm void fopMsgM_Delete(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FA4C.s"
}

// createAppend__FP10fopAc_ac_cP4cXyzPUlPUlUi
// createAppend(fopAc_ac_c*, cXyz*, u32*, u32*, unsigned int)
asm void createAppend_X2_(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FA6C.s"
}

// createTimerAppend__FiUlUcUcffffUi
// createTimerAppend(int, u32, u8, u8, f32, f32, f32, f32, unsigned int)
asm void createTimerAppend(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FB50.s"
}

// fopMsgM_create__FsP10fopAc_ac_cP4cXyzPUlPUlPFPv_i
// fopMsgM_create(s16, fopAc_ac_c*, cXyz*, u32*, u32*, int (*)(void*))
asm void fopMsgM_create(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FC4C.s"
}

// fop_Timer_create__FsUcUlUcUcffffPFPv_i
// fop_Timer_create(s16, u8, u32, u8, u8, f32, f32, f32, f32, int (*)(void*))
asm void fop_Timer_create(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FCC0.s"
}

// fopMsgM_messageSet__FUlP10fopAc_ac_cUl
// fopMsgM_messageSet(u32, fopAc_ac_c*, u32)
asm void fopMsgM_messageSet(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FD34.s"
}

// fopMsgM_messageSet__FUlUl
// fopMsgM_messageSet(u32, u32)
asm void fopMsgM_messageSet_X1_(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FE84.s"
}

// fopMsgM_messageSetDemo__FUl
// fopMsgM_messageSetDemo(u32)
asm void fopMsgM_messageSetDemo(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8001FFC4.s"
}

// fopMsgM_messageGet__FPcUl
// fopMsgM_messageGet(s8*, u32)
asm void fopMsgM_messageGet(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_800200C0.s"
}

// fopMsgM_setMessageID__FUi
// fopMsgM_setMessageID(unsigned int)
asm void fopMsgM_setMessageID(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020100.s"
}

// fopMsgM_Create__FsPFPv_iPv
// fopMsgM_Create(s16, int (*)(void*), void*)
asm void fopMsgM_Create(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020108.s"
}

// setAlpha__7J2DPaneFUc
// J2DPane::setAlpha(u8)
asm void func_80020158(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020158.s"
}

// fopMsgM_valueIncrease__FiiUc
// fopMsgM_valueIncrease(int, int, u8)
asm void fopMsgM_valueIncrease(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020160.s"
}

// setBlendRatio__10J2DPictureFff
// J2DPicture::setBlendRatio(f32, f32)
asm void func_800202CC(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_800202CC.s"
}

// append__10J2DPictureFPCcf
// J2DPicture::append(const s8*, f32)
asm void func_80020338(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020338.s"
}

// insert__10J2DPictureFPCcUcf
// J2DPicture::insert(const s8*, u8, f32)
asm void func_80020368(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_80020368.s"
}

// fopMsgM_createExpHeap__FUlP7JKRHeap
// fopMsgM_createExpHeap(u32, JKRHeap*)
asm void fopMsgM_createExpHeap(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_8002039C.s"
}

// fopMsgM_destroyExpHeap__FP10JKRExpHeap
// fopMsgM_destroyExpHeap(JKRExpHeap*)
asm void fopMsgM_destroyExpHeap(void) {
    nofralloc
#include "f/f_op/f_op_msg_mng/asm/func_800203E0.s"
}
};
