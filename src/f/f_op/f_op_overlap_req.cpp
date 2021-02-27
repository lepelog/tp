/* f_op_overlap_req.cpp autogenerated by split.py v0.4 at 2021-02-15 20:24:53.163616 */

#include "f/f_op/f_op_overlap_req.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_manager.h"
#include "f/f_pc/f_pc_stdcreate_req.h"
#include "global.h"

// additional symbols needed for f_op_overlap_req.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:24:53.163652
extern "C" {
void _restgpr_29(void);
void _savegpr_29(void);
void cReq_Command__FP18request_base_classUc(void);
void cReq_Create__FP18request_base_classUc(void);
void cReq_Done__FP18request_base_class(void);
void cReq_Is_Done__FP18request_base_class(void);
void fopOvlpReq_Cancel__FP21overlap_request_class(void);
void fopOvlpReq_Is_PeektimeLimit(void);
void fopOvlpReq_OverlapClr__FP21overlap_request_class(void);
void fopOvlpReq_Request__FP21overlap_request_classsUs(void);
void fopOvlpReq_Handler__FP21overlap_request_class(void);
void fopOvlpReq_phase_Done__FP21overlap_request_class(void);
void fopOvlpReq_SetPeektime__FP21overlap_request_classUs(void);
void fopOvlpReq_Is_PeektimeLimit__FP21overlap_request_class(void);
void fopOvlpReq_phase_Done(void);
void func_8001E748(void);
void func_8001E794(void);
void func_8001E7E4(void);
void func_8001E854(void);
void func_8001E8A4(void);
void func_8001E904(void);
}

void fopOvlpReq_SetPeektime(overlap_request_class*, u16);

// additional symbols needed for f_op_overlap_req.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:24:53.163658
extern cPhs__Handler* phaseMethod[8];

int fopOvlpReq_phase_Done(overlap_request_class* pOvlpReq) {
    if (fpcM_Delete(pOvlpReq->field_0x20) == 1) {
        pOvlpReq->field_0x20 = 0;
        pOvlpReq->field_0x4 = 0;
        pOvlpReq->mPeektime = 0;
        pOvlpReq->field_0x8 = 0;
        pOvlpReq->field_0xc = 0;
        return 2;
    }
    return 0;
}

s32 fopOvlpReq_phase_IsDone(overlap_request_class* param_1) {
    cReq_Done((request_base_class*)param_1);
    return param_1->field_0x2-- <= 0 ? 2 : 0;
}

int fopOvlpReq_phase_IsWaitOfFadeout(overlap_request_class* pOvlpReq) {
    if (cReq_Is_Done((request_base_class*)(pOvlpReq->field_0x20 + 0xC4))) {
        pOvlpReq->field_0x8 = 0;
        return 2;
    }
    return 0;
}

int fopOvlpReq_phase_WaitOfFadeout(overlap_request_class* pOvlpReq) {
    if (pOvlpReq->mPeektime) {
        pOvlpReq->mPeektime--;
    }

    if (((u8)(pOvlpReq->field_0x0 & 0x3F)) == 2 && !pOvlpReq->mPeektime) {
        cReq_Command((request_base_class*)(pOvlpReq->field_0x20 + 0xC4), 2);
        return 2;
    }

    pOvlpReq->field_0x8 = 1;
    return 0;
}

int fopOvlpReq_phase_IsComplete(overlap_request_class* pOvlpReq) {
    if (cReq_Is_Done((request_base_class*)(pOvlpReq->field_0x20 + 0xC4))) {
        cReq_Done((request_base_class*)pOvlpReq);
        return 2;
    }
    return 0;
}

int fopOvlpReq_phase_IsCreated(overlap_request_class* pOvlpReq) {
    if (fpcM_IsCreating(pOvlpReq->field_0x14) == 0) {
        base_process_class* pBaseProc = fpcEx_SearchByID(pOvlpReq->field_0x14);
        if (!pBaseProc) {
            return 5;
        }
        pOvlpReq->field_0x20 = (u8*)pBaseProc;
        return 2;
    }
    return 0;
}

int fopOvlpReq_phase_Create(overlap_request_class* pOvlpReq) {
    fpcLy_SetCurrentLayer(pOvlpReq->pCurrentLayer);
    pOvlpReq->field_0x14 = fpcSCtRq_Request(fpcLy_CurrentLayer(), pOvlpReq->field_0x10, 0, 0, 0);
    return 2;
}

request_base_class* fopOvlpReq_Request(overlap_request_class* pOvlpReq, s16 param_2, u16 param_3) {
    if (pOvlpReq->field_0x4 == 1) {
        pOvlpReq = 0;
        return (request_base_class*)pOvlpReq;
    }

    cReq_Command((request_base_class*)pOvlpReq, 1);
    pOvlpReq->field_0x10 = param_2;
    cPhs_Set(&pOvlpReq->field_0x18, (cPhs__Handler*)phaseMethod);
    fopOvlpReq_SetPeektime(pOvlpReq, param_3);
    pOvlpReq->field_0x4 = 1;
    pOvlpReq->field_0x2 = 1;
    pOvlpReq->field_0x20 = 0;
    pOvlpReq->field_0x8 = 0;
    pOvlpReq->field_0xc = 0;
    pOvlpReq->pCurrentLayer = fpcLy_RootLayer();
    return (request_base_class*)pOvlpReq;
}

int fopOvlpReq_Handler(overlap_request_class* pOvlpReq) {
    int phsDo = cPhs_Do(&pOvlpReq->field_0x18, pOvlpReq);
    switch (phsDo) {
    case 2:
        return fopOvlpReq_Handler(pOvlpReq);
    case 0:
        return 0;
    case 1:
        return 0;
    case 4:
        return 4;
    case 3:
    case 5:
        return 5;
    default:
        return 5;
    }
}

int fopOvlpReq_Cancel(overlap_request_class* pOvlpReq) {
    return fopOvlpReq_phase_Done(pOvlpReq) == 2 ? 1 : 0;
}

int fopOvlpReq_Is_PeektimeLimit(overlap_request_class* pOvlpReq) {
    return pOvlpReq->mPeektime == 0 ? 1 : 0;
}

void fopOvlpReq_SetPeektime(overlap_request_class* pOvlpReq, u16 param_2) {
    if (0x7fff < param_2) {
        return;
    }
    pOvlpReq->mPeektime = param_2;
}

int fopOvlpReq_OverlapClr(overlap_request_class* pOvlpReq) {
    if ((u8)((pOvlpReq->field_0x0 >> 7) & 1) == 1 || !fopOvlpReq_Is_PeektimeLimit(pOvlpReq)) {
        return 0;
    }
    cReq_Create((request_base_class*)pOvlpReq, 2);
    return 1;
}