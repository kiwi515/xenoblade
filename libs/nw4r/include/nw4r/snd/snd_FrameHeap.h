#ifndef NW4R_SND_FRAME_HEAP_H
#define NW4R_SND_FRAME_HEAP_H
#include <nw4r/types_nw4r.h>
#include <nw4r/ut.h>
#include <revolution/MEM.h>

namespace nw4r {
namespace snd {
namespace detail {

class FrameHeap {
public:
    typedef void (*AllocCallback)(void* pBuffer, u32 size, void* pCallbackArg);

public:
    FrameHeap();
    ~FrameHeap();

    bool IsValid() const {
        return mHandle != NULL;
    }

    bool Create(void* pBase, u32 size);
    void Destroy();
    void Clear();
    void* Alloc(u32 size, AllocCallback pCallback, void* pCallbackArg);

    int SaveState();
    void LoadState(int id);

    int GetCurrentLevel() const;
    u32 GetFreeSize() const;

    bool NewSection();
    void ClearSection();

private:
    struct Block {
        NW4R_UT_LIST_NODE_DECL(); // at 0x0
        u32 mSize;                // at 0x8
        AllocCallback mCallback;  // at 0xc
        void* mCallbackArg;       // at 0x10

        Block(u32 size, AllocCallback pCallback, void* pCallbackArg)
            : mSize(size), mCallback(pCallback), mCallbackArg(pCallbackArg) {}

        ~Block() {
            if (mCallback != NULL) {
                mCallback(GetBufferAddr(), mSize, mCallbackArg);
            }
        }

        void* GetBufferAddr() {
            return ut::AddOffsetToPtr(this, scBlockBufferSize);
        }
    };

    NW4R_UT_LIST_TYPEDEF_DECL(Block);

    struct Section {
        NW4R_UT_LIST_NODE_DECL(); // at 0x0
        BlockList mList;          // at 0x8

        Section() {}

        ~Section() {
            for (BlockList::Iterator it = mList.GetEndIter();
                 it != mList.GetBeginIter();) {
                (--it)->~Block();
            }
        }

        void AppendBlock(Block* pBlock) {
            mList.PushBack(pBlock);
        }
    };

    NW4R_UT_LIST_TYPEDEF_DECL(Section);

    static const int scBlockBufferSize = ROUND_UP(sizeof(Block), 32);

private:
    MEMiHeapHead* mHandle;    // at 0x0
    SectionList mSectionList; // at 0x4
};

} // namespace detail
} // namespace snd
} // namespace nw4r

#endif
