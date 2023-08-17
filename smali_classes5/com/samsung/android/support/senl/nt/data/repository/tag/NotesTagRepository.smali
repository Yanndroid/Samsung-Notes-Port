.class public Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNotesTagEntries:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesTagRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesTagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAllLiveDatas()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mAllNotesTagEntries:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private isTagsExistByDocUuid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->isTagsExistByDocUuid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTagsExistByDocUuid(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->isTagsExistByDocUuid(Ljava/util/List;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addTagsByDocUuid(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
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
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "updateTagsByDocUuid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->addTagsByDocUuid(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->onTagUpdated(Ljava/util/Collection;)V

    return p1
.end method

.method public addTagsByDocUuidList(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "updateTagsByDocUuid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->addTagsByDocUuidList(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->onTagUpdated(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    return p1
.end method

.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, noteEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/util/Collection;)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public deleteByUuid(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuid, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->deleteByUuid(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuid, uuidList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->deleteByUuid(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public deleteDummy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->deleteDummy()V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllTagListWithDocCount(I)Ljava/util/List;
    .locals 2
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/TagSortType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesTagDocCountEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllTagListWithDocCount"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAllTagListWithDocCount(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllTagListWithDocCount_LiveData(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/TagSortType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesTagDocCountEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllTagListWithDocCount_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAllTagListWithDocCount_LiveDataFiltered(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllTagsInUse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllTagsInUse"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getAllTagsInUse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAll_LiveData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mAllNotesTagEntries:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDataForRegexSearch(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getDataForTagBoard"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getDataForRegexSearch(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDataForTagBoard(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getDataForTagBoard"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getDataForTagBoard(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getNotesCountUsingTag()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getNotesCountUsingTag()I

    move-result v0

    return v0
.end method

.method public getRecentTagList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getRecentTagList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getRecentTagList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRelatedTagList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getRelatedTagList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getRelatedTagList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRelatedTags(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "getRelatedTags"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getRelatedTags(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagListByDocUuid(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTagListByDocUuid, docUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->getTagListByDocUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert, noteEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public isTagExistByNormalizedName(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "isTagExistByNormalizedName"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->isTagExistByNormalizedName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notifyTagBoard()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->BASE_URI_NOTE_USERTAG:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTagBoard, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyTagBoardByUuid(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->isTagsExistByDocUuid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->BASE_URI_NOTE_USERTAG:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTagBoardByUuid, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyTagBoardByUuid(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->isTagsExistByDocUuid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->BASE_URI_NOTE_USERTAG:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTagBoardByUuid, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public rawQuery(Landroidx/sqlite/db/SimpleSQLiteQuery;)Ljava/util/List;
    .locals 1
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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public rawQuery_LiveData(Landroidx/sqlite/db/SimpleSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .locals 1
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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->rawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, sDocEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/util/Collection;)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public updateTagsByDocUuid(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Z)Z
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->TAG:Ljava/lang/String;

    const-string v1, "updateTagsByDocUuid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->mNotesTagDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;->updateTagsByDocUuid(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    if-nez p4, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    move-result-object p2

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->onTagUpdated(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method
