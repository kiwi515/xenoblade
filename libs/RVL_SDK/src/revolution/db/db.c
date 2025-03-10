#include <revolution/BASE.h>
#include <revolution/DB.h>
#include <revolution/OS.h>

BOOL DBVerbose;
OSDebugInterface* __DBInterface;

void DBInit(void) {
    __DBInterface =
        (OSDebugInterface*)OSPhysicalToCached(OS_PHYS_DEBUG_INTERFACE);
    __DBInterface->exceptionHook = OSCachedToPhysical(__DBExceptionDestination);
    DBVerbose = TRUE;
}

//unused
void DBIsDebuggerPresent(){
}

void __DBExceptionDestinationAux(void) {
    const void* physCtx = (void*)OS_PHYS_CURRENT_CONTEXT_PHYS;
    OSContext* ctx = (OSContext*)OSPhysicalToCached(*(u32*)physCtx);
    OSReport("DBExceptionDestination\n");
    OSDumpContext(ctx);
    PPCHalt();
}

asm void __DBExceptionDestination(void){
    // clang-format off
    #ifdef __MWERKS__
    nofralloc
    
    // Set up MMU
    mfmsr r3
    ori r3, r3, (MSR_IR | MSR_DR)
    mtmsr r3

    b __DBExceptionDestinationAux
    #endif
    // clang-format on
}

BOOL __DBIsExceptionMarked(u8 exc) {
    return __DBInterface->exceptionMask & (1 << exc);
}

//unused
void __DBMarkException(){
}

//unused
void __DBSetPresent(){
}

void DBPrintf(const char* msg, ...) {
#pragma unused(msg)
}
