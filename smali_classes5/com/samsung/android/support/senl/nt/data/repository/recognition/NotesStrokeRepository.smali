.class public Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/NotesDataRepository<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesStrokeRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesStrokeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->lambda$deleteByUuidAndPageIds$0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->lambda$deleteByUuidAndPageIds$1(Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->lambda$deleteByUuidAndPageIdsWithExcludedTypes$2(Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$deleteByUuidAndPageIds$0(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private synthetic lambda$deleteByUuidAndPageIds$1(Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;[I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private synthetic lambda$deleteByUuidAndPageIdsWithExcludedTypes$2(Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuidAndPageIdsWithExcludedTypes(Ljava/lang/String;Ljava/util/List;[I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->delete(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, noteEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->delete(Ljava/util/Collection;)I

    return-void
.end method

.method public deleteByUuid(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuid, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuid(Ljava/lang/String;)I

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuid, uuidList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuid(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuidAndPageIds, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removedPages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Li4/b;

    invoke-direct {v1, p0, p1}, Li4/b;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public varargs deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuidAndPageIds, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removedPages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Li4/c;

    invoke-direct {v1, p0, p1, p3}, Li4/c;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public varargs deleteByUuidAndPageIdsWithExcludedTypes(Ljava/lang/String;Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuidAndPageIdsWithExcludedTypes, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removedPages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", excludedTypes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Li4/d;

    invoke-direct {v1, p0, p1, p3}, Li4/d;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[I)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public varargs deleteByUuidWithTypes(Ljava/lang/String;[I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteByUuidWithTypes, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", types : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteByUuidWithTypes(Ljava/lang/String;[I)V

    return-void
.end method

.method public deleteDummy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->deleteDummy()V

    return-void
.end method

.method public getAll_LiveData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAll_LiveData"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getAllLiveDatas()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEntities(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntities, uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getEntities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getEntityListWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getEntityListWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getPageIdListByUuid(Ljava/lang/String;[I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageIdListByUuid, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getPageIdListByUuid(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecognizeTextsWithExcludedTypes, exclude types : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V

    return-void
.end method

.method public insert(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->rawQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;->rawQuery_LiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V

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
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, sDocEntities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->mNotesStrokeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/util/Collection;)I

    return-void
.end method
