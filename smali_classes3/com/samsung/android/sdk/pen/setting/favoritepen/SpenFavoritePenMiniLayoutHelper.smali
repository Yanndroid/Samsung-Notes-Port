.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.source "SourceFile"


# instance fields
.field private mDefaultRadius:I

.field private mEditModeLayoutMinHeight:I

.field private mEditModeLayoutMinWidth:I

.field private mEditRadius:[F

.field private mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

.field private mVerticalFirstItemTopMargin:I

.field private mViewModeLayoutMinHeight:I

.field private mViewRadius:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x4

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditRadius:[F

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewRadius:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_list_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewModeLayoutMinHeight:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_edit_content_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditModeLayoutMinHeight:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_edit_content_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditModeLayoutMinWidth:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_popup_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mDefaultRadius:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_first_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mVerticalFirstItemTopMargin:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->decideRadius()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mVerticalFirstItemTopMargin:I

    return p0
.end method

.method private applyRadius([F)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;->setRadius(FFFF)V

    return-void
.end method

.method private decideRadius()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewRadius:[F

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mDefaultRadius:I

    int-to-float v3, v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->setRadius([FFFFF)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewRadius:[F

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mDefaultRadius:I

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->setRadius([FFFFF)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditRadius:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->setRadius([FFFFF)V

    return-void
.end method

.method private setRadius([FFFFF)V
    .locals 1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    return-void
.end method

.method public getFavoriteParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper$1;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;)V

    return-object v0
.end method

.method public getLayoutOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setFavoriteView(Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->setRadius(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->decideRadius()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditRadius:[F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->applyRadius([F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewRadius:[F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->applyRadius([F)V

    :goto_0
    return-void
.end method

.method public updateFavoriteMinSize(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mViewModeLayoutMinHeight:I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditModeLayoutMinHeight:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mEditModeLayoutMinWidth:I

    :goto_0
    move v0, p2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public updateFavoriteMinSize(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->mFavoriteView:Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutHelper;->updateFavoriteMinSize(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)V

    return-void
.end method
