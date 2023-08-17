.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPageRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EssentialItemData"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const-string v0, "STATE_ESSENTIAL_EXPANDED"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;->mPageRatio:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->loadStateData()V

    return-void
.end method


# virtual methods
.method public getItemsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initItems(Landroid/content/Context;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEssentialItems# expanded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_essential_menu_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v6, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mExpanded:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_essential_template_name:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->LONG:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;->mPageRatio:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->equal(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_essential_template_long_drawable_res:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_essential_template_drawable_res:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mExpanded:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->mItemDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/EssentialItemData;->TAG:Ljava/lang/String;

    const-string v2, "initEssentialItems# exception"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public isSelectedTemplateItem(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/TemplateIndexConverter;->convertTemplateNameToWPageIndex(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
