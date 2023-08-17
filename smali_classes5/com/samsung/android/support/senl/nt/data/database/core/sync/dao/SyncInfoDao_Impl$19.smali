.class Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;->getAllLiveDatas(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_id"

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;->a(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serverId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v6, "clientId"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "clientModifiedTime"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isDirtyFolder"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "clientModifiedTimeFolder"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "lastModifiedTimeFolder"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "isSyncFailed"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "isExtraInfoDirty"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "commitId"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "deviceName"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "conflict"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "conflictStrategy"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "coeditResourceId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "coeditCheckPoint"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v18, v5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;-><init>()V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v20, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move/from16 v20, v3

    move-object/from16 v3, v19

    :goto_1
    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setNoteServerId(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setNoteClientId(Ljava/lang/String;)V

    move/from16 v19, v4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setClientModifiedTime(J)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setIsDirtyFolder(I)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setClientModifiedTimeFolder(J)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setLastModifiedTimeFolder(J)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setIsSyncFailed(I)V

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setIsExtraInfoDirty(I)V

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setCommitId(Ljava/lang/String;)V

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setDeviceName(Ljava/lang/String;)V

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setConflict(I)V

    move/from16 v3, v18

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setConflictStrategy(I)V

    move/from16 v4, v16

    move/from16 v16, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setCoeditResourceId(Ljava/lang/String;)V

    move/from16 v18, v3

    move/from16 v0, v17

    move/from16 v17, v4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setCoeditCheckPoint(J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v23, v17

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v16, v23

    goto/16 :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao_Impl$19;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
