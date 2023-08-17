.class Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$3;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getNoteServerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getNoteServerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getNoteClientId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getNoteClientId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getClientModifiedTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getIsDirtyFolder()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getClientModifiedTimeFolder()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getLastModifiedTimeFolder()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getIsSyncFailed()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getIsExtraInfoDirty()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getCommitId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getCommitId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getConflict()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getConflictStrategy()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getCoeditResourceId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getCoeditResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0xf

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getCoeditCheckPoint()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `sync_info` SET `_id` = ?,`serverId` = ?,`clientId` = ?,`clientModifiedTime` = ?,`isDirtyFolder` = ?,`clientModifiedTimeFolder` = ?,`lastModifiedTimeFolder` = ?,`isSyncFailed` = ?,`isExtraInfoDirty` = ?,`commitId` = ?,`deviceName` = ?,`conflict` = ?,`conflictStrategy` = ?,`coeditResourceId` = ?,`coeditCheckPoint` = ? WHERE `_id` = ?"

    return-object v0
.end method
