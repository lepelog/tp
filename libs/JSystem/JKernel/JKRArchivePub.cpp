//
// Generated By: dol2asm
// Translation Unit: JKRArchivePub
//

#include "JSystem/JKernel/JKRAramArchive.h"
#include "JSystem/JKernel/JKRAramPiece.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRCompArchive.h"
#include "JSystem/JKernel/JKRDvdArchive.h"
#include "JSystem/JKernel/JKRFileFinder.h"
#include "JSystem/JKernel/JKRFileLoader.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Declarations:
//

/* 802D5778-802D57E4 2D00B8 006C+00 2/2 0/0 0/0 .text check_mount_already__10JKRArchiveFlP7JKRHeap
 */
JKRArchive* JKRArchive::check_mount_already(s32 entryNum, JKRHeap* heap) {
    if (heap == NULL) {
        heap = JKRHeap::getCurrentHeap();
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->getVolumeType() == 'RARC') {
            JKRArchive* archive = (JKRArchive*)iterator.getObject();
            if (archive->mEntryNum == entryNum && archive->mHeap == heap) {
                archive->mMountCount++;
                return archive;
            }
        }
    }

    return NULL;
}

/* 802D57E4-802D5840 2D0124 005C+00 0/0 1/1 0/0 .text
 * mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection */
JKRArchive* JKRArchive::mount(const char* path, JKRArchive::EMountMode mountMode, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    s32 entryNum = DVDConvertPathToEntrynum(path);
    if (entryNum < 0)
        return NULL;

    return mount(entryNum, mountMode, heap, mountDirection);
}

/* 802D5840-802D58C8 2D0180 0088+00 0/0 1/1 0/0 .text
 * mount__10JKRArchiveFPvP7JKRHeapQ210JKRArchive15EMountDirection */
JKRArchive* JKRArchive::mount(void* ptr, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    JKRArchive* archive = check_mount_already((s32)ptr, heap);
    if (archive)
        return archive;

    int alignment;
    if (mountDirection == JKRArchive::MOUNT_DIRECTION_HEAD) {
        alignment = 4;
    } else {
        alignment = -4;
    }

    archive = new (heap, alignment) JKRMemArchive(ptr, 0xFFFF, JKRMEMBREAK_FLAG_UNKNOWN0);
    return archive;
}

/* 802D58C8-802D5A38 2D0208 0170+00 1/1 1/1 0/0 .text
 * mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection */
JKRArchive* JKRArchive::mount(s32 entryNum, JKRArchive::EMountMode mountMode, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    JKRArchive* archive = check_mount_already(entryNum, heap);
    if (archive != NULL) {
        return archive;
    } else {
        int alignment;
        if (mountDirection == JKRArchive::MOUNT_DIRECTION_HEAD) {
            alignment = 4;
        } else {
            alignment = -4;
        }

        JKRArchive* archive;
        switch (mountMode) {
        case JKRArchive::MOUNT_MEM:
            archive = new (heap, alignment) JKRMemArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_ARAM:
            archive = new (heap, alignment) JKRAramArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_DVD:
            archive = new (heap, alignment) JKRDvdArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_COMP:
            archive = new (heap, alignment) JKRCompArchive(entryNum, mountDirection);
            break;
        }

        if (archive && archive->getMountMode() == JKRArchive::UNKNOWN_MOUNT_MODE) {
            delete archive;
            archive = NULL;
        }

        return archive;
    }
}

/* 802D5A38-802D5AC0 2D0378 0088+00 1/0 4/0 0/0 .text            becomeCurrent__10JKRArchiveFPCc */
bool JKRArchive::becomeCurrent(const char* path) {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    bool found = dirEntry != NULL;
    if (found) {
        setCurrentVolume(this);
        setCurrentDirID(dirEntry - mNodes);
    }

    return found;
}

/* 802D5AC0-802D5B38 2D0400 0078+00 0/0 1/1 0/0 .text
 * getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl       */
bool JKRArchive::getDirEntry(SDirEntry* dirEntry, u32 index) const {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (!fileEntry)
        return false;

    dirEntry->other.flags = fileEntry->getFlags();
    dirEntry->other.id = fileEntry->getFileID();
    dirEntry->name = mStringTable + fileEntry->getNameOffset();
    return true;
}

/* 802D5B38-802D5BE8 2D0478 00B0+00 0/0 9/9 0/0 .text
 * getGlbResource__10JKRArchiveFUlPCcP10JKRArchive              */
void* JKRArchive::getGlbResource(u32 param_1, const char* path, JKRArchive* archive) {
    void* resource = NULL;
    if (archive) {
        return archive->getResource(param_1, path);
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->getVolumeType() == 'RARC') {
            resource = iterator->getResource(param_1, path);
            if (resource)
                break;
        }
    }

    return resource;
}

/* 802D5BE8-802D5C64 2D0528 007C+00 1/0 4/0 0/0 .text            getResource__10JKRArchiveFPCc */
void* JKRArchive::getResource(const char* path) {
    SDIFileEntry* fileEntry;
    if (*path == '/') {
        fileEntry = findFsResource(path + 1, 0);
    } else {
        fileEntry = findFsResource(path, getCurrentDirID());
    }

    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

/* 802D5C64-802D5CE4 2D05A4 0080+00 1/0 4/0 0/0 .text            getResource__10JKRArchiveFUlPCc */
void* JKRArchive::getResource(u32 type, const char* path) {
    SDIFileEntry* fileEntry;
    if (type == 0 || type == '????') {
        fileEntry = findNameResource(path);
    } else {
        fileEntry = findTypeResource(type, path);
    }

    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

/* 802D5CE4-802D5D38 2D0624 0054+00 0/0 1/1 0/0 .text            getIdxResource__10JKRArchiveFUl */
void* JKRArchive::getIdxResource(u32 index) {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

/* 802D5D38-802D5D8C 2D0678 0054+00 0/0 1/1 0/0 .text            getResource__10JKRArchiveFUs */
void* JKRArchive::getResource(u16 id) {
    SDIFileEntry* fileEntry = findIdResource(id);
    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

/* 802D5D8C-802D5E30 2D06CC 00A4+00 1/0 4/0 0/0 .text readResource__10JKRArchiveFPvUlUlPCc */
u32 JKRArchive::readResource(void* buffer, u32 bufferSize, u32 type, const char* path) {
    SDIFileEntry* fileEntry;
    if (type == 0 || type == '????') {
        fileEntry = findNameResource(path);
    } else {
        fileEntry = findTypeResource(type, path);
    }

    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

/* 802D5E30-802D5ECC 2D0770 009C+00 1/0 4/0 0/0 .text            readResource__10JKRArchiveFPvUlPCc
 */
u32 JKRArchive::readResource(void* buffer, u32 bufferSize, const char* path) {
    SDIFileEntry* fileEntry;
    if (*path == '/') {
        fileEntry = findFsResource(path + 1, 0);
    } else {
        fileEntry = findFsResource(path, getCurrentDirID());
    }

    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

/* 802D5ECC-802D5F40 2D080C 0074+00 0/0 7/7 1/1 .text readIdxResource__10JKRArchiveFPvUlUl */
u32 JKRArchive::readIdxResource(void* buffer, u32 bufferSize, u32 index) {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

/* 802D5F40-802D5FB4 2D0880 0074+00 0/0 1/1 0/0 .text            readResource__10JKRArchiveFPvUlUs
 */
u32 JKRArchive::readResource(void* buffer, u32 bufferSize, u16 id) {
    SDIFileEntry* fileEntry = findIdResource(id);
    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

/* 802D5FB4-802D603C 2D08F4 0088+00 1/0 2/0 0/0 .text            removeResourceAll__10JKRArchiveFv
 */
void JKRArchive::removeResourceAll(void) {
    if (mArcInfoBlock && mMountMode != MOUNT_MEM) {
        SDIFileEntry* fileEntry = mFiles;
        for (int i = 0; i < mArcInfoBlock->num_file_entries; fileEntry++, i++) {
            if (fileEntry->data) {
                JKRFreeToHeap(mHeap, fileEntry->data);
                fileEntry->data = NULL;
            }
        }
    }
}

/* 802D603C-802D609C 2D097C 0060+00 1/0 2/0 0/0 .text            removeResource__10JKRArchiveFPv */
bool JKRArchive::removeResource(void* resource) {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return false;

    fileEntry->data = NULL;
    JKRFreeToHeap(mHeap, resource);
    return true;
}

/* 802D609C-802D60D8 2D09DC 003C+00 1/0 4/0 0/0 .text            detachResource__10JKRArchiveFPv */
bool JKRArchive::detachResource(void* resource) {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return false;

    fileEntry->data = NULL;
    return true;
}

/* 802D60D8-802D610C 2D0A18 0034+00 1/0 4/0 0/0 .text            getResSize__10JKRArchiveCFPCv */
u32 JKRArchive::getResSize(const void* resource) const {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return -1;

    return fileEntry->data_size;
}

/* 802D610C-802D6150 2D0A4C 0044+00 0/0 1/1 0/0 .text            countResource__10JKRArchiveCFv */
u32 JKRArchive::countResource(void) const {
    u32 count = 0;
    for (int i = 0; i < mArcInfoBlock->num_file_entries; i++) {
        if (mFiles[i].isUnknownFlag1()) {
            count++;
        }
    }
    return count;
}

/* 802D6150-802D61B0 2D0A90 0060+00 1/0 4/0 0/0 .text            countFile__10JKRArchiveCFPCc */
u32 JKRArchive::countFile(const char* path) const {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    if (dirEntry) {
        return dirEntry->num_entries;
    }

    return 0;
}

/* 802D61B0-802D625C 2D0AF0 00AC+00 1/0 4/0 0/0 .text            getFirstFile__10JKRArchiveCFPCc */
JKRFileFinder* JKRArchive::getFirstFile(const char* path) const {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    if (dirEntry) {
        // don't know what is correct here... for now we're casting away const
        return new (JKRHeap::getSystemHeap(), 0)
            JKRArcFinder((JKRArchive*)this, dirEntry->first_file_index, (u32)dirEntry->num_entries);
    }

    return NULL;
}

/* 802D625C-802D6294 2D0B9C 0038+00 0/0 2/2 0/0 .text            getFileAttribute__10JKRArchiveCFUl
 */
u32 JKRArchive::getFileAttribute(u32 index) const {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        return fileEntry->getFlags();
    }

    return 0;
}
