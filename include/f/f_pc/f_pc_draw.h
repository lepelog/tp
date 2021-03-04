#ifndef F_PC_DRAW_H_
#define F_PC_DRAW_H_

#include "SComponent/c_node_iter.h"
#include "f/f_pc/f_pc_base.h"
#include "global.h"

typedef s32 (*cNdIt_MethodFuncFunc)(cNdIt_MethodFunc);

s32 fpcDw_Execute(base_process_class* pProc);
s32 fpcDw_Handler(cNdIt_MethodFuncFunc param_1, cNdIt_MethodFunc param_2);

#endif