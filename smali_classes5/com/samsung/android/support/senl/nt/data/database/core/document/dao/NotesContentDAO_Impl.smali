.class public final Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;
.source "SourceFile"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfNotesContentEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteBySDocUuid:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByUuid:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateContentSecureVersion:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$1;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__insertionAdapterOfNotesContentEntity:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$2;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__deletionAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$3;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__updateAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$4;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteByUuid:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$5;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteBySDocUuid:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$6;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfUpdateContentSecureVersion:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static synthetic access$001(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$201(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;->deleteByUuid(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$301(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;->deleteBySDocUuid(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__deletionAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)I

    move-result p1

    return p1
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__deletionAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteBySDocUuid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteBySDocUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteBySDocUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteBySDocUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteBySDocUuid(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM content WHERE sdocUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND mime_type NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_1
    invoke-interface {v0, p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteBySDocUuid(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->access$301(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteByUuid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteByUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteByUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfDeleteByUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->access$201(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `content`.`_id` AS `_id`, `content`.`UUID` AS `UUID`, `content`.`isDeleted` AS `isDeleted`, `content`.`isDirty` AS `isDirty`, `content`.`accountType` AS `accountType`, `content`.`accountName` AS `accountName`, `content`.`sdocUUID` AS `sdocUUID`, `content`.`mime_type` AS `mime_type`, `content`.`displayName` AS `displayName`, `content`.`srcID` AS `srcID`, `content`.`data` AS `data`, `content`.`_data` AS `_data`, `content`.`filePath` AS `filePath`, `content`.`contentSecureVersion` AS `contentSecureVersion` FROM content"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "UUID"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isDeleted"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isDirty"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "accountType"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "accountName"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sdocUUID"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "mime_type"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "displayName"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "srcID"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "data"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_data"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "filePath"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "contentSecureVersion"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_0

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    move-object/from16 v0, v18

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setIsDeleted(I)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setIsDirty(I)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setAccountType(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setAccountName(Ljava/lang/String;)V

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setData([B)V

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setContentSecureVersion(I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v4, v17

    move/from16 v17, v0

    move/from16 v0, v19

    goto/16 :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllLiveDatas()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT `content`.`_id` AS `_id`, `content`.`UUID` AS `UUID`, `content`.`isDeleted` AS `isDeleted`, `content`.`isDirty` AS `isDirty`, `content`.`accountType` AS `accountType`, `content`.`accountName` AS `accountName`, `content`.`sdocUUID` AS `sdocUUID`, `content`.`mime_type` AS `mime_type`, `content`.`displayName` AS `displayName`, `content`.`srcID` AS `srcID`, `content`.`data` AS `data`, `content`.`_data` AS `_data`, `content`.`filePath` AS `filePath`, `content`.`contentSecureVersion` AS `contentSecureVersion` FROM content"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "content"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$7;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl$7;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT `content`.`_id` AS `_id`, `content`.`UUID` AS `UUID`, `content`.`isDeleted` AS `isDeleted`, `content`.`isDirty` AS `isDirty`, `content`.`accountType` AS `accountType`, `content`.`accountName` AS `accountName`, `content`.`sdocUUID` AS `sdocUUID`, `content`.`mime_type` AS `mime_type`, `content`.`displayName` AS `displayName`, `content`.`srcID` AS `srcID`, `content`.`data` AS `data`, `content`.`_data` AS `_data`, `content`.`filePath` AS `filePath`, `content`.`contentSecureVersion` AS `contentSecureVersion` FROM content WHERE UUID=? LIMIT 1"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "_id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "UUID"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isDeleted"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isDirty"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "accountType"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "accountName"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sdocUUID"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "mime_type"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "displayName"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "srcID"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "data"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "_data"

    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "filePath"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "contentSecureVersion"

    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_2

    move-object/from16 v16, v2

    :try_start_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setId(Ljava/lang/Long;)V

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setIsDeleted(I)V

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setIsDirty(I)V

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setAccountType(Ljava/lang/String;)V

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setAccountName(Ljava/lang/String;)V

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setData([B)V

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setContentSecureVersion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v16, v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__insertionAdapterOfNotesContentEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V

    return-void
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__updateAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)I

    move-result p1

    return p1
.end method

.method public update(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__updateAdapterOfNotesContentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateContentSecureVersion(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfUpdateContentSecureVersion:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfUpdateContentSecureVersion:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__preparedStmtOfUpdateContentSecureVersion:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public upsert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->access$001(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic upsert(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->upsert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public upsert(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->access$101(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
