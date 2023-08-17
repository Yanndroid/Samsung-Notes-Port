.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->lambda$deleteByDocumentUuid$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->lambda$removeInvalidPages$1(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$deleteByDocumentUuid$0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->deleteAll(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private synthetic lambda$removeInvalidPages$1(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->removePages(Ljava/lang/String;Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public abstract deleteAll(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_page WHERE documentUUID=:documentUuid"
    .end annotation
.end method

.method public abstract deleteAll(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_page WHERE documentUUID IN (:documentUuids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public deleteByDocumentUuid(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/e;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public abstract deleteDummy()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_page WHERE documentUUID NOT IN (SELECT UUID FROM sdoc WHERE isDeleted != 1)"
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_page WHERE UUID=:uuid LIMIT 1"
    .end annotation
.end method

.method public abstract getEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_page WHERE UUID=:pageUuid AND documentUUID=:docUuid"
    .end annotation
.end method

.method public bridge synthetic getEntity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_page WHERE UUID=:uuid LIMIT 1"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    move-result-object p1

    return-object p1
.end method

.method public abstract getFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_page WHERE documentUUID=:documentUuid AND favorite=1 AND isDeleted != 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageIDs(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT UUID FROM document_page WHERE documentUUID=:documentUuid"
    .end annotation

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
.end method

.method public abstract observe(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM document_page WHERE documentUUID=:documentUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract removeDeletedPages(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_page WHERE documentUUID=:docUuid AND isDeleted = 1"
    .end annotation
.end method

.method public removeInvalidPages(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method

.method public abstract removePages(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM document_page WHERE documentUUID=:docUuid AND UUID IN (:pageIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public updateBookmarkList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->deleteAll(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setPageUuid(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setDocumentUuid(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setFavorite(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateDelete(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->getEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setPageUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setDocumentUuid(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIndex(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIsDeleted(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    return-void
.end method

.method public abstract updateDirtyByDocumentUuid(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT document_page SET isDirty=:dirty WHERE documentUUID=:documentUuid"
    .end annotation
.end method

.method public updateDirtyByDocumentUuid(Ljava/util/Collection;I)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
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

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->updateDirtyByDocumentUuid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateFavorite(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->getEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setPageUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setDocumentUuid(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setIndex(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->setFavorite(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    return-void
.end method
