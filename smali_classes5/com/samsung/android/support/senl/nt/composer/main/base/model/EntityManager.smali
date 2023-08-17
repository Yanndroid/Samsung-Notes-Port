.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_INSTANCE_STATE:Ljava/lang/String; = "key_instance_entity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

.field private final mModelParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

.field private final mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EntityManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mModelParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    return-void
.end method


# virtual methods
.method public changeDocState(Landroidx/lifecycle/LifecycleOwner;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    const-string v1, "changeDocState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->initNoteDocEntity(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->resetPageRepository(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    return-object v0
.end method

.method public initDataRepository(Landroidx/lifecycle/LifecycleOwner;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    if-nez p2, :cond_2

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mModelParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    :cond_2
    return-void
.end method

.method public initDataRepository(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setNotesDocumentEntity(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    const-string v1, "key_instance_entity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->release()V

    return-void
.end method

.method public restoreEntity(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_instance_entity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreEntity#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setWidgetId(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setCorruptedState(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setNotesDocumentEntity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    const-string v0, "setCorruptedState fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    or-int/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCorrupted(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public updateCorruptedState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    const-string v0, "updateCorruptedState fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    and-int/lit8 v0, v0, -0x2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCorrupted(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed CORRUPTED_OCCURED "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p1, 0x2

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CORRUPTED_MAX_OBJECT_LIMIT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public updateDataRepository(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isObserving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->TAG:Ljava/lang/String;

    const-string v1, "updateDataRepository# set observer for new document "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mModelParent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->mBookmarkEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->updatePageRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    :goto_0
    return-void
.end method
