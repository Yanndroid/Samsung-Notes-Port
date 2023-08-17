.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field public mEssentialItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

.field public mImageItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

.field public mPdfDefaultItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

.field public mPdfItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AllItemData"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mEssentialItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mImageItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfDefaultItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-void
.end method

.method private isSelectedTemplateItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mEssentialItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->isSelectedTemplateItem(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mImageItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfDefaultItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    goto :goto_0
.end method


# virtual methods
.method public addAllItems()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mEssentialItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mImageItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfDefaultItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mPdfItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAllItems# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemByName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public updateSelectedItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setSelected(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->isSelectedTemplateItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setSelected(Z)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->mEssentialItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getMenuItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setSelected(Z)V

    :cond_3
    return-object v1
.end method
