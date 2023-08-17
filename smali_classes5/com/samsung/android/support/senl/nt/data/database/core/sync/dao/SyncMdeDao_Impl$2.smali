.class Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;->internalRawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
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
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;

.field public final synthetic val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;->a(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "UUID"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "isDeleted"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isDirty"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "recommendedTitle"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "content"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "displayContent"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "createdAt"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "lastModifiedAt"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "vrUUID"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "contentUUID"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "firstContentType"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "secondContentType"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "strokeUUID"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "strokeRatio"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "categoryUUID"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "filePath"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "isFavorite"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "isLock"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "isSaving"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "reminderTriggerTime"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "reminderRequestCode"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "recycle_bin_time_moved"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "contentSecureVersion"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "size"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "displayTitle"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "saveType"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "firstOpendAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "secondOpenedAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "lastOpenedAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "importedAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "recommendedAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    const-string v1, "lastMappedAt"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    const-string v1, "mdeSpaceId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v36, v1

    const-string v1, "mdeItemId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v37, v1

    const-string v1, "mdeExtra"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v38, v1

    const-string v1, "mdeGroupId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v39, v1

    const-string v1, "mdeOwnerId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v40, v1

    const-string v1, "firstHandwritingHeight"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v41, v1

    const-string v1, "deleteRecommended"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v42, v1

    const-string v1, "absolutePath"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v43, v1

    const-string v1, "backgroundColor"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v44, v1

    const-string v1, "backgroundColorInverted"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v45, v1

    const-string v1, "lockAccountGuid"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v46, v1

    const-string v1, "corrupted"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v47, v1

    const-string v1, "pageMode"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v48, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v49, v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_33

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;-><init>()V

    move-object/from16 v50, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    move-object/from16 v1, v51

    :goto_1
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setId(Ljava/lang/Long;)V

    const/4 v1, -0x1

    :cond_1
    if-eq v3, v1, :cond_2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    const/4 v1, -0x1

    :cond_2
    if-eq v5, v1, :cond_3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    const/4 v1, -0x1

    :cond_3
    if-eq v6, v1, :cond_4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    const/4 v1, -0x1

    :cond_4
    if-eq v7, v1, :cond_5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setTitle(Ljava/lang/String;)V

    const/4 v1, -0x1

    :cond_5
    if-eq v8, v1, :cond_6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecommendedTitle(Ljava/lang/String;)V

    const/4 v1, -0x1

    :cond_6
    if-eq v9, v1, :cond_7

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/NotesDataConverter;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContent(Ljava/lang/String;)V

    const/4 v1, -0x1

    :cond_7
    if-eq v10, v1, :cond_8

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDisplayContent([B)V

    const/4 v1, -0x1

    :cond_8
    if-eq v11, v1, :cond_9

    move/from16 v51, v0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    const/4 v0, -0x1

    goto :goto_2

    :cond_9
    move/from16 v51, v0

    move v0, v1

    :goto_2
    if-eq v12, v0, :cond_a

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    const/4 v0, -0x1

    :cond_a
    if-eq v13, v0, :cond_b

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setVrUuid(Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_b
    if-eq v14, v0, :cond_c

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentUuid(Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_c
    if-eq v15, v0, :cond_e

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_3

    :cond_d
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstContentType(Ljava/lang/Integer;)V

    move/from16 v0, v49

    const/4 v1, -0x1

    goto :goto_4

    :cond_e
    move v1, v0

    move/from16 v0, v49

    :goto_4
    if-eq v0, v1, :cond_10

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_5

    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setSecondContentType(Ljava/lang/Integer;)V

    move/from16 v49, v0

    move/from16 v1, v16

    const/4 v0, -0x1

    goto :goto_6

    :cond_10
    move/from16 v49, v0

    move v0, v1

    move/from16 v1, v16

    :goto_6
    if-eq v1, v0, :cond_11

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setStrokeUuid(Ljava/lang/String;)V

    move/from16 v16, v1

    move/from16 v0, v17

    const/4 v1, -0x1

    goto :goto_7

    :cond_11
    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v17

    :goto_7
    if-eq v0, v1, :cond_13

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_8

    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_8
    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setStrokeRatio(Ljava/lang/Float;)V

    move/from16 v17, v0

    move/from16 v1, v18

    const/4 v0, -0x1

    goto :goto_9

    :cond_13
    move/from16 v17, v0

    move v0, v1

    move/from16 v1, v18

    :goto_9
    if-eq v1, v0, :cond_14

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    move/from16 v18, v1

    move/from16 v0, v19

    const/4 v1, -0x1

    goto :goto_a

    :cond_14
    move/from16 v18, v1

    move v1, v0

    move/from16 v0, v19

    :goto_a
    if-eq v0, v1, :cond_15

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    move/from16 v19, v0

    move/from16 v1, v20

    const/4 v0, -0x1

    goto :goto_b

    :cond_15
    move/from16 v19, v0

    move v0, v1

    move/from16 v1, v20

    :goto_b
    if-eq v1, v0, :cond_16

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    move/from16 v20, v1

    move/from16 v0, v21

    const/4 v1, -0x1

    goto :goto_c

    :cond_16
    move/from16 v20, v1

    move v1, v0

    move/from16 v0, v21

    :goto_c
    if-eq v0, v1, :cond_17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    move/from16 v21, v0

    move/from16 v1, v22

    const/4 v0, -0x1

    goto :goto_d

    :cond_17
    move/from16 v21, v0

    move v0, v1

    move/from16 v1, v22

    :goto_d
    if-eq v1, v0, :cond_18

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSavingByWhichPid(I)V

    move/from16 v22, v1

    move/from16 v0, v23

    const/4 v1, -0x1

    goto :goto_e

    :cond_18
    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v23

    :goto_e
    if-eq v0, v1, :cond_19

    move v1, v5

    move/from16 v23, v6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setReminderTriggerTime(J)V

    goto :goto_f

    :cond_19
    move v1, v5

    move/from16 v23, v6

    :goto_f
    move/from16 v5, v24

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setReminderRequestCode(I)V

    move/from16 v24, v0

    move/from16 v6, v25

    const/4 v0, -0x1

    goto :goto_10

    :cond_1a
    move/from16 v24, v0

    move v0, v6

    move/from16 v6, v25

    :goto_10
    if-eq v6, v0, :cond_1b

    move/from16 v25, v1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecycleBinTimeMoved(J)V

    move/from16 v0, v26

    const/4 v1, -0x1

    goto :goto_11

    :cond_1b
    move/from16 v25, v1

    move v1, v0

    move/from16 v0, v26

    :goto_11
    if-eq v0, v1, :cond_1c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentSecureVersion(I)V

    move/from16 v26, v0

    move/from16 v1, v27

    const/4 v0, -0x1

    goto :goto_12

    :cond_1c
    move/from16 v26, v0

    move v0, v1

    move/from16 v1, v27

    :goto_12
    if-eq v1, v0, :cond_1d

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setSize(I)V

    move/from16 v27, v1

    move/from16 v0, v28

    const/4 v1, -0x1

    goto :goto_13

    :cond_1d
    move/from16 v27, v1

    move v1, v0

    move/from16 v0, v28

    :goto_13
    if-eq v0, v1, :cond_1e

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDisplayTitle([B)V

    move/from16 v28, v0

    move/from16 v1, v29

    const/4 v0, -0x1

    goto :goto_14

    :cond_1e
    move/from16 v28, v0

    move v0, v1

    move/from16 v1, v29

    :goto_14
    if-eq v1, v0, :cond_1f

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setSaveType(I)V

    move/from16 v29, v1

    move/from16 v0, v30

    const/4 v1, -0x1

    goto :goto_15

    :cond_1f
    move/from16 v29, v1

    move v1, v0

    move/from16 v0, v30

    :goto_15
    if-eq v0, v1, :cond_20

    move v1, v5

    move/from16 v30, v6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstOpendAt(J)V

    goto :goto_16

    :cond_20
    move v1, v5

    move/from16 v30, v6

    :goto_16
    move/from16 v5, v31

    const/4 v6, -0x1

    if-eq v5, v6, :cond_21

    move v6, v0

    move/from16 v31, v1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setSecondOpenedAt(J)V

    goto :goto_17

    :cond_21
    move v6, v0

    move/from16 v31, v1

    :goto_17
    move/from16 v0, v32

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    move v1, v5

    move/from16 v32, v6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastOpenedAt(J)V

    goto :goto_18

    :cond_22
    move v1, v5

    move/from16 v32, v6

    :goto_18
    move/from16 v5, v33

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    move v6, v0

    move/from16 v33, v1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImportedAt(J)V

    goto :goto_19

    :cond_23
    move v6, v0

    move/from16 v33, v1

    :goto_19
    move/from16 v0, v34

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    move v1, v5

    move/from16 v34, v6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecommendedAt(J)V

    goto :goto_1a

    :cond_24
    move v1, v5

    move/from16 v34, v6

    :goto_1a
    move/from16 v5, v35

    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    move v6, v0

    move/from16 v35, v1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastMappedAt(J)V

    goto :goto_1b

    :cond_25
    move v6, v0

    move/from16 v35, v1

    :goto_1b
    move/from16 v0, v36

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeSpaceId(Ljava/lang/String;)V

    move/from16 v36, v0

    move/from16 v1, v37

    const/4 v0, -0x1

    goto :goto_1c

    :cond_26
    move/from16 v36, v0

    move v0, v1

    move/from16 v1, v37

    :goto_1c
    if-eq v1, v0, :cond_27

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeItemId(Ljava/lang/String;)V

    move/from16 v37, v1

    move/from16 v0, v38

    const/4 v1, -0x1

    goto :goto_1d

    :cond_27
    move/from16 v37, v1

    move v1, v0

    move/from16 v0, v38

    :goto_1d
    if-eq v0, v1, :cond_28

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeExtra(Ljava/lang/String;)V

    move/from16 v38, v0

    move/from16 v1, v39

    const/4 v0, -0x1

    goto :goto_1e

    :cond_28
    move/from16 v38, v0

    move v0, v1

    move/from16 v1, v39

    :goto_1e
    if-eq v1, v0, :cond_29

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeGroupId(Ljava/lang/String;)V

    move/from16 v39, v1

    move/from16 v0, v40

    const/4 v1, -0x1

    goto :goto_1f

    :cond_29
    move/from16 v39, v1

    move v1, v0

    move/from16 v0, v40

    :goto_1f
    if-eq v0, v1, :cond_2a

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeOwnerId(Ljava/lang/String;)V

    move/from16 v40, v0

    move/from16 v1, v41

    const/4 v0, -0x1

    goto :goto_20

    :cond_2a
    move/from16 v40, v0

    move v0, v1

    move/from16 v1, v41

    :goto_20
    if-eq v1, v0, :cond_2b

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstHandwritingHeight(I)V

    move/from16 v41, v1

    move/from16 v0, v42

    const/4 v1, -0x1

    goto :goto_21

    :cond_2b
    move/from16 v41, v1

    move v1, v0

    move/from16 v0, v42

    :goto_21
    if-eq v0, v1, :cond_2c

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDeleteRecommended(I)V

    move/from16 v42, v0

    move/from16 v1, v43

    const/4 v0, -0x1

    goto :goto_22

    :cond_2c
    move/from16 v42, v0

    move v0, v1

    move/from16 v1, v43

    :goto_22
    if-eq v1, v0, :cond_2d

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setAbsolutePath(Ljava/lang/String;)V

    move/from16 v43, v1

    move/from16 v0, v44

    const/4 v1, -0x1

    goto :goto_23

    :cond_2d
    move/from16 v43, v1

    move v1, v0

    move/from16 v0, v44

    :goto_23
    if-eq v0, v1, :cond_2e

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColor(I)V

    move/from16 v44, v0

    move/from16 v1, v45

    const/4 v0, -0x1

    goto :goto_24

    :cond_2e
    move/from16 v44, v0

    move v0, v1

    move/from16 v1, v45

    :goto_24
    if-eq v1, v0, :cond_2f

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColorInverted(I)V

    move/from16 v45, v1

    move/from16 v0, v46

    const/4 v1, -0x1

    goto :goto_25

    :cond_2f
    move/from16 v45, v1

    move v1, v0

    move/from16 v0, v46

    :goto_25
    if-eq v0, v1, :cond_30

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLockAccountGuid(Ljava/lang/String;)V

    move/from16 v46, v0

    move/from16 v1, v47

    const/4 v0, -0x1

    goto :goto_26

    :cond_30
    move/from16 v46, v0

    move v0, v1

    move/from16 v1, v47

    :goto_26
    if-eq v1, v0, :cond_31

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCorrupted(I)V

    move/from16 v47, v1

    move/from16 v0, v48

    const/4 v1, -0x1

    goto :goto_27

    :cond_31
    move/from16 v47, v1

    move v1, v0

    move/from16 v0, v48

    :goto_27
    if-eq v0, v1, :cond_32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setPageMode(I)V

    :cond_32
    move-object/from16 v1, v50

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v48, v0

    move/from16 v0, v51

    move/from16 v53, v35

    move/from16 v35, v5

    move/from16 v5, v25

    move/from16 v25, v30

    move/from16 v30, v32

    move/from16 v32, v34

    move/from16 v34, v6

    move/from16 v6, v23

    move/from16 v23, v24

    move/from16 v24, v31

    move/from16 v31, v33

    move/from16 v33, v53

    goto/16 :goto_0

    :cond_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method
