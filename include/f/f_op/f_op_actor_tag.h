#ifndef F_OP_ACTOR_TAG_H_
#define F_OP_ACTOR_TAG_H_

#include "SComponent/c_tag.h"
#include "global.h"

// f_op_actor_tag::g_fopAcTg_Queue
extern node_list_class lbl_803A35E0;

extern "C" {

u32 fopAcTg_ToActorQ__FP16create_tag_class(create_tag_class* c);
u32 fopAcTg_ActorQTo__FP16create_tag_class(create_tag_class* c);
u32 fopAcTg_Init__FP16create_tag_classPv(create_tag_class* c, void* data);
}

#endif