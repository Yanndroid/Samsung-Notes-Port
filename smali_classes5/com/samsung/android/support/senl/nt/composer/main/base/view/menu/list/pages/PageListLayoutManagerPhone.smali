.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListLayoutManagerPhone"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->mMode:I

    return-void
.end method

.method private getAdjustSpanCountWithMinGap(IIII)I
    .locals 1

    mul-int/2addr p2, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    if-lez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getSpanCountInSearchMode(I)I
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_search_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_side_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_min_gap_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    div-int v3, v0, v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getAdjustSpanCountWithMinGap(IIII)I

    move-result v0

    sub-int/2addr v3, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount(I)I
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getSpanCountInSearchMode(I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_side_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_min_gap_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v1

    sub-int/2addr v0, v4

    div-int v1, v0, v3

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getAdjustSpanCountWithMinGap(IIII)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpanCountOnPhone# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mLastConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getSpanCountInSearchMode(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getSpanCount(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->setSpanCount(I)V

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->mMode:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->mLastConfig:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManagerPhone;->getSpanCount(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->setSpanCount(I)V

    return-void
.end method
