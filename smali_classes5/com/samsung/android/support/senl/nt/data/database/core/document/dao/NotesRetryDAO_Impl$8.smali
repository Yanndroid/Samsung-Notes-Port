.class Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;->getAllLiveDatas()Landroidx/lifecycle/LiveData;
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
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;->b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdocUUID"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "strokeFilePath"

    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "recognitionCount"

    invoke-static {v0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "lastModifiedAt"

    invoke-static {v0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "version"

    invoke-static {v0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v3

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_1
    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setStrokeFilePath(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setState(I)V

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setRecognitionCount(I)V

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setLastModifiedAt(J)V

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setVersion(I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
