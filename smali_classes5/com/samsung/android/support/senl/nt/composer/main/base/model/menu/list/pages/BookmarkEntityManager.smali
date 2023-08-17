.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BookmarkEntityManager"


# instance fields
.field private final mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

.field private mIsObserving:Z

.field private final mNotesDocumentPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

.field private final mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mIsObserving:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mNotesDocumentPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->loadPageRepository(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mNotesDocumentPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->updateBookmarks(Ljava/util/List;)V

    return-void
.end method

.method private loadPageRepository(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mNotesDocumentPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->getFavoriteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->updateBookmarks(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->updatePageRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private updateBookmarks(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getFavorite()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->getIsDeleted()I

    move-result v0

    if-ne v0, v6, :cond_1

    move v5, v6

    :cond_1
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->update(Ljava/lang/String;IZZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    return-object v0
.end method

.method public resetPageRepository(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mIsObserving:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mBookmarkModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->clear()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->loadPageRepository(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public updatePageRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BookmarkEntityManager"

    const-string v0, "updatePageRepositoryObserver, lifeCyclerOwner is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mIsObserving:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mIsObserving:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mNotesDocumentPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->observe(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method
