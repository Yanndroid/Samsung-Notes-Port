.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

.field public mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

.field public mTemplatesPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;

.field public mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EssentialItemPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mTemplatesPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->initItemData(F)V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    return-void
.end method

.method public getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initItemData(F)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-void
.end method

.method public initItems(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->initItems(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getTemplateType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->isExpanded()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->setBottomPadding(IZ)V

    return-void
.end method

.method public onAddTemplate()V
    .locals 0

    return-void
.end method

.method public onCollapseItems()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onCollapseItems#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onExpandCollapse(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mTemplatesPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;->onCancelDelete()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->setExpanded(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->deleteItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getTemplateType()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->setBottomPadding(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getTemplateType()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->startExpandableListAnimation(II)V

    const-string v0, "401"

    const-string v1, "3511"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteDone(Z)V
    .locals 0

    return-void
.end method

.method public onDeleteMode()V
    .locals 0

    return-void
.end method

.method public onDeleteTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 0

    return-void
.end method

.method public onDownloadTemplate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExpandItems()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onExpandItems#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onExpandCollapse(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mTemplatesPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;->onCancelDelete()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->setExpanded(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->getItemList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->addItems(ILjava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getTemplateType()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->setBottomPadding(IZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getTemplateType()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->startExpandableListAnimation(II)V

    return-void
.end method

.method public onSelectTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSelectTemplate#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/TemplateIndexConverter;->convertTemplateNameToWPageIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->onSelectItem(I)V

    return-void
.end method

.method public onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->release()V

    :cond_0
    return-void
.end method

.method public setRecyclerViewItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    return-void
.end method

.method public updateItemsDrawable(F)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->LONG:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->equal(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_essential_template_long_drawable_res:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_essential_template_drawable_res:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setDrawableResId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "updateItemsDrawable# exception"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
