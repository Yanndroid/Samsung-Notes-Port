.class Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;->getAllLiveDatas()Landroidx/lifecycle/LiveData;
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
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;

.field public final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;->a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "normalizeName"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "docUUID"

    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "displayName"

    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setNormalizeName(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v6

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
