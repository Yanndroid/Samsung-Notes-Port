.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ImageItemData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ImageItemData"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ImageItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "STATE_ADDED_EXPANDED"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->loadStateData()V

    return-void
.end method


# virtual methods
.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mItemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public initItems(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ImageItemData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImageItems# expanded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_image_menu_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mExpanded:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isSelectedTemplateItem(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
