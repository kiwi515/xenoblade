#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/ut.h>

namespace nw4r {
namespace ut {

NW4R_UT_RTTI_DEF_DERIVED(FileStream, IOStream);

void FileStream::Cancel() {}

bool FileStream::CancelAsync(AsyncCallback callback, void* arg) {
#pragma unused(callback)
#pragma unused(arg)
    return true;
}

u32 FileStream::FilePosition::Skip(s32 offset) {
    if (offset != 0) {
        s64 newOffset = mFileOffset + offset;
        mFileOffset = Clamp<s64>(newOffset, 0, mFileSize);
    }

    return mFileOffset;
}

u32 FileStream::FilePosition::Append(s32 offset) {
    s64 newOffset = mFileOffset + offset;

    if (newOffset < 0) {
        mFileOffset = 0;
    } else {
        mFileOffset = newOffset;
        mFileSize = Max(mFileOffset, mFileSize);
    }

    return mFileOffset;
}

void FileStream::FilePosition::Seek(s32 offset, u32 origin) {
    switch (origin) {
    case SEEK_ORIGIN_BEG:
        mFileOffset = 0;
        break;
    case SEEK_ORIGIN_END:
        mFileOffset = mFileSize;
        break;
    case SEEK_ORIGIN_CUR:
    default:
        break;
    }

    Skip(offset);
}

// TODO: This should not be necessary. Because of nw4r::snd?
DECOMP_FORCEACTIVE(ut_FileStream_cpp, FileStream::GetRuntimeTypeInfo);

} // namespace ut
} // namespace nw4r
