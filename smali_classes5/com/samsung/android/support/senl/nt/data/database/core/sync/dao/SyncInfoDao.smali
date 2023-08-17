.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = " ORDER BY CASE WHEN :isDesc=1 THEN serverTimestamp END DESC, CASE WHEN :isDesc=0 THEN serverTimestamp END ASC"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sync_info"
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract dumpSyncInfo()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sync_info ORDER BY clientId ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLiveDatas(Z)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId ORDER BY CASE WHEN :isDesc=1 THEN serverTimestamp END DESC, CASE WHEN :isDesc=0 THEN serverTimestamp END ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCheckPoint(Ljava/lang/String;)J
    .annotation build Landroidx/room/Query;
        value = "SELECT coeditCheckPoint FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getCommitId(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT commitId FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getConflictStrategy(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT conflictStrategy FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getConflictStrategy_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT conflictStrategy FROM sync_info WHERE clientId=:clientId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT deviceName FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getDirtyCountOfNoteExtraInfo()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(sdoc.UUID)  FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId WHERE isExtraInfoDirty=1 AND (sdoc.filePath LIKE \'%.sdoc\')"
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sync_info WHERE clientId=:clientId LIMIT 1"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sync_info WHERE clientId=:clientId LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntityByServerId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sync_info WHERE serverId=:serverId LIMIT 1"
    .end annotation
.end method

.method public abstract getLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM sync_info WHERE clientId=:clientId LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoteDirtyList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId WHERE isDirty=1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoteFilePathByServerId(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.filePath  FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId WHERE sync_info.serverId=:serverId LIMIT 1"
    .end annotation
.end method

.method public abstract getNoteSyncEntryByServerId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/NoteSyncEntry;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.* , sync_info.clientModifiedTime AS clientModifiedTime, sync_info.serverId AS serverId FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId WHERE sync_info.serverId=:serverId LIMIT 1"
    .end annotation
.end method

.method public abstract getResourceId(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT coeditResourceId FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getServerId(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT serverId FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract getSyncList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.* , sync_info.clientModifiedTime AS clientModifiedTime, sync_info.serverId AS serverId FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/NoteSyncEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByDirtyForExtraInfo(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT sdoc.UUID  FROM sdoc LEFT JOIN sync_info ON sdoc.UUID = sync_info.clientId WHERE isExtraInfoDirty=:dirty  AND (sdoc.filePath LIKE \'%.sdoc\')"
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

.method public abstract getUuidListByConflictStrategy(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT clientId FROM sync_info WHERE `conflict`=1 AND conflictStrategy=:conflictStrategy"
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

.method public abstract insertOrReplace(Ljava/lang/String;Ljava/lang/Long;)V
    .annotation build Landroidx/room/Query;
        value = "INSERT OR REPLACE INTO sync_info(clientId, clientModifiedTime) VALUES(:uuid, :serverTimestamp)"
    .end annotation
.end method

.method public abstract isConflicted(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT `conflict` FROM sync_info WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract isConflicted_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT `conflict` FROM sync_info WHERE clientId=:clientId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isExistByClientId(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(clientId) FROM sync_info WHERE clientId=:clientId LIMIT 1"
    .end annotation
.end method

.method public abstract rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/RawQuery;
        observedEntities = {
            Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
        }
    .end annotation
.end method

.method public abstract resetAllIsSyncFailed(I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE sync_info SET isSyncFailed=:value "
    .end annotation
.end method

.method public abstract setExtraInfoDirtyInternal(Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE sync_info SET isExtraInfoDirty=:dirty  WHERE clientId=:docUuid"
    .end annotation
.end method

.method public abstract updateCheckPoint(Ljava/lang/String;J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET coeditCheckPoint=:checkPoint WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateCommitId(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET commitId=:commitId WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateConflict(Ljava/lang/String;ILjava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET `conflict`=:isConflicted , deviceName=:deviceName , conflictStrategy=:conflictStrategy WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateConflictStrategy(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET conflictStrategy=:conflictStrategy WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET deviceName=:deviceName WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateIsDirtyByIsSyncFailed(II)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE sdoc SET isDirty=:isDirtyFlag  WHERE UUID IN (SELECT clientId FROM sync_info WHERE isSyncFailed=:isSyncFailedFlag)"
    .end annotation
.end method

.method public abstract updateIsSyncFailed(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE sync_info SET isSyncFailed=:isSyncFailed  WHERE clientId=:docUuid"
    .end annotation
.end method

.method public abstract updateResourceId(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET coeditResourceId=:resourceId WHERE clientId=:clientId"
    .end annotation
.end method

.method public abstract updateServerId(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT sync_info SET serverId=:serverId WHERE clientId=:clientId"
    .end annotation
.end method
