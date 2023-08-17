.class public Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

.field private final mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

.field private final mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

.field private final mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MainListRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getDatabase()Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getDatabase()Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesOldDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getDatabase()Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesConvertedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;->getDatabase()Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesMainListDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    return-void
.end method


# virtual methods
.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    return-void
.end method

.method public delete(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public deleteByUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public deleteByUuid(Ljava/util/Collection;)V
    .locals 0
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

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAll(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllByTagNormalizedName(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllByTagNormalizedName"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllByTagNormalizedName(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllByTagNormalizedName_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllByTagNormalizedName_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllByTagNormalizedName_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllByTagNormalizedNames(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllByTagNormalizedNames"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllByTagNormalizedNames(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllByTagNormalizedNames_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/util/Set;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllByTagNormalizedNames_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllByTagNormalizedNames_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/util/Collection;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllContentShare(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllContentShare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllContentShare(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllContentShare_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllContentShare_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllContentShare_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllDocumentCountEntryMap(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllDocumentCountEntryMap_LiveData, includeConvertedNote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntryMap(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getAllDocumentCountEntryMap_LiveData(Z)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllDocumentCountEntryMap_LiveData, includeConvertedNote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntryMap_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllDocumentCountEntry_LiveData(ZLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllDocumentCountEntry_LiveData, includeConvertedNote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", parentUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntry_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Ljava/lang/String;Z)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllForImportContentShare_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllForImportContentShare_LiveData with param"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllForImportContentShare_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAllNoteCount(IZ)I
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllNoteCount(IZ)I

    move-result p1

    return p1
.end method

.method public getAllWithTag(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllWithTag"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllWithTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllWithTag_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllWithTag_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAllWithTag_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAll_LiveData()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAll_LiveData(IZ)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAll_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll_LiveData with param"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getAll_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentCountEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDocumentCountEntry, categoryUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getDocumentCountEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;

    move-result-object p1

    return-object p1
.end method

.method public getExpiredRecycleBinDataNotInFolder(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getExpiredRecycleBinDataNotInFolder(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFavoriteItemCount(I)I
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteItemCount, deleteType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getFavoriteItemCount(I)I

    move-result p1

    return p1
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPath, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRecentlyImportedNoteCount(J)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->getRecentlyImportedNoteCount(J)I

    move-result p1

    return p1
.end method

.method public getUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLiveData, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    return-void
.end method

.method public insert(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->rawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayContent(Ljava/lang/String;[B)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayContent, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->mNotesMainListDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;->setDisplayContent(Ljava/lang/String;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    return-void
.end method

.method public update(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
