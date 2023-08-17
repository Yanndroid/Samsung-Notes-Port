.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockOnPageDeleted:Z

.field private mSelectedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListModeEdit"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    return-void
.end method

.method private checkSelectedItems(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    const-string v0, "checkSelectedItems# pageList is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSelectedItems, before/after = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->selectAll(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;ZZ)V

    return-void
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1

    const-string v0, "505"

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->init(Ljava/util/List;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mBlockOnPageDeleted:Z

    return-void
.end method

.method public isChecked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public mapToPageIdList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageDeleted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mBlockOnPageDeleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageDeleted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->checkSelectedItems(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    return-void
.end method

.method public onPageInserted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageInserted(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    return-void
.end method

.method public onPageListChanged(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->onPageListChanged(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->checkSelectedItems(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    return-void
.end method

.method public restore(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->isDeletingPages()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->setBlockToUpdate(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->checkSelectedItems(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    return-void
.end method

.method public reverseSelection(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    invoke-interface {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onToggleCheckBox(I)V

    return-void
.end method

.method public saveState(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            ")",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->saveState(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->setSelectedItems(Ljava/util/List;)V

    return-object p1
.end method

.method public selectAll(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;",
            "ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectAll#, checked/selectedCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setBlockOnPageDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mBlockOnPageDeleted:Z

    return-void
.end method

.method public updateSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    if-eqz p3, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onSelectedPageUpdated(II)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckBoxClicked#, pageId/checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", checkedCount = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3579"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->insertSALogWithMode(Ljava/lang/String;)V

    return-void
.end method
