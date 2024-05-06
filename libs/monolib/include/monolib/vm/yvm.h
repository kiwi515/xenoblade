#pragma once

#include "types.h"
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef struct SBOpcode{
    const char* name; //0x0
    s16 paramSize;
    s16 unk6;
} SBOpcode;

typedef struct VMMemory{
} VMMemory;

typedef struct RetVal{
    u8 type; //0x0
    int val; //0x4
} RetVal;

enum SBTypes {
    SBTYPE_0,
    SBTYPE_1,
    SBTYPE_2,
    SBTYPE_3
};

typedef struct _sVMThread{
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    u8 unk14[0x3C - 0x14];
    int unk3C;
    u8 unk40[0x10];
    BOOL waitMode; //0x50
    int wkIdx; //0x54
} _sVMThread;

typedef int(*PluginFunc)(_sVMThread* pThread);

typedef struct PluginFuncData{
	const char* name;
	PluginFunc func;
} PluginFuncData;

void vmInit();
void vmLink();
BOOL vmPluginRegist(const char* name, PluginFuncData* plugin_funcs);
int* vmArgPtrGet(_sVMThread*, int);
BOOL vmArgBoolGet(_sVMThread*);
int vmArgIntGet(int, int*); 
void vmArgFixedGet(_sVMThread*);
char* vmArgStringGet(_sVMThread*, UNKWORD);
void* vmArgFunctionGet(_sVMThread*, UNKWORD);
void* vmArgArrayGet(_sVMThread*, UNKWORD);
void* vmArgOCGet(_sVMThread*, UNKWORD);
void vmRetValSet(_sVMThread*, RetVal*);
void vmWaitModeSet();
int vmWkIdxGet(_sVMThread*);
void vmWkIdxSet(_sVMThread*);
int vmWkGet(_sVMThread*);


#ifdef __cplusplus
}
#endif