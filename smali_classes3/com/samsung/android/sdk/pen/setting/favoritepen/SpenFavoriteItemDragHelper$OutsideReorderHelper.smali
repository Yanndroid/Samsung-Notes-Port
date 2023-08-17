.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;
.super Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutsideReorderHelper"
.end annotation


# instance fields
.field private final mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

.field private mReorderOutsideOffsetY:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getItemOffsetValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mReorderOutsideOffsetY:I

    return-void
.end method

.method private getOutsideReorderOffset(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getItemOffsetValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private notifyUpdatePosition(Landroid/view/View;Landroid/view/View;FF)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getToolType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getItemOffsetValue()I

    move-result v0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz v1, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    mul-int/lit8 p3, v0, 0x2

    :goto_1
    if-eqz v1, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    move v0, p4

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isLTR()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz v1, :cond_4

    move p3, v0

    goto :goto_2

    :cond_4
    mul-int/lit8 p3, v0, 0x2

    :goto_2
    if-eqz v1, :cond_5

    move v2, v0

    :cond_5
    move p4, p3

    move v0, v2

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    move v2, v0

    :cond_7
    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_3
    move p4, v2

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    move v2, p3

    :goto_5
    iget v1, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    neg-int p4, p4

    invoke-virtual {p0, v1, v4, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMinDisplacement(FII)F

    move-result p4

    iput p4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0, p4, v1, v0, v4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMaxDisplacement(FIII)F

    move-result p4

    iput p4, v3, Landroid/graphics/PointF;->x:F

    iget p4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int p3, p3

    invoke-virtual {p0, p4, v0, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMinDisplacement(FII)F

    move-result p3

    iput p3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0, p3, p4, v2, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMaxDisplacement(FIII)F

    move-result p2

    iput p2, v3, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    iget p4, v3, Landroid/graphics/PointF;->x:F

    float-to-int p4, p4

    add-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget p4, v3, Landroid/graphics/PointF;->y:F

    float-to-int p4, p4

    add-int/2addr p1, p4

    invoke-interface {p2, p3, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;->onUpdatePosition(II)V

    return-void
.end method


# virtual methods
.method public adjustCurrentPositionForDropTarget(II)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mReorderOutsideOffsetY:I

    sub-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;->onDropped()V

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public endDrag(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;->onDropToPosition(II)V

    return-void
.end method

.method public getDragFlags()I
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getDragFlags()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public setToolType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getToolType()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->setToolType(I)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->getOutsideReorderOffset(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mReorderOutsideOffsetY:I

    :cond_1
    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;->onUpdatePosition(II)V

    sget v0, Lcom/samsung/android/spen/R$id;->favorite_pen_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->getPenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->getPenColor()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->getPenSizeLevel()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mPenMiniViewDragListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->mReorderOutsideOffsetY:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;->onStartDrag(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;IZ)V

    return-void
.end method

.method public updateChildDraw(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/graphics/PointF;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->isDragStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;->notifyUpdatePosition(Landroid/view/View;Landroid/view/View;FF)V

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method
