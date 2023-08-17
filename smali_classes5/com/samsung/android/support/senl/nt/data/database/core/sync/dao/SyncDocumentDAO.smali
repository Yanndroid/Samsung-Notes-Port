.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;,
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidServerTimestampTuple;
    }
.end annotation


# static fields
.field public static final FEED_SYNC_ENTRY_LIST:Ljava/lang/String; = " sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.msLastSyncTime, sdoc.msSyncAccountId, sdoc.msSyncDocumentUuid, sdoc.createdAt "

.field private static final ORDER_BY_DELETED_AND_SERVER_TIMESTAMP:Ljava/lang/String; = " ORDER BY CASE isDeleted   WHEN 1 THEN 0   WHEN 0 THEN 1   WHEN 2 THEN 2  END,  CASE WHEN :isDesc=1 THEN serverTimestamp END DESC, CASE WHEN :isDesc=0 THEN serverTimestamp END ASC"

.field public static final SHARE_SYNC_ENTRY_LIST:Ljava/lang/String; = " sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.mdeSpaceId, sdoc.mdeItemId, sdoc.createdAt "

.field public static final SYNC_DOC_INFO_LIST:Ljava/lang/String; = " sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dumpDocument()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sdoc ORDER BY UUID ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryIsDirty(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT categoryisDirty FROM sdoc WHERE UUID=:docUuid LIMIT 1"
    .end annotation
.end method

.method public abstract getCategoryServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;
    .annotation build Landroidx/room/Query;
        value = "SELECT categoryserverTimestamp FROM sdoc WHERE UUID=:docUuid LIMIT 1"
    .end annotation
.end method

.method public abstract getCoeditDocUuidList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.mdeSpaceId, sdoc.mdeItemId, sdoc.createdAt  FROM sdoc WHERE sdoc.categoryUUID =\'coedit:///\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;",
            ">;"
        }
    .end annotation
.end method

.method public getCoeditDocUuidListByUuidList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/QueryUtils;->getCommaSeparatedListValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.mdeSpaceId, sdoc.mdeItemId, sdoc.createdAt  FROM sdoc WHERE sdoc.UUID IN ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ) AND sdoc.categoryUUID =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "coedit:///"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->rawQueryForShareSyncEntryList(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract getCorruptedValue(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.corrupted FROM sdoc  WHERE sdoc.UUID =:docUuid"
    .end annotation
.end method

.method public abstract getCountIsDirty(ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM sdoc WHERE isDirty=:dirtyFlag AND mdeSpaceId=:mdeSpaceId"
    .end annotation
.end method

.method public abstract getCountIsFolderDirty()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(_id) FROM sdoc WHERE mdeSpaceId==\'\' AND categoryisDirty=1 AND filePath LIKE \'%.sdocx\'"
    .end annotation
.end method

.method public abstract getDocSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  FROM sdoc WHERE sdoc.UUID =:docUuid"
    .end annotation
.end method

.method public abstract getFolderNodeItemList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID AS uUid,  \'\' AS parentFolderNodeId,  sdoc.isDeleted AS isDeleted,  sdoc.categoryserverTimestamp AS syncModifiedTime,  sdoc.createdAt AS createdTime,  sdoc.lastModifiedAt AS lastModifiedTime,  sdoc.recycle_bin_time_moved AS recyclerBinMovedTime,  sdoc.absolutePath AS restorePath,  0 AS isSyncWithMS,  -1 AS displayNameColor,  0 AS deleted,  999999 AS reorder,  sdoc.categoryUUID AS categoryUuid  FROM sdoc WHERE mdeSpaceId=\'\' AND categoryUUID !=\'coedit:///\' AND UUID NOT LIKE \'%_COEDIT\' AND filePath LIKE \'%.sdocx\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGcsOwnerId(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.mdeOwnerId FROM sdoc  WHERE sdoc.UUID =:docUuid"
    .end annotation
.end method

.method public abstract getIsCategoryDirtyDocList(IZLjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sdoc WHERE categoryisDirty=:dirtyFlag AND mdeSpaceId=:mdeSpaceId ORDER BY CASE isDeleted   WHEN 1 THEN 0   WHEN 0 THEN 1   WHEN 2 THEN 2  END,  CASE WHEN :isDesc=1 THEN serverTimestamp END DESC, CASE WHEN :isDesc=0 THEN serverTimestamp END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsDirtyDocList(IZLjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sdoc WHERE isDirty=:dirtyFlag AND mdeSpaceId=:mdeSpaceId ORDER BY CASE isDeleted   WHEN 1 THEN 0   WHEN 0 THEN 1   WHEN 2 THEN 2  END,  CASE WHEN :isDesc=1 THEN serverTimestamp END DESC, CASE WHEN :isDesc=0 THEN serverTimestamp END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockAccountGuid(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT lockAccountGuid FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getMdeExtra(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.mdeExtra FROM sdoc  WHERE sdoc.UUID =:docUuid"
    .end annotation
.end method

.method public abstract getNormalSdocxUuidList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE filePath LIKE \'%.sdocx\' AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoteDeleted(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT isDeleted FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getNoteFeedEntryByUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.msLastSyncTime, sdoc.msSyncAccountId, sdoc.msSyncDocumentUuid, sdoc.createdAt  FROM sdoc  WHERE sdoc.UUID =:uuid"
    .end annotation
.end method

.method public abstract getNoteFeedListByCategoryUuid(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.msLastSyncTime, sdoc.msSyncAccountId, sdoc.msSyncDocumentUuid, sdoc.createdAt  FROM sdoc  WHERE sdoc.categoryUUID =:categoryUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoteFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT filePath FROM sdoc WHERE mdeSpaceId=:spaceId AND mdeItemId=:itemId LIMIT 1"
    .end annotation
.end method

.method public abstract getNoteIsLock(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT isLock FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getOldDirtyCountOfNoteCategory()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID) FROM sdoc  WHERE filePath LIKE \'%.sdoc\' AND categoryisDirty=1 AND mdeSpaceId=\'\'"
    .end annotation
.end method

.method public abstract getOldUuidAndNoteCategoryTimeListInternal()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID , categoryserverTimestamp FROM sdoc WHERE filePath LIKE \'%.sdoc\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSdocxUUIDListByFolderId(ILjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc  WHERE categoryUUID =:folderId AND isDeleted=:deleteType AND filePath LIKE \'%.sdocx\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;
    .annotation build Landroidx/room/Query;
        value = "SELECT serverTimestamp FROM sdoc WHERE UUID=:docUuid LIMIT 1"
    .end annotation
.end method

.method public abstract getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT  sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty  ,sdoc.mdeSpaceId, sdoc.mdeItemId, sdoc.createdAt  FROM sdoc WHERE sdoc.UUID =:docUuid"
    .end annotation
.end method

.method public abstract getTitle(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT title FROM sdoc WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getUUIDListByCategory(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc  WHERE categoryUUID =:categoryUUID AND isDeleted=0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByCategoryIncludeDeleted(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc  WHERE categoryUUID =:categoryUUID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByDeleted(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND isDeleted=:deleted AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidAndNoteTimeList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID, sdoc.serverTimestamp  FROM sdoc WHERE (sdoc.filePath LIKE \'%.sdoc\')"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidServerTimestampTuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM sdoc WHERE mdeSpaceId=:spaceId AND mdeItemId=:itemId LIMIT 1"
    .end annotation
.end method

.method public abstract getUuidListByCategoryDirty(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND categoryisDirty =:dirty AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidListByDirty(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND isDirty =:dirty AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidListLockedNote(I)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND isLock=:lockType AND isDeleted=0 AND  mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidListLockedNoteIncludeDeleted(I)Ljava/util/List;
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND isLock=:lockType AND isDeleted!=1 AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidListOldSync()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID FROM sdoc WHERE filePath LIKE \'%.sdoc\' AND mdeSpaceId=\'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isExist(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID) from sdoc WHERE UUID=:sDocUUID"
    .end annotation
.end method

.method public abstract moveAllToRoot()V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=\'uncategorized:///\' WHERE categoryUUID != \'trash:///\'"
    .end annotation
.end method

.method public abstract rawQueryForDocSyncEntryList(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rawQueryForShareSyncEntryList(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeByUuidInSync(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=1 , mdeSpaceId=\'\' , mdeItemId=\'\' WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract repairOldSharedNotesCategoryUuid()V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=\'shared:///\' WHERE categoryUUID != \'shared:///\' AND mdeSpaceId != \'\' AND categoryUUID !=\'coedit:///\'"
    .end annotation
.end method

.method public abstract setCoeditSpaceId(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET mdeSpaceId=:spaceId WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract setLastMappedAtList(Ljava/lang/String;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET lastMappedAt=:lastMappedAt  WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract setMdeExtra(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET mdeExtra=:mdeExtra WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract setMdeItemId(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET mdeItemId=:itemId WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract setNoteFolder(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:folderUUID WHERE UUID=:sDocUUID"
    .end annotation
.end method

.method public abstract updateAllCoeditNotesAsRead(J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET firstOpendAt=:firstOpendAt WHERE categoryUUID=\'coedit:///\'"
    .end annotation
.end method

.method public abstract updateCategoryByCategoryUuidWithCategoryServerTimestamp(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:toCategoryUuid , categoryisDirty=1  , categoryserverTimestamp=:serverTimestamp WHERE categoryUUID=:fromCategoryUuid"
    .end annotation
.end method

.method public abstract updateCategoryByCategoryUuidWithCategoryServerTimestampIncrease(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:toCategoryUuid , categoryisDirty=1  , categoryserverTimestamp=:serverTimestamp WHERE categoryUUID=:fromCategoryUuid"
    .end annotation
.end method

.method public abstract updateCategoryServerTimestamp(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryserverTimestamp=:serverTime WHERE UUID=:docUUID"
    .end annotation
.end method

.method public abstract updateCreatedAt(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET createdAt=:createdAt WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateDirty(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDirty=:isDirty WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateDirtyAndTimestamp(Ljava/lang/String;IJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDirty=:isDirty , serverTimestamp=:serverTimestamp WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateDirtyCategory(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryisDirty=:categoryIsDirty WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateEntityByDeleteSdocToDelete(Ljava/lang/String;IIJIJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:serverDeleted , isDirty=:isDirty , serverTimestamp=:serverTimestamp , categoryisDirty=:categoryIsDirty , categoryserverTimestamp=:categoryServerTimestamp WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateEntityByDeleteSdocToRecycleBin(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:serverDeleted , recycle_bin_time_moved=:recycleBinTimeMoved , categoryUUID=:categoryUuid , absolutePath=:absolutePath , categoryisDirty=:categoryIsDirty , categoryserverTimestamp=:categoryServerTimestamp WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateEntityByDeleteSdocToRecycleBinInSync(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:serverDeleted , recycle_bin_time_moved=:recycleBinTimeMoved , categoryUUID=:categoryUuid , absolutePath=:absolutePath WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateEntityByRecoverySDoc(Ljava/lang/String;IJILjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDirty=:dirtyFlag , serverTimestamp=:serverTime , isDeleted=:isDeleted , categoryUUID=:categoryUuid WHERE UUID=:sDocUUID"
    .end annotation
.end method

.method public abstract updateEntityByRestoreSDoc(Ljava/lang/String;IIIJLjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:isDeleted , recycle_bin_time_moved=:recyclerMovedTime , categoryisDirty=:categoryIsDirty , categoryserverTimestamp=:currentTime , categoryUUID=:categoryUuid WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateEntityByRestoreSDocInSync(Ljava/lang/String;IILjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:isDeleted , recycle_bin_time_moved=:recyclerMovedTime , categoryUUID=:categoryUuid WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateEntityBySetNoteFolder(Ljava/lang/String;ILjava/lang/String;JIJLjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:isDeleted , categoryUUID=:folderUUID , categoryserverTimestamp=:syncModifiedTime , categoryisDirty=:dirtyFlag , recycle_bin_time_moved=:recyclerBinTimeMoved , absolutePath=:restorePath WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateFavoriteInSync(Ljava/lang/String;Z)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isFavorite=:isFavorite WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateFirstOpenedAt(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET firstOpendAt=:firstOpenedAt WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateIsDeleted(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isDeleted=:serverDeleted WHERE UUID=:serverUUID"
    .end annotation
.end method

.method public abstract updateModifiedTime(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET lastModifiedAt=:modifiedTime WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateMsConnectedNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET msSyncAccountId=:accountId , msSyncDocumentUuid=:connectedNotesId , msLastSyncTime=serverTimestamp , categoryisDirty=:isCategoryDirty WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateMsConnectedNotesId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET msSyncAccountId=:accountId , msSyncDocumentUuid=:connectedNotesId WHERE UUID=:docUuid"
    .end annotation
.end method

.method public abstract updateNoteCategory(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:categoryUUID WHERE UUID=:sdocUUID AND filePath LIKE \'%.sdoc\'"
    .end annotation
.end method

.method public abstract updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:categoryUUID , categoryisDirty=:dirtyFlag , categoryserverTimestamp=:categoryServerTime WHERE UUID=:sdocUUID"
    .end annotation
.end method

.method public abstract updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET categoryUUID=:categoryUUID , categoryisDirty=:dirtyFlag , categoryserverTimestamp=:categoryServerTime , absolutePath=:absPath WHERE UUID=:sdocUUID"
    .end annotation
.end method

.method public abstract updateNoteFavoriteAndCategoryDirtyTimestamp(Ljava/lang/String;IJ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isFavorite=:favorite , categoryserverTimestamp=:currentTime  , categoryisDirty=1 WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateNoteFavoriteInSync(Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET isFavorite=:favorite WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateRecycleBinResolverUpdateTimeMoved(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET recycle_bin_time_moved=:recyclerBinMovedTime WHERE UUID=:uuid"
    .end annotation
.end method

.method public abstract updateServerTimestamp(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET serverTimestamp=:serverTime WHERE UUID=:docUUID"
    .end annotation
.end method

.method public abstract updateSyncName(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sdoc SET noteName=:syncName WHERE UUID=:docUuid"
    .end annotation
.end method
