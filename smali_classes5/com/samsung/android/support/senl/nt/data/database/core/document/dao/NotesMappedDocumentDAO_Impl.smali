.class public final Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;
.source "SourceFile"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClear:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteMappedEntity:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteMappedEntity_1:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetConvertedByMappedUuid:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetConvertedByOriginalUuid:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateConverted:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$1;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__insertionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$2;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__deletionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$3;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__updateAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$4;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$5;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$6;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity_1:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$7;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByMappedUuid:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$8;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByOriginalUuid:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$9;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfUpdateConverted:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl$10;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfClear:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static synthetic access$001(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/util/Collection;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$201(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$301(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/util/Pair;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$401(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$501(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;)J
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->getDocumentServerTimestamp(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$601(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;ZLjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$701(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$801(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfClear:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfClear:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfClear:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__deletionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)I

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__deletionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$701(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$601(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteMappedEntity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteMappedEntity(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfDeleteMappedEntity_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public dumpMappedDocumentList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT `mapped_document`.`_id` AS `_id`, `mapped_document`.`UUID` AS `UUID`, `mapped_document`.`mappedUUID` AS `mappedUUID`, `mapped_document`.`converted` AS `converted`, `mapped_document`.`mappedAt` AS `mappedAt` FROM mapped_document ORDER BY UUID ASC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "UUID"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "mappedUUID"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "converted"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mappedAt"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-direct {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setId(J)V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setUuid(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setMappedUuid(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setIsConverted(I)V

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setMappedAt(J)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v2
.end method

.method public findLatestConvertedMappedUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT mappedUUID FROM mapped_document WHERE converted IS 1 AND UUID=? ORDER BY _id DESC LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public findLatestMappedUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT mappedUUID FROM mapped_document WHERE UUID=? ORDER BY _id DESC LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public findMappedDocumentUuid(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT mappedUUID FROM mapped_document WHERE UUID=? AND mappedAt=? ORDER BY _id DESC LIMIT 1"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p2
.end method

.method public findOriginalDocumentUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT UUID FROM mapped_document WHERE mappedUUID=? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public getConverted(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT converted FROM mapped_document WHERE mappedUUID=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public getDocumentServerTimestamp(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$501(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;
    .locals 9

    const-string v0, "SELECT `mapped_document`.`_id` AS `_id`, `mapped_document`.`UUID` AS `UUID`, `mapped_document`.`mappedUUID` AS `mappedUUID`, `mapped_document`.`converted` AS `converted`, `mapped_document`.`mappedAt` AS `mappedAt` FROM mapped_document WHERE UUID=? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "UUID"

    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "mappedUUID"

    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "converted"

    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mappedAt"

    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setId(J)V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setUuid(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setMappedUuid(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setIsConverted(I)V

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->setMappedAt(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    move-result-object p1

    return-object p1
.end method

.method public getMappedAt(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SELECT mappedAt FROM mapped_document WHERE mappedUUID=? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$201(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ)",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$301(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$401(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__insertionAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)V

    return-void
.end method

.method public insert(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$801(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public setConvertedByMappedUuid(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByMappedUuid:Landroidx/room/SharedSQLiteStatement;

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
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByMappedUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByMappedUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public setConvertedByOriginalUuid(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByOriginalUuid:Landroidx/room/SharedSQLiteStatement;

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
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByOriginalUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfSetConvertedByOriginalUuid:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__updateAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)I

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__updateAdapterOfNotesMappedDocumentEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateConverted(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfUpdateConverted:Landroidx/room/SharedSQLiteStatement;

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
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfUpdateConverted:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__preparedStmtOfUpdateConverted:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public upsert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$001(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public bridge synthetic upsert(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->upsert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;)Landroid/util/Pair;

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->access$101(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public verifyMappedUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT old.lastModifiedAt=new.lastModifiedAt FROM mapped_document AS map LEFT OUTER JOIN sdoc AS old ON old.UUID=? LEFT OUTER JOIN sdoc AS new ON new.UUID=? WHERE map.mappedUUID=? AND map.converted=1 ORDER BY map._id DESC LIMIT 1"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    move v1, v2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p2
.end method
