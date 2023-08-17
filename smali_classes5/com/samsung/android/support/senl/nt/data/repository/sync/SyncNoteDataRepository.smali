.class public Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

.field private final mNotesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

.field private final mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

.field private final mSyncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

.field private final mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

.field private final mSyncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SyncNoteDataRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncMdeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncNotesContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncNotesContentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesMappedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNotesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    return-void
.end method


# virtual methods
.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V

    return-void
.end method

.method public delete(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, noteEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/util/Collection;)I

    return-void
.end method

.method public deleteByUuid(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuid, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->deleteByUuid(Ljava/lang/String;)I

    return-void
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->deleteByUuid(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpDocument()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->dumpDocument()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dumpSyncInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->dumpSyncInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllCoeditNoteList(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllCoeditNoteList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getAllCoeditNoteList(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllCoeditNoteList_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllCoeditNoteList_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getAllCoeditNoteList_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllCoeditStandAloneNoteList_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllCoeditStandAloneNoteList_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getAllCoeditStandAloneNoteList_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAll_LiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheSyncDocInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " sdoc.UUID, sdoc.filePath, sdoc.serverTimestamp, sdoc.categoryserverTimestamp,  sdoc.title, sdoc.isFavorite, sdoc.categoryUUID, sdoc.isDeleted, sdoc.lastMappedAt,  sdoc.lastModifiedAt, sdoc.isLock, sdoc.lockAccountGuid, sdoc.categoryisDirty, sdoc.isDirty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM sdoc WHERE sdoc.UUID in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->rawQueryForDocSyncEntryList(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getCategoryUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getCategoryUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCheckpoint(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getCheckPoint(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoeditDocUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getCoeditDocUuidList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCoeditMainListEntryListBySpaceIdList(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getCoeditEntryBySpaceId(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCommitId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getCommitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConflictStrategy(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getConflictStrategy(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCorrupted(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getCorruptedValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCountIsDirty(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getCountIsDirty(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCountIsFolderDirty()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getCountIsFolderDirty()I

    move-result v0

    return v0
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDirtyCountOfNoteExtraInfo()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getDirtyCountOfNoteExtraInfo()I

    move-result v0

    return v0
.end method

.method public getDocSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getDocSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    move-result-object p1

    return-object p1
.end method

.method public getFolderNodeItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getFolderNodeItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGcsOwnerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getGcsOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGcsOwnerNoteCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getMdeOwnerNoteCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getIsCategoryDirtyList(IZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getIsCategoryDirtyDocList(IZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIsDirtyList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getIsDirtyDocList(IZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIsDirtyList(IZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getIsDirtyDocList(IZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLocalGroupIdListCoedit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getLocalGroupIdListCoedit()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalGroupIdListOldSharedNote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getLocalGroupIdListOldSharedNote()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSpaceIdListCoedit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getLocalSpaceIdListCoedit()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSpaceIdListOldSharedNote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getLocalSpaceIdListOldSharedNote()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockAccountGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getLockAccountGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMainListEntryListBySpaceIdList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getEntryByMdeSpaceIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMdeExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getMdeExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNormalSdocxUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getNormalSdocxUuidList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoteCategoryServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getCategoryServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getNoteDeleted(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getNoteDeleted(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNoteFeedEntryByUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getNoteFeedEntryByUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;

    move-result-object p1

    return-object p1
.end method

.method public getNoteFeedListByCategoryUuid(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getNoteFeedListByCategoryUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNoteServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getServerTimestamp(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getOldDirtyCountOfNoteCategory()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getOldDirtyCountOfNoteCategory()I

    move-result v0

    return v0
.end method

.method public getOldUuidAndNoteCategoryTimeList()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getOldUuidAndNoteCategoryTimeListInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;->uuid:Ljava/lang/String;

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidTimeTuple;->categoryServerTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getReferenceResourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdocxUUIDListByFolderId(ILjava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getSdocxUUIDListByFolderId(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUUIDListByCategory(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUUIDListByCategoryIncludeDeleted(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUUIDListByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUUIDListByDirtyForExtraInfo(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getUUIDListByDirtyForExtraInfo(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUUIDListBySpaceIdCoedit(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListBySpaceIdCoedit(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUUIDListBySpaceIdOld(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListBySpaceIdOld(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUUIDListCoedit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListCoedit()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUUIDListMde()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListMde()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCoeditNoteCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUnreadCoeditNoteCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCoeditNoteCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUnreadCoeditNoteCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUnreadMdeNoteCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUnreadMdeNoteCount()I

    move-result v0

    return v0
.end method

.method public getUnreadMdeNoteCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUnreadMdeNoteCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUuidAndNoteTimeList()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidAndNoteTimeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidServerTimestampTuple;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidServerTimestampTuple;->uuid:Ljava/lang/String;

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO$UuidServerTimestampTuple;->serverTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUuidByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListByGroupIdCoedit(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByCategoryDirty(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidListByCategoryDirty(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByConflictStrategy(I)Ljava/util/List;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->getUuidListByConflictStrategy(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByDeleted(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUUIDListByDeleted(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByDirty(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidListByDirty(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByGroupIdAndOwnerIdCoedit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListByGroupIdAndOwnerIdCoedit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByGroupIdAndOwnerIdOld(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListByGroupIdAndOwnerIdOld(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByGroupIdCoedit(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListByGroupIdCoedit(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListByGroupIdOld(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListByGroupIdOld(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListInvalidSharedNote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncMdeDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;->getUuidListInvalidSharedNote()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUuidListLockedNote(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidListLockedNoteIncludeDeleted(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidListLockedNote(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUuidListOldSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->getUuidListOldSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V

    return-void
.end method

.method public insert(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert, noteEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    return-void
.end method

.method public insertLastMappedAtList(Ljava/util/HashMap;)V
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNotesMappedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Ljava/util/HashMap;)V

    return-void
.end method

.method public isConflicted(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->isConflicted(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isConflicted_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->isConflicted_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->isExist(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public rawQuery(Landroidx/sqlite/db/SimpleSQLiteQuery;)Ljava/util/List;
    .locals 0
    .param p1    # Landroidx/sqlite/db/SimpleSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SimpleSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public rawQuery_LiveData(Landroidx/sqlite/db/SimpleSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .locals 0
    .param p1    # Landroidx/sqlite/db/SimpleSQLiteQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SimpleSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public repairOldSharedNotesCategoryUuid()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->repairOldSharedNotesCategoryUuid()V

    return-void
.end method

.method public resetIsSyncFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->resetAllIsSyncFailed(I)V

    return-void
.end method

.method public setLastMappedAt(Ljava/lang/String;J)Z
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->setLastMappedAtList(Ljava/lang/String;J)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setLastMappedAtList(Ljava/util/HashMap;)Z
    .locals 7
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->setLastMappedAtList(Ljava/lang/String;J)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setMdeExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMdeExtra, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mdeExtra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->setMdeExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMdeItemId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->setMdeItemId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoteDeleted(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoteDeleted, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateIsDeleted(Ljava/lang/String;I)V

    return-void
.end method

.method public setNoteFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->setNoteFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferenceResourceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateResourceId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;)V

    return-void
.end method

.method public update(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, sDocEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/util/Collection;)I

    return-void
.end method

.method public updateAccountGuidbyUuid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateAccountGuidByUuid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAllCoeditNotesAsRead(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateAllCoeditNotesAsRead(J)V

    return-void
.end method

.method public updateCategoryServerTimestamp(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateCategoryServerTimestamp(Ljava/lang/String;J)V

    return-void
.end method

.method public updateCommitId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateCommitId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateConflict(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p4    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateConflict(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public updateConflictStrategy(Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity$ConflictStrategy;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateConflictStrategy(Ljava/lang/String;I)V

    return-void
.end method

.method public updateCreatedAt(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCreatedAt, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateCreatedAt(Ljava/lang/String;J)V

    return-void
.end method

.method public updateDirty(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateDirty(Ljava/lang/String;I)V

    return-void
.end method

.method public updateDirtyAndTimestamp(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateDirtyAndTimestamp(Ljava/lang/String;IJ)V

    return-void
.end method

.method public updateDirtyAndTimestampByUuidList(Ljava/util/Collection;IJ)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateDirtyAndTimestamp(Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateDirtyCategory(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateDirtyCategory(Ljava/lang/String;I)V

    return-void
.end method

.method public updateEntityByDeleteSdocToDelete(Ljava/lang/String;IIJIJ)V
    .locals 12

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByDeleteSdocToDelete, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v4, p1

    move v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByDeleteSdocToDelete(Ljava/lang/String;IIJIJ)V

    return-void
.end method

.method public updateEntityByDeleteSdocToRecycleBin(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 13

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByDeleteSdocToRecycleBin, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderUuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByDeleteSdocToRecycleBin(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public updateEntityByDeleteSdocToRecycleBinInSync(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByDeleteSdocToRecycleBinInSync, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByDeleteSdocToRecycleBinInSync(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateEntityByRecoverySDoc(Ljava/lang/String;IJILjava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByRecoverySDoc, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByRecoverySDoc(Ljava/lang/String;IJILjava/lang/String;)V

    return-void
.end method

.method public updateEntityByRestoreSDoc(Ljava/lang/String;IIIJLjava/lang/String;)V
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByRestoreSDoc, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderUuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v4, p1

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByRestoreSDoc(Ljava/lang/String;IIIJLjava/lang/String;)V

    return-void
.end method

.method public updateEntityByRestoreSDocInSync(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityByRestoreSDocInSync, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityByRestoreSDocInSync(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public updateEntityBySetNoteFolder(Ljava/lang/String;ILjava/lang/String;JIJLjava/lang/String;)V
    .locals 13

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntityBySetNoteFolder, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isDeleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderUuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v4, p1

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateEntityBySetNoteFolder(Ljava/lang/String;ILjava/lang/String;JIJLjava/lang/String;)V

    return-void
.end method

.method public updateFirstOpenedAt(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFirstOpenedAt, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", openedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateFirstOpenedAt(Ljava/lang/String;J)V

    return-void
.end method

.method public updateIsDirtyByIsSyncFailed(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateIsDirtyByIsSyncFailed(II)V

    return-void
.end method

.method public updateIsSyncFailed(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateIsSyncFailed(Ljava/lang/String;I)V

    return-void
.end method

.method public updateModifiedTime(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModifiedTime, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modifiedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateModifiedTime(Ljava/lang/String;J)V

    return-void
.end method

.method public updateMsConnectedNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateMsConnectedNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateMsConnectedNotesId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateMsConnectedNotesId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNoteCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoteCategory, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateNoteCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoteCategory, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", categoryServerTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public updateNoteCategoryAndAbsolutePath(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoteCategoryAndAbsolutePath, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderUuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateNoteCategory(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public updateNoteFavorite(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateNoteFavoriteInSync(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateNoteFavoriteAndCategoryDirtyTimestamp(Ljava/lang/String;IJ)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateNoteFavoriteAndCategoryDirtyTimestamp(Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public updateNoteServerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateServerId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNoteServerIdAndDirty(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateDirty(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mNoteDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateServerId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNoteSyncName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateSyncName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecycleBinResolverUpdateTimeMoved(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateRecycleBinResolverUpdateTimeMoved(Ljava/lang/String;J)V

    return-void
.end method

.method public updateServerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncInfoDao:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateServerId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateServerTimestamp(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->mSyncDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;->updateServerTimestamp(Ljava/lang/String;J)V

    return-void
.end method
